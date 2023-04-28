import 'package:core/core.dart';
import 'package:photo/infrastructure/models/photo_dto.dart';

part 'photos_response_dto.freezed.dart';
part 'photos_response_dto.g.dart';

@freezed
class PhotosResponseDto with _$PhotosResponseDto {
  const factory PhotosResponseDto({
    required int totalItems,
    required int itemsPerPage,
    required int countOfPages,
    required Iterable<PhotoDto> data,
  }) = _PhotosResponseDto;

  factory PhotosResponseDto.fromJson(Map<String, dynamic> json) =>
      _$PhotosResponseDtoFromJson(json);
}
