import 'package:application/presentation/widgets/application_widget.dart';
import 'package:flutter/material.dart';
import 'package:pansy_arch_go_router/pansy_arch_go_router.dart';

class Application {
  static Future<ServiceScope> run(ServiceCollection services) async {
    WidgetsFlutterBinding.ensureInitialized();

    services.addPansyArchFlutterModule();
    services.addPansyArchGoRouterModule();

    final rootScope = await services.buildRootScope();
    await rootScope.initialize();

    runApp(ApplicationWidget(serviceProvider: rootScope.serviceProvider));
    return rootScope;
  }
}
