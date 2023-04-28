import 'package:core/core.dart';

class AddPhotoPage extends StatelessWidget {
  const AddPhotoPage(this.route);

  final AddPhotoPageRoute route;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
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
              'Well cum!',
              style: TextStyles.title,
            ),
            Indent.box60(),
          ],
        ),
      ),
    );
  }
}

class AddPhotoPageRoute extends ActivityRoute {
  const AddPhotoPageRoute();

  static const path = '/add_photo';

  static AddPhotoPageRoute fromData(RouteData _) => AddPhotoPageRoute();

  @override
  RouteData get data => RouteData(path: path);
}
