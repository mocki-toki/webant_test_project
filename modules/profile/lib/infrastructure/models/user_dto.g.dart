// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserDto _$$_UserDtoFromJson(Map<String, dynamic> json) => _$_UserDto(
      id: json['id'] as int,
      email: json['email'] as String,
      enabled: json['enabled'] as bool,
      phone: json['phone'] as String?,
      fullName: json['fullName'] as String,
      username: json['username'] as String,
      birthday: json['birthday'] as String,
      roles: (json['roles'] as List<dynamic>).map((e) => e as String).toList(),
    );

Map<String, dynamic> _$$_UserDtoToJson(_$_UserDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'email': instance.email,
      'enabled': instance.enabled,
      'phone': instance.phone,
      'fullName': instance.fullName,
      'username': instance.username,
      'birthday': instance.birthday,
      'roles': instance.roles,
    };
