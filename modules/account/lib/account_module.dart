import 'package:account/presentation/pages/login_page.dart';
import 'package:account/presentation/pages/register_page.dart';
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
        route(
          path: LoginPageRoute.path,
          routeFactory: LoginPageRoute.fromData,
          builder: (_, __, route) => LoginPage(route),
        ),
        route(
          path: RegisterPageRoute.path,
          routeFactory: RegisterPageRoute.fromData,
          builder: (_, __, route) => RegisterPage(route),
        ),
      ];
    });
  }
}
