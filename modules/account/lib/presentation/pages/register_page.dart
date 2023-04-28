import 'package:account/account.dart';
import 'package:core/core.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage(this.route);

  final RegisterPageRoute route;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => RegisterViewModel(
        context.getRequired<AccountRepository>(),
        context.getRequired<ScaffoldMessengerState>(),
        context.getRequired<GoRouter>(),
      ),
      child: Scaffold(
        appBar: AppBar(
          title: Text('Create account'),
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
    return BlocBuilder<RegisterViewModel, RegisterState>(
      builder: (context, state) {
        final viewmodel = context.read<RegisterViewModel>();
        return Column(
          children: [
            TextFormField(
              decoration: InputDecoration(hintText: 'Username*'),
              onChanged: viewmodel.usernameChanged,
            ),
            Indent.box10(),
            TextFormField(
              decoration: InputDecoration(hintText: 'Phone*'),
              onChanged: viewmodel.phoneChanged,
            ),
            Indent.box10(),
            TextFormField(
              decoration: InputDecoration(hintText: 'E-mail*'),
              onChanged: viewmodel.emailChanged,
            ),
            Indent.box10(),
            TextFormField(
              decoration: InputDecoration(hintText: 'Password*'),
              onChanged: viewmodel.passwordChanged,
            ),
            Indent.box10(),
            TextFormField(
              decoration: InputDecoration(hintText: 'Confirm password*'),
              onChanged: viewmodel.confirmPasswordChanged,
            ),
            Indent.box40(),
            ElevatedButton(
              child: Text('Create account'),
              onPressed: viewmodel.register,
            ),
          ],
        );
      },
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
