import 'dart:io';

import 'package:core/core.dart';
import 'package:photo/domain/models/photo.dart';
import 'package:photo/domain/services/photo_repository.dart';
import 'package:photo/infrastructure/models/media_dto.dart';
import 'package:photo/infrastructure/models/photo_dto.dart';
import 'package:photo/infrastructure/models/photo_input_dto.dart';
import 'package:photo/infrastructure/services/photo_rest_client.dart';
import 'package:image/image.dart' as img;

part 'photo_repository_impl.g.dart';

@Service(ServiceLifetime.singleton)
class PhotoRepositoryImpl implements PhotoRepository {
  PhotoRepositoryImpl(this._photoRestClient);

  final PhotoRestClient _photoRestClient;

  @override
  Future<Either<Failure, Iterable<Photo>>> getPhotos({
    required PhotoFilter filter,
    required int page,
    required int limit,
    int? byUserId,
  }) {
    return _photoRestClient.getPhotos(
      newPhotos: filter == PhotoFilter.newPhotos,
      popularPhotos: filter == PhotoFilter.popularPhotos,
      page: page,
      limit: limit,
      queries: {
        if (byUserId != null) 'user.id': byUserId,
      },
    ).fromDataToEither((e) => e.data.map((e) => e.toDomain()));
  }

  @override
  Future<Either<Failure, Photo>> getPhoto(int id) {
    return _photoRestClient.getPhoto(id).fromDataToEither((e) => e.toDomain());
  }

  @override
  Future<Either<Failure, Photo>> uploadPhoto({
    required File file,
    required String name,
    required String description,
    required bool isNew,
    required bool isPopular,
  }) async {
    final image = await img.decodeImageFile(file.path);

    final optimizedImage = img.encodeJpg(
      image!,
      quality: 30,
    );

    await file.writeAsBytes(optimizedImage);

    final response = await _photoRestClient.uploadPhoto(file).fromDataToEither<MediaDto>();

    return await response.fold(
      (l) => Left(l),
      (r) async {
        return await _photoRestClient
            .createPhoto(
              PhotoInputDto(
                name: name,
                dateCreate: DateTime.now().toIso8601String(),
                description: description,
                isNew: isNew,
                popular: isPopular,
                image: '/api/media_objects/${r.id}',
              ),
            )
            .fromDataToEither((e) => e.toDomain());
      },
    );
  }
}
