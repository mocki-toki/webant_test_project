import 'dart:io';

import 'package:core/core.dart';
import 'package:photo/domain/models/photo.dart';

abstract class PhotoRepository {
  Future<Either<Failure, Iterable<Photo>>> getPhotos({
    required PhotoFilter filter,
    required int page,
    required int limit,
    int? byUserId,
  });

  Future<Either<Failure, Photo>> getPhoto(int id);

  Future<Either<Failure, Photo>> uploadPhoto({
    required File file,
    required String name,
    required String description,
    required bool isNew,
    required bool isPopular,
  });
}

enum PhotoFilter { newPhotos, popularPhotos }
