import 'package:core/core.dart';
import 'package:photo/photo.dart';
import 'package:photo/presentation/viewmodels/feed/feed_state.dart';
import 'package:photo/presentation/viewmodels/feed/feed_viewmodel.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:photo/presentation/widgets/preview_photo_widget.dart';

const _pageSize = 10;
const _triggerLoad = 200;

class PhotosGallery extends StatefulWidget {
  const PhotosGallery(
    this.filter, {
    this.byUserId,
  });

  final PhotoFilter filter;
  final int? byUserId;

  @override
  State<PhotosGallery> createState() => PhotosGalleryState();
}

class PhotosGalleryState extends State<PhotosGallery> with AutomaticKeepAliveClientMixin {
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
        byUserId: widget.byUserId,
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
                    photos.toList(),
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
        children: [
          Padding(
            padding: Paddings.logoPadding,
            child: Image.asset(ImageAssets.networkError),
          ),
          Text(
            'Oh shucks!',
            style: TextStyles.title.copyWith(color: Colors.title),
          ),
          Indent.box10(),
          Text(
            'Slow or no internet connection.\nPlease check your internet settings',
            textAlign: TextAlign.center,
            style: TextStyles.min.copyWith(color: Colors.subtitle),
          ),
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
