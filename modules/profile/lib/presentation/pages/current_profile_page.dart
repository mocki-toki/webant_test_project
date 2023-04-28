import 'package:core/core.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:photo/photo.dart';
import 'package:profile/domain/models/user.dart';
import 'package:profile/domain/services/profile_repository.dart';
import 'package:profile/presentation/viewmodels/profile/current_profile_viewmodel.dart';
import 'package:profile/presentation/viewmodels/profile/profile_state.dart';
import 'package:intl/intl.dart';

class CurrentProfilePage extends StatelessWidget {
  const CurrentProfilePage(this.route);

  final CurrentProfilePageRoute route;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => CurrentProfileViewModel(
        context.getRequired<ProfileRepository>(),
      ),
      child: Scaffold(
        appBar: AppBar(
          title: Text('Profile'),
        ),
        body: SafeArea(
          child: Padding(
            padding: Paddings.all16,
            child: _Body(),
          ),
        ),
      ),
    );
  }
}

class _Body extends StatelessWidget {
  const _Body();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CurrentProfileViewModel, ProfileState>(
      builder: (context, state) {
        return state.maybeWhen(
          orElse: () => Center(child: CircularProgressIndicator()),
          loaded: (user) => _Loaded(user),
          failure: (failure) => _Failure(failure),
        );
      },
    );
  }
}

class _Loaded extends StatelessWidget {
  const _Loaded(this.user);

  final User user;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            CircleAvatar(
              maxRadius: 35,
              backgroundColor: Colors.grayLight,
              child: Icon(
                Icons.camera_alt,
                size: 40,
                color: Colors.background,
              ),
            ),
            Indent.box15(),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  user.fullName,
                  style: TextStyles.main,
                ),
                Text(
                  DateFormat.yMMMd().format(user.birthday),
                  style: TextStyles.min.copyWith(color: Colors.subtitle),
                ),
              ],
            ),
          ],
        ),
        Indent.box10(),
        Expanded(
          child: PhotosGallery(
            PhotoFilter.newPhotos,
            byUserId: user.id,
          ),
        ),
      ],
    );
  }
}

class _Failure extends StatelessWidget {
  const _Failure(this.failure);

  final Failure failure;

  @override
  Widget build(BuildContext context) {
    return Text(failure.toString());
  }
}

class CurrentProfilePageRoute extends ActivityRoute {
  const CurrentProfilePageRoute();

  static const path = '/profile';

  static CurrentProfilePageRoute fromData(RouteData _) => CurrentProfilePageRoute();

  @override
  RouteData get data => RouteData(path: path);
}
