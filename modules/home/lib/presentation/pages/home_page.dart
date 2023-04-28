import 'package:account/account.dart';
import 'package:core/core.dart';
import 'package:home/presentation/widgets/tabs_navigator.dart';

class HomePage extends StatelessWidget {
  const HomePage({required this.body});

  final Widget body;

  @override
  Widget build(BuildContext context) {
    final isAuthorized = context.getRequired<AccountRepository>().isAuthenticated;
    if (!isAuthorized) return WelcomePage();

    return TabsNavigator(body: body);
  }
}
