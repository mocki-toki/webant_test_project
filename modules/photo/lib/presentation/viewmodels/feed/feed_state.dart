import 'package:core/core.dart';
import 'package:photo/domain/models/photo.dart';

part 'feed_state.freezed.dart';

@freezed
class FeedState with _$FeedState {
  const factory FeedState.initial() = _Initial;
  const factory FeedState.loading() = _Loading;
  const factory FeedState.loaded({
    required List<Photo> photos,
    required int page,
    required bool isLastPage,
  }) = _Loaded;
  const factory FeedState.failure(Failure failure) = _Failure;
}
