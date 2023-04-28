// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'photo_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PhotoDto _$$_PhotoDtoFromJson(Map<String, dynamic> json) => _$_PhotoDto(
      id: json['id'] as int,
      name: json['name'] as String,
      dateCreate: json['dateCreate'] as String,
      description: json['description'] as String,
      isNew: json['new'] as bool,
      popular: json['popular'] as bool,
      image: MediaDto.fromJson(json['image'] as Map<String, dynamic>),
      user: json['user'] as String?,
    );

Map<String, dynamic> _$$_PhotoDtoToJson(_$_PhotoDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'dateCreate': instance.dateCreate,
      'description': instance.description,
      'new': instance.isNew,
      'popular': instance.popular,
      'image': instance.image,
      'user': instance.user,
    };
