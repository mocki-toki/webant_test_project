// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_input_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserInputDto _$$_UserInputDtoFromJson(Map<String, dynamic> json) =>
    _$_UserInputDto(
      username: json['username'] as String,
      email: json['email'] as String,
      phone: json['phone'] as String?,
      fullName: json['fullName'] as String,
      password: json['password'] as String,
      birthday: json['birthday'] as String,
      roles: (json['roles'] as List<dynamic>).map((e) => e as String),
    );

Map<String, dynamic> _$$_UserInputDtoToJson(_$_UserInputDto instance) =>
    <String, dynamic>{
      'username': instance.username,
      'email': instance.email,
      'phone': instance.phone,
      'fullName': instance.fullName,
      'password': instance.password,
      'birthday': instance.birthday,
      'roles': instance.roles.toList(),
    };
