import 'package:account/account.dart';
import 'package:core/core.dart';
import 'package:photo/photo.dart';
import 'package:profile/profile.dart';
import 'package:home/presentation/pages/home_page.dart';

extension HomeModule on ServiceCollection {
  Future<void> addHomeModule() async {
    addCoreModule();
    await addAccountModule();
    addPhotoModule();
    addProfileModule();

    addRoutes((provider) {
      return [
        ShellRoute(
          builder: (context, state, child) => HomePage(body: child),
          routes: [
            route(
              path: FeedPageRoute.path,
              routeFactory: FeedPageRoute.fromData,
              pageBuilder: (_, __, route) => DisableRouteAnimation(FeedPage(route)),
            ),
            route(
              path: CurrentProfilePageRoute.path,
              routeFactory: CurrentProfilePageRoute.fromData,
              pageBuilder: (_, __, route) => DisableRouteAnimation(CurrentProfilePage(route)),
            ),
          ],
        ),
      ];
    });
  }
}
