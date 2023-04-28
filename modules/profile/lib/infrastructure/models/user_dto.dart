import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:profile/domain/models/user.dart';

part 'user_dto.freezed.dart';
part 'user_dto.g.dart';

@freezed
class UserDto with _$UserDto {
  const factory UserDto({
    required int id,
    required String email,
    required bool enabled,
    required String? phone,
    required String fullName,
    required String username,
    required String birthday,
    required List<String> roles,
  }) = _UserDto;

  factory UserDto.fromJson(Map<String, dynamic> json) => _$UserDtoFromJson(json);
}

extension UserDtoToDomain on UserDto {
  User toDomain() {
    return User(
      id: id,
      email: email,
      enabled: enabled,
      phone: phone,
      fullName: fullName,
      username: username,
      birthday: DateTime.parse(birthday),
      roles: roles,
    );
  }
}
