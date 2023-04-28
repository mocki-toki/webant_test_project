import 'package:core/core.dart';
import 'package:core/domain/failure/network_failure.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:photo/domain/models/photo.dart';
import 'package:photo/domain/services/photo_repository.dart';
import 'package:photo/presentation/viewmodels/feed/feed_state.dart';
import 'package:photo/presentation/viewmodels/feed/feed_viewmodel.dart';
import 'package:photo/presentation/widgets/preview_photo_widget.dart';

const _pageSize = 10;
const _triggerLoad = 200;

class FeedPage extends StatelessWidget {
  const FeedPage(this.route);

  final FeedPageRoute route;

  static const _tabs = [
    Tab(text: 'New'),
    Tab(text: 'Popular'),
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: _tabs.length,
      child: Scaffold(
        appBar: AppBar(
          shape: Border(),
          title: Text('Feed'),
          bottom: TabBar(
            padding: Paddings.horizontal16,
            tabs: _tabs,
          ),
        ),
        body: TabBarView(
          children: [
            _PhotosGallery(PhotoFilter.newPhotos),
            _PhotosGallery(PhotoFilter.popularPhotos),
          ],
        ),
      ),
    );
  }
}

class _PhotosGallery extends StatefulWidget {
  const _PhotosGallery(this.filter);

  final PhotoFilter filter;

  @override
  State<_PhotosGallery> createState() => _PhotosGalleryState();
}

class _PhotosGalleryState extends State<_PhotosGallery> with AutomaticKeepAliveClientMixin {
  @override
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return BlocProvider<FeedViewModel>(
      create: (_) => FeedViewModel(
        context.getRequired(),
        context.getRequired(),
        filter: widget.filter,
        limit: _pageSize,
      ),
      child: Builder(
        builder: (context) {
          return BlocBuilder<FeedViewModel, FeedState>(
            builder: (context, state) {
              return RefreshIndicator(
                onRefresh: context.read<FeedViewModel>().reload,
                child: state.maybeWhen(
                  orElse: () => _LoadingProgress(),
                  failure: (failure) => _Failure(failure),
                  loaded: (photos, _, isLastPage) => _GridWithPreloader(
                    photos,
                    isLastPage,
                    context.read<FeedViewModel>().loadMore,
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}

class _GridWithPreloader extends StatelessWidget {
  const _GridWithPreloader(
    this.photos,
    this.isLastPage,
    this.onLoad,
  );

  final List<Photo> photos;
  final bool isLastPage;
  final Future<void> Function() onLoad;

  @override
  Widget build(BuildContext context) {
    return NotificationListener(
      onNotification: _onNotification,
      child: CustomScrollView(
        slivers: [
          SliverGrid.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 1.5,
            ),
            itemBuilder: (_, index) {
              return PreviewPhotoWidget(photos[index]);
            },
            itemCount: photos.length,
          ),
          if (!isLastPage) const SliverToBoxAdapter(child: _LoadingProgress()),
        ],
      ),
    );
  }

  bool _onNotification(notification) {
    if (notification is ScrollUpdateNotification) {
      final metrics = notification.metrics;
      final maxScrollExtent = metrics.maxScrollExtent;
      final pixels = metrics.pixels;
      if (maxScrollExtent - pixels <= _triggerLoad) {
        onLoad();
      }
    }
    return false;
  }
}

class _LoadingProgress extends StatelessWidget {
  const _LoadingProgress();

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Padding(
        padding: Paddings.symmetric16x30,
        child: CircularProgressIndicator(color: Colors.accent),
      ),
    );
  }
}

class _Failure extends StatelessWidget {
  const _Failure(this.failure);

  final Failure failure;

  @override
  Widget build(BuildContext context) {
    switch (failure.runtimeType) {
      case NetworkFailure:
        return const _NetworkFailure();
      default:
        return _UnknownFailure(this.failure);
    }
  }
}

class _NetworkFailure extends StatelessWidget {
  const _NetworkFailure();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: const [
          Text('Network error'),
          SizedBox(height: 8),
          Text('Check your internet connection'),
        ],
      ),
    );
  }
}

class _UnknownFailure extends StatelessWidget {
  const _UnknownFailure(this.failure);

  final Failure failure;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Unknown error: $failure'),
    );
  }
}

class FeedPageRoute extends ActivityRoute {
  const FeedPageRoute();

  static const path = '/';

  static FeedPageRoute fromData(RouteData _) => FeedPageRoute();

  @override
  RouteData get data => RouteData(path: path);
}
