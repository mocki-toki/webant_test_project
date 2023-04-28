// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'photo_repository_impl.dart';

// **************************************************************************
// Dino Generator
// **************************************************************************

extension PhotoRepositoryImplFactory on ServiceCollection {
  void addPhotoRepositoryImpl([
    ServiceLifetime lifetime = ServiceLifetime.singleton,
    bool registerAliases = true,
  ]) {
    addFactory<PhotoRepositoryImpl>(
      lifetime,
      (provider) => PhotoRepositoryImpl(
        provider.getRequired<PhotoRestClient>(),
      ),
      true,
    );

    if (registerAliases) {
      addAlias<PhotoRepository, PhotoRepositoryImpl>(true);
    }
  }
}
