import 'package:core/core.dart';
import 'package:account/account.dart';
import 'package:gallery/gallery.dart';
import 'package:webant_test_client/application_widget.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  final services = ServiceCollection();

  services.addPansyArchFlutterModule();
  services.addPansyArchGoRouterModule();

  services.addAccountModule();
  services.addGalleryModule();

  final rootScope = services.buildRootScope();
  await rootScope.initialize();

  runApp(ApplicationWidget(serviceProvider: rootScope.serviceProvider));
}
