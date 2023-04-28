import 'package:core/core.dart';
import 'package:photo/domain/services/photo_repository.dart';
import 'package:photo/presentation/widgets/photos_gallery.dart';

class FeedPage extends StatelessWidget {
  const FeedPage(this.route);

  final FeedPageRoute route;

  static const _tabs = [
    Tab(text: 'New'),
    Tab(text: 'Popular'),
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: _tabs.length,
      child: Scaffold(
        appBar: AppBar(
          shape: Border(),
          title: Text('Feed'),
          bottom: TabBar(
            padding: Paddings.horizontal16,
            tabs: _tabs,
          ),
        ),
        body: TabBarView(
          children: [
            PhotosGallery(PhotoFilter.newPhotos),
            PhotosGallery(PhotoFilter.popularPhotos),
          ],
        ),
      ),
    );
  }
}

class FeedPageRoute extends ActivityRoute {
  const FeedPageRoute();

  static const path = '/';

  static FeedPageRoute fromData(RouteData _) => FeedPageRoute();

  @override
  RouteData get data => RouteData(path: path);
}
