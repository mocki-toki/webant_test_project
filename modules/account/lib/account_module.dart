import 'package:account/infrastructure/services/account_repository_impl.dart';
import 'package:account/infrastructure/services/account_rest_client.dart';
import 'package:account/presentation/pages/login_page.dart';
import 'package:account/presentation/pages/register_page.dart';
import 'package:core/core.dart';
import 'package:shared_preferences/shared_preferences.dart';

extension AccountModule on ServiceCollection {
  Future<void> addAccountModule() async {
    addCoreModule();
    addInstance(await SharedPreferences.getInstance());

    addSingletonFactory((provider) => AccountRestClient(provider.getRequired()));
    addAccountRepositoryImpl();

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
