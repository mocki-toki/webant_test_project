// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'photo_input_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PhotoInputDto _$$_PhotoInputDtoFromJson(Map<String, dynamic> json) =>
    _$_PhotoInputDto(
      name: json['name'] as String,
      dateCreate: json['dateCreate'] as String,
      description: json['description'] as String,
      isNew: json['new'] as bool,
      popular: json['popular'] as bool,
      image: json['image'] as String,
    );

Map<String, dynamic> _$$_PhotoInputDtoToJson(_$_PhotoInputDto instance) =>
    <String, dynamic>{
      'name': instance.name,
      'dateCreate': instance.dateCreate,
      'description': instance.description,
      'new': instance.isNew,
      'popular': instance.popular,
      'image': instance.image,
    };
