import 'package:core/core.dart';
import 'package:core/domain/failure/network_failure.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:photo/domain/models/photo.dart';
import 'package:photo/domain/services/photo_repository.dart';
import 'package:photo/presentation/viewmodels/details_photo/details_photo_viewmodel.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:photo/presentation/viewmodels/details_photo/photo_state.dart';
import 'package:intl/intl.dart';

class DetailsPhotoPage extends StatelessWidget {
  const DetailsPhotoPage(this.route);

  final DetailsPhotoPageRoute route;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => DetailsPhotoViewModel(
        context.getRequired<PhotoRepository>(),
        id: route.id,
      ),
      child: Scaffold(
        appBar: AppBar(),
        body: _DetailsPhotoPageBody(),
      ),
    );
  }
}

class _DetailsPhotoPageBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DetailsPhotoViewModel, PhotoState>(
      builder: (context, state) {
        return state.maybeWhen(
          orElse: () => const _LoadingProgress(),
          loaded: (photo) => _Loaded(photo),
          failure: (failure) => _Failure(failure),
        );
      },
    );
  }
}

class _Loaded extends StatelessWidget {
  const _Loaded(this.photo);

  final Photo photo;

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        SizedBox.fromSize(
          size: Sizes.image,
          child: CachedNetworkImage(
            imageUrl: photo.imageUrl,
            fit: BoxFit.cover,
          ),
        ),
        Indent.box40(),
        Padding(
          padding: Paddings.horizontal16,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                photo.name,
                style: TextStyles.title.copyWith(color: Colors.title),
              ),
              Indent.box5(),
              Text(
                photo.user ?? 'Usename',
                style: TextStyles.main.copyWith(color: Colors.accent),
              ),
              Indent.box15(),
              Text(
                photo.description,
                style: TextStyles.min,
              ),
              Indent.box15(),
              Text(
                DateFormat.yMMMMd().format(photo.dateCreate),
                style: TextStyles.min.copyWith(color: Colors.subtitle),
              ),
            ],
          ),
        ),
      ],
    );
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

class DetailsPhotoPageRoute extends ActivityRoute {
  const DetailsPhotoPageRoute(this.id);

  final int id;

  static const path = '/photo/:id';

  static DetailsPhotoPageRoute fromData(RouteData data) {
    return DetailsPhotoPageRoute(
      int.parse(data.parameters['id']),
    );
  }

  @override
  RouteData get data => RouteData(path: path, parameters: {'id': id});
}
