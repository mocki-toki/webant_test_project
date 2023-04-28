import 'package:account/account.dart';
import 'package:core/core.dart';
import 'package:photo/photo.dart';
import 'package:home/presentation/pages/home_page.dart';

extension HomeModule on ServiceCollection {
  void addHomeModule() {
    addCoreModule();
    addAccountModule();
    addPhotoModule();
    addRoutes((provider) {
      return [
        ShellRoute(
          builder: (context, state, child) => HomePage(body: child),
          routes: [
            route(
              path: FeedPageRoute.path,
              routeFactory: FeedPageRoute.fromData,
              builder: (_, __, route) => FeedPage(route),
            ),
            route(
              path: AddPhotoPageRoute.path,
              routeFactory: AddPhotoPageRoute.fromData,
              builder: (_, __, route) => AddPhotoPage(route),
            ),
          ],
        ),
      ];
    });
  }
}
