// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'photo.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Photo _$$_PhotoFromJson(Map<String, dynamic> json) => _$_Photo(
      id: json['id'] as int,
      name: json['name'] as String,
      dateCreate: DateTime.parse(json['dateCreate'] as String),
      description: json['description'] as String,
      isNew: json['isNew'] as bool,
      isPopular: json['isPopular'] as bool,
      imageUrl: json['imageUrl'] as String,
      user: json['user'] as String?,
    );

Map<String, dynamic> _$$_PhotoToJson(_$_Photo instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'dateCreate': instance.dateCreate.toIso8601String(),
      'description': instance.description,
      'isNew': instance.isNew,
      'isPopular': instance.isPopular,
      'imageUrl': instance.imageUrl,
      'user': instance.user,
    };
