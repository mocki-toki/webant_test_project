// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'photo_input_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PhotoInputDto _$$_PhotoInputDtoFromJson(Map<String, dynamic> json) =>
    _$_PhotoInputDto(
      name: json['name'] as String,
      description: json['description'] as String,
      isNew: json['new'] as bool,
      isPopular: json['popular'] as bool,
      image: MediaDto.fromJson(json['image'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_PhotoInputDtoToJson(_$_PhotoInputDto instance) =>
    <String, dynamic>{
      'name': instance.name,
      'description': instance.description,
      'new': instance.isNew,
      'popular': instance.isPopular,
      'image': instance.image,
    };
