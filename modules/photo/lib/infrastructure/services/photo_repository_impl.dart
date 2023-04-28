import 'dart:io';

import 'package:core/core.dart';
import 'package:core/domain/failure/backend_failure.dart';
import 'package:photo/domain/models/photo.dart';
import 'package:photo/domain/services/photo_repository.dart';
import 'package:photo/infrastructure/models/photo_dto.dart';
import 'package:photo/infrastructure/services/photo_rest_client.dart';

part 'photo_repository_impl.g.dart';

@Service(ServiceLifetime.singleton)
class PhotoRepositoryImpl implements PhotoRepository {
  PhotoRepositoryImpl(this._photoRestClient);

  final PhotoRestClient _photoRestClient;

  @override
  Future<Either<Failure, List<Photo>>> getPhotos({
    required PhotoFilter filter,
    required int page,
    required int limit,
    int? byUserId,
  }) async {
    try {
      final response = await _photoRestClient.getPhotos(
        newPhotos: filter == PhotoFilter.newPhotos,
        popularPhotos: filter == PhotoFilter.popularPhotos,
        page: page,
        limit: limit,
        queries: {
          if (byUserId != null) 'user.id': byUserId,
        },
      );
      return Right(response.data.map((e) => e.toDomain()).toList());
    } catch (e) {
      return Left(BackendFailure(message: 'Error'));
    }
  }

  @override
  Future<Either<Failure, Photo>> getPhoto(int id) async {
    try {
      final response = await _photoRestClient.getPhoto(id);
      return Right(response.toDomain());
    } catch (e) {
      return Left(BackendFailure(message: 'Error'));
    }
  }

  @override
  Future<Either<Failure, Photo>> uploadPhoto({
    required String name,
    required String description,
    required bool isNew,
    required bool isPopular,
    required File file,
  }) async {
    return Left(BackendFailure(message: 'Error'));
    try {} catch (e) {
      return Left(BackendFailure(message: 'Error'));
    }
  }
}
