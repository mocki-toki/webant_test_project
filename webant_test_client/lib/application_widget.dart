import 'package:core/core.dart';

class ApplicationWidget extends StatelessWidget {
  const ApplicationWidget({super.key, required this.serviceProvider});

  final ServiceProvider serviceProvider;

  @override
  Widget build(BuildContext context) {
    return DinoProvider(
      serviceProvider: serviceProvider,
      child: MaterialApp.router(
        scaffoldMessengerKey: serviceProvider.getRequired<ScaffoldMessengerProvider>().key,
        debugShowCheckedModeBanner: false,
        theme: Theme.lightMaterialTheme,
        routerConfig: serviceProvider.getRequired<GoRouter>(),
        title: PresentationConstants.applicationName,
      ),
    );
  }
}
