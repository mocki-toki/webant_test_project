import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:photo/infrastructure/models/media_dto.dart';

part 'photo_input_dto.freezed.dart';
part 'photo_input_dto.g.dart';

@freezed
class PhotoInputDto with _$PhotoInputDto {
  const factory PhotoInputDto({
    required String name,
    required String description,
    @JsonKey(name: 'new') required bool isNew,
    @JsonKey(name: 'popular') required bool isPopular,
    required MediaDto image,
  }) = _PhotoInputDto;

  factory PhotoInputDto.fromJson(Map<String, dynamic> json) => _$PhotoInputDtoFromJson(json);
}
