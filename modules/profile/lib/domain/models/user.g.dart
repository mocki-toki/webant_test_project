// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_User _$$_UserFromJson(Map<String, dynamic> json) => _$_User(
      id: json['id'] as int,
      email: json['email'] as String,
      enabled: json['enabled'] as bool,
      phone: json['phone'] as String?,
      fullName: json['fullName'] as String,
      username: json['username'] as String,
      birthday: DateTime.parse(json['birthday'] as String),
      roles: (json['roles'] as List<dynamic>).map((e) => e as String).toList(),
    );

Map<String, dynamic> _$$_UserToJson(_$_User instance) => <String, dynamic>{
      'id': instance.id,
      'email': instance.email,
      'enabled': instance.enabled,
      'phone': instance.phone,
      'fullName': instance.fullName,
      'username': instance.username,
      'birthday': instance.birthday.toIso8601String(),
      'roles': instance.roles,
    };
