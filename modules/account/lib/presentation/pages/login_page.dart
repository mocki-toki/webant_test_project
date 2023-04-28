import 'package:account/account.dart';
import 'package:account/presentation/pages/register_page.dart';
import 'package:core/core.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginPage extends StatelessWidget {
  const LoginPage(this.route);

  final LoginPageRoute route;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => LoginViewModel(
        context.getRequired<AccountRepository>(),
        context.getRequired<ScaffoldMessengerState>(),
        context.getRequired<GoRouter>(),
      ),
      child: Scaffold(
        appBar: AppBar(
          title: Text('Log in'),
        ),
        body: SafeArea(
          child: Padding(
            padding: Paddings.symmetric16x30,
            child: _Body(),
          ),
        ),
      ),
    );
  }
}

class _Body extends StatelessWidget {
  const _Body();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginViewModel, LoginState>(
      builder: (context, state) {
        final viewmodel = context.read<LoginViewModel>();
        return Column(
          children: [
            TextFormField(
              decoration: InputDecoration(hintText: 'Username'),
              onChanged: viewmodel.usernameChanged,
            ),
            Indent.box10(),
            TextFormField(
              decoration: InputDecoration(hintText: 'Password'),
              onChanged: viewmodel.passwordChanged,
            ),
            Indent.box40(),
            ElevatedButton(
              child: Text('Log In'),
              onPressed: viewmodel.login,
            ),
            Indent.box10(),
            TextButton(
              child: Text('Create account'),
              onPressed: () => context.open(RegisterPageRoute()),
            ),
          ],
        );
      },
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
