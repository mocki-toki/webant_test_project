import 'dart:io';

import 'package:core/core.dart';
import 'package:photo/infrastructure/models/media_dto.dart';
import 'package:photo/infrastructure/models/photo_dto.dart';
import 'package:photo/infrastructure/models/photo_input_dto.dart';
import 'package:photo/infrastructure/models/photos_response_dto.dart';
import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart';

part 'photo_rest_client.g.dart';

@RestApi(baseUrl: InfrastructureConstants.apiUrl)
abstract class PhotoRestClient {
  factory PhotoRestClient(Dio dio) = _PhotoRestClient;

  @GET('/api/photos')
  Future<PhotosResponseDto> getPhotos({
    @Query('new') required bool newPhotos,
    @Query('popular') required bool popularPhotos,
    @Query('page') required int page,
    @Query('limit') required int limit,
    @Queries() required Map<String, dynamic> queries,
  });

  @GET('/api/photos/{id}')
  Future<PhotoDto> getPhoto(@Path('id') int id);

  @POST('/api/photos')
  Future<PhotoDto> createPhoto(@Body() PhotoInputDto photo);

  @MultiPart()
  @POST('/api/media_objects')
  Future<MediaDto> uploadPhoto(
    @Part(name: 'file') File file,
  );
}
