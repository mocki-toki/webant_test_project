import 'package:core/core.dart';
import 'package:photo/domain/models/photo.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:photo/presentation/pages/details_photo_page.dart';

class PreviewPhotoWidget extends StatelessWidget {
  const PreviewPhotoWidget(this.photo);

  final Photo photo;

  @override
  Widget build(BuildContext context) {
    return SizedBox.fromSize(
      size: Sizes.previewImage,
      child: Padding(
        padding: Paddings.previewImage,
        child: ClipRRect(
          borderRadius: BorderRadiuses.all5,
          child: Stack(
            fit: StackFit.expand,
            children: [
              CachedNetworkImage(
                imageUrl: photo.imageUrl,
                fit: BoxFit.cover,
                errorWidget: (_, __, ___) {
                  return Container(
                    color: Colors.grayLight,
                    child: const Center(
                      child: Icon(
                        Icons.warning_amber,
                        color: Colors.accent,
                        size: 60,
                      ),
                    ),
                  );
                },
              ),
              Material(
                color: Colors.transparent,
                child: InkWell(
                  onTap: () => context.open(DetailsPhotoPageRoute(photo.id)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
