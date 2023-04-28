import 'package:account/account.dart';
import 'package:core/core.dart';
import 'package:home/presentation/widgets/tabs_navigator.dart';

class HomePage extends StatelessWidget {
  const HomePage({required this.body});

  final Widget body;

  @override
  Widget build(BuildContext context) {
    final isAuthorized = true;

    if (!isAuthorized) return WelcomePageBody();

    return TabsNavigator(body: body);
  }
}
