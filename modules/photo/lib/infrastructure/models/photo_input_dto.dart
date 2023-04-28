import 'package:freezed_annotation/freezed_annotation.dart';

part 'photo_input_dto.freezed.dart';
part 'photo_input_dto.g.dart';

@freezed
class PhotoInputDto with _$PhotoInputDto {
  const factory PhotoInputDto({
    required String name,
    required String dateCreate,
    required String description,
    @JsonKey(name: 'new') required bool isNew,
    required bool popular,
    required String image,
  }) = _PhotoInputDto;

  factory PhotoInputDto.fromJson(Map<String, dynamic> json) => _$PhotoInputDtoFromJson(json);
}
