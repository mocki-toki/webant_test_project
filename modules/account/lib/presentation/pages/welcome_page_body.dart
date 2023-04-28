import 'package:account/presentation/pages/login_page.dart';
import 'package:account/presentation/pages/register_page.dart';
import 'package:core/core.dart';

class WelcomePageBody extends StatelessWidget {
  const WelcomePageBody();

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
