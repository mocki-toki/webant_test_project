import 'package:account/presentation/pages/login_page.dart';
import 'package:account/presentation/pages/register_page.dart';
import 'package:core/core.dart';

extension AccountModule on ServiceCollection {
  void addAccountModule() {
    addCoreModule();
    addRoutes((provider) {
      return [
        route(
          path: LoginPageRoute.path,
          routeFactory: LoginPageRoute.fromData,
          parentNavigatorKey: provider.getRequired<RouterProvider>().key,
          builder: (_, __, route) => LoginPage(route),
        ),
        route(
          path: RegisterPageRoute.path,
          routeFactory: RegisterPageRoute.fromData,
          parentNavigatorKey: provider.getRequired<RouterProvider>().key,
          builder: (_, __, route) => RegisterPage(route),
        ),
      ];
    });
  }
}
