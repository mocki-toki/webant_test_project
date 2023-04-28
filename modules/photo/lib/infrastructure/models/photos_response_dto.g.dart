// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'photos_response_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PhotosResponseDto _$$_PhotosResponseDtoFromJson(Map<String, dynamic> json) =>
    _$_PhotosResponseDto(
      totalItems: json['totalItems'] as int,
      itemsPerPage: json['itemsPerPage'] as int,
      countOfPages: json['countOfPages'] as int,
      data: (json['data'] as List<dynamic>)
          .map((e) => PhotoDto.fromJson(e as Map<String, dynamic>)),
    );

Map<String, dynamic> _$$_PhotosResponseDtoToJson(
        _$_PhotosResponseDto instance) =>
    <String, dynamic>{
      'totalItems': instance.totalItems,
      'itemsPerPage': instance.itemsPerPage,
      'countOfPages': instance.countOfPages,
      'data': instance.data.toList(),
    };
