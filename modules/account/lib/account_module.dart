import 'package:account/presentation/pages/welcome_page.dart';
import 'package:core/core.dart';

extension AccountModule on ServiceCollection {
  void addAccountModule() {
    addCoreModule();
    addRoutes((provider) {
      return [
        route(
          path: WelcomePageRoute.path,
          routeFactory: WelcomePageRoute.fromData,
          builder: (_, __, route) => WelcomePage(route),
        ),
      ];
    });
  }
}
