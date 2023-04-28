import 'package:core/core.dart';

part 'media_dto.freezed.dart';
part 'media_dto.g.dart';

@freezed
class MediaDto with _$MediaDto {
  const factory MediaDto({
    required int id,
    required String name,
  }) = _MediaDto;

  factory MediaDto.fromJson(Map<String, dynamic> json) => _$MediaDtoFromJson(json);
}

extension MediaDtoToDomain on MediaDto {
  String toDomain() {
    return '${InfrastructureConstants.storageUrl}/$name';
  }
}
