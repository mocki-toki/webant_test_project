import 'package:account/presentation/pages/login_page.dart';
import 'package:account/presentation/pages/register_page.dart';
import 'package:core/core.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage(this.route);

  final WelcomePageRoute route;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Padding(
              padding: Paddings.horizontal16,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: Paddings.logoPadding,
                    child: Image.asset(ImageAssets.logo),
                  ),
                  Text(
                    'Welcome!',
                    style: TextStyles.title,
                  ),
                  Indent.box60(),
                  ElevatedButton(
                    child: Text('Create an account'),
                    onPressed: () => context.open(RegisterPageRoute()),
                  ),
                  Indent.box10(),
                  OutlinedButton(
                    child: Text('I already have an account'),
                    onPressed: () => context.open(LoginPageRoute()),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class WelcomePageRoute extends ActivityRoute {
  const WelcomePageRoute();

  static const path = '/'; // TODO: сделать /welcome

  static WelcomePageRoute fromData(RouteData _) => WelcomePageRoute();

  @override
  RouteData get data => RouteData(path: path);
}
