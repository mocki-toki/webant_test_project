import 'package:core/core.dart';
import 'package:photo/domain/models/photo.dart';

part 'photo_state.freezed.dart';

@freezed
class PhotoState with _$PhotoState {
  const factory PhotoState.initial() = _Initial;
  const factory PhotoState.loading() = _Loading;
  const factory PhotoState.loaded(Photo photo) = _Loaded;
  const factory PhotoState.failure(Failure failure) = _Failure;
}
