import 'package:core/core.dart';
import 'package:account/account.dart';
import 'package:application/application.dart';
import 'package:gallery/gallery.dart';

Future<void> main() async {
  final services = ServiceCollection();

  services.addAccountModule();
  services.addGalleryModule();

  await Application.run(services);
}
