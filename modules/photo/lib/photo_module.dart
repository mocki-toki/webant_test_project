import 'package:core/core.dart';
import 'package:photo/infrastructure/services/photo_repository_impl.dart';
import 'package:photo/infrastructure/services/photo_rest_client.dart';
import 'package:photo/photo.dart';
import 'package:photo/presentation/pages/details_photo_page.dart';

extension PhotoModule on ServiceCollection {
  void addPhotoModule() {
    addCoreModule();
    addSingletonFactory((provider) => PhotoRestClient(provider.getRequired()));
    addPhotoRepositoryImpl();
    addRoutes(
      (provider) {
        return [
          route(
            path: DetailsPhotoPageRoute.path,
            builder: (_, __, route) => DetailsPhotoPage(route),
            routeFactory: DetailsPhotoPageRoute.fromData,
          ),
          route(
            parentNavigatorKey: provider.getRequired<RouterProvider>().key,
            path: AddPhotoPageRoute.path,
            routeFactory: AddPhotoPageRoute.fromData,
            builder: (_, __, route) => AddPhotoPage(route),
          ),
        ];
      },
    );
  }
}
