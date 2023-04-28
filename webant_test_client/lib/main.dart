import 'package:core/core.dart';
import 'package:home/home.dart';
import 'package:webant_test_client/application_widget.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  final services = ServiceCollection();

  services.addPansyArchFlutterModule();
  services.addPansyArchGoRouterModule();

  services.addHomeModule();

  final rootScope = services.buildRootScope();
  await rootScope.initialize();

  runApp(ApplicationWidget(serviceProvider: rootScope.serviceProvider));
}
