import 'package:freezed_annotation/freezed_annotation.dart';

part 'media_input_dto.freezed.dart';
part 'media_input_dto.g.dart';

@freezed
class MediaInputDto with _$MediaInputDto {
  const factory MediaInputDto({
    required String name,
    required String file,
  }) = _MediaInputDto;

  factory MediaInputDto.fromJson(Map<String, dynamic> json) => _$MediaInputDtoFromJson(json);
}
