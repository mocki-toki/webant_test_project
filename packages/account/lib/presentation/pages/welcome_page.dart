import 'package:core/core.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage(this.route);

  final WelcomePageRoute route;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text('welcome page')),
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
