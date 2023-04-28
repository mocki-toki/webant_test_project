import 'package:core/core.dart';
import 'package:photo/domain/models/photo.dart';
import 'package:photo/domain/services/photo_repository.dart';
import 'package:photo/presentation/viewmodels/feed/feed_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FeedViewModel extends Cubit<FeedState> {
  FeedViewModel(
    this._photoRepository,
    this._scaffoldMessenger, {
    required this.filter,
    required this.limit,
  }) : super(FeedState.initial()) {
    loadMore();
  }

  final PhotoFilter filter;
  final int limit;
  final PhotoRepository _photoRepository;
  final ScaffoldMessengerState _scaffoldMessenger;

  Future<void> reload() {
    emit(FeedState.initial());
    return loadMore();
  }

  Future<void> loadMore() async {
    final isLastPage = state.maybeWhen(
      loaded: (photos, page, isLastPage) => isLastPage,
      orElse: () => false,
    );

    if (isLastPage) return;

    final oldPage = state.maybeWhen(
      loaded: (photos, page, isLastPage) => page,
      orElse: () => 0,
    );

    final oldPhotos = state.maybeWhen(
      loaded: (photos, page, isLastPage) => photos,
      orElse: () => <Photo>[],
    );

    final result = await _photoRepository.getPhotos(
      filter: filter,
      page: oldPage + 1,
      limit: limit,
    );

    return result.fold(
      (failure) {
        state.maybeMap(
          loaded: (_) => _scaffoldMessenger.showSnackBar(
            SnackBar(
              content: Text('Failure: $failure'),
              behavior: SnackBarBehavior.floating,
            ),
          ),
          orElse: () => emit(FeedState.failure(failure)),
        );
      },
      (photos) => emit(
        FeedState.loaded(
          photos: [...oldPhotos, ...photos],
          page: oldPage + 1,
          isLastPage: photos.isEmpty,
        ),
      ),
    );
  }
}
