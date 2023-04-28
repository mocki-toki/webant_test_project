import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:photo/domain/models/photo.dart';
import 'package:photo/infrastructure/models/media_dto.dart';

part 'photo_dto.freezed.dart';
part 'photo_dto.g.dart';

@freezed
class PhotoDto with _$PhotoDto {
  const factory PhotoDto({
    required int id,
    required String name,
    required String dateCreate,
    required String description,
    @JsonKey(name: 'new') required bool isNew,
    required bool popular,
    required MediaDto image,
    required String? user,
  }) = _PhotoDto;

  factory PhotoDto.fromJson(Map<String, dynamic> json) => _$PhotoDtoFromJson(json);
}

extension PhotoDtoToDomain on PhotoDto {
  Photo toDomain() {
    return Photo(
      id: id,
      name: name,
      description: description,
      isNew: isNew,
      isPopular: popular,
      dateCreate: DateTime.parse(dateCreate).toLocal(),
      imageUrl: image.toDomain(),
      user: user,
    );
  }
}
