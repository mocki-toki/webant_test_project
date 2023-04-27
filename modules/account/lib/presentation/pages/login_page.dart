import 'package:account/presentation/pages/register_page.dart';
import 'package:core/core.dart';

class LoginPage extends StatelessWidget {
  const LoginPage(this.route);

  final LoginPageRoute route;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Log in'),
      ),
      body: SafeArea(
        child: Padding(
          padding: Paddings.symmetric16x30,
          child: Column(
            children: [
              TextFormField(
                decoration: InputDecoration(hintText: 'E-mail'),
              ),
              Indent.box10(),
              TextFormField(
                decoration: InputDecoration(hintText: 'Password'),
              ),
              Indent.box40(),
              ElevatedButton(
                child: Text('Log In'),
                onPressed: () {},
              ),
              Indent.box10(),
              TextButton(
                child: Text('Create account'),
                onPressed: () => context.open(RegisterPageRoute()),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class LoginPageRoute extends ActivityRoute {
  const LoginPageRoute();

  static const path = '/login';

  static LoginPageRoute fromData(RouteData _) => LoginPageRoute();

  @override
  RouteData get data => RouteData(path: path);
}
