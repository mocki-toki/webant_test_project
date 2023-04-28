import 'package:core/core.dart';
import 'package:photo/photo.dart';
import 'package:profile/infrastructure/services/profile_repository_impl.dart';
import 'package:profile/infrastructure/services/profile_rest_client.dart';

extension ProfileModule on ServiceCollection {
  void addProfileModule() {
    addCoreModule();
    addPhotoModule();

    addSingletonFactory((provider) => ProfileRestClient(provider.getRequired()));
    addProfileRepositoryImpl();
  }
}
