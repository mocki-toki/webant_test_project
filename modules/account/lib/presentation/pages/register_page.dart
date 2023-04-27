import 'package:core/core.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage(this.route);

  final RegisterPageRoute route;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Create account'),
      ),
      body: SafeArea(
        child: Padding(
          padding: Paddings.symmetric16x30,
          child: Column(
            children: [
              TextFormField(
                decoration: InputDecoration(hintText: 'Username*'),
              ),
              Indent.box10(),
              TextFormField(
                decoration: InputDecoration(hintText: 'Birthday'),
              ),
              Indent.box10(),
              TextFormField(
                decoration: InputDecoration(hintText: 'E-mail*'),
              ),
              Indent.box10(),
              TextFormField(
                decoration: InputDecoration(hintText: 'Password*'),
              ),
              Indent.box10(),
              TextFormField(
                decoration: InputDecoration(hintText: 'Confirm password*'),
              ),
              Indent.box40(),
              ElevatedButton(
                child: Text('Create account'),
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class RegisterPageRoute extends ActivityRoute {
  const RegisterPageRoute();

  static const path = '/register';

  static RegisterPageRoute fromData(RouteData _) => RegisterPageRoute();

  @override
  RouteData get data => RouteData(path: path);
}
