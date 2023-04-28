import 'dart:io';

import 'package:core/core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:photo/presentation/viewmodels/add_photo/add_photo_state.dart';
import 'package:photo/presentation/viewmodels/add_photo/add_photo_viewmodel.dart';

class AddPhotoPage extends StatelessWidget {
  const AddPhotoPage(this.route);

  final AddPhotoPageRoute route;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => AddPhotoViewModel(
        context.getRequired(),
        context.getRequired(),
        context.getRequired(),
        file: route.file,
      ),
      child: Scaffold(
        body: SafeArea(
          child: ListView(
            children: [
              SizedBox.fromSize(
                size: Sizes.image,
                child: Image.file(
                  route.file,
                  fit: BoxFit.cover,
                ),
              ),
              Indent.box40(),
              Padding(
                padding: Paddings.horizontal16,
                child: _Body(),
              ),
            ],
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
    return BlocBuilder<AddPhotoViewModel, AddPhotoState>(
      builder: (context, state) {
        final viewmodel = context.read<AddPhotoViewModel>();
        return Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisSize: MainAxisSize.min,
          children: [
            TextFormField(
              decoration: InputDecoration(hintText: 'Name'),
              onChanged: viewmodel.nameChanged,
            ),
            Indent.box10(),
            TextFormField(
              decoration: InputDecoration(hintText: 'Description'),
              onChanged: viewmodel.descriptionChanged,
              maxLines: 5,
            ),
            Indent.box10(),
            ListTile(
              title: const Text('Off - New / On - Popular'),
              trailing: CupertinoSwitch(
                value: state.isPopular,
                onChanged: viewmodel.isPopularChanged,
              ),
              onTap: () => viewmodel.isPopularChanged(!state.isPopular),
            ),
            Indent.box10(),
            ElevatedButton(
              child: Text('Upload'),
              onPressed: viewmodel.uploadPhoto,
            ),
          ],
        );
      },
    );
  }
}

class AddPhotoPageRoute extends ActivityRoute {
  const AddPhotoPageRoute(this.file);

  final File file;

  static const path = '/add_photo';

  static AddPhotoPageRoute fromData(RouteData data) {
    return AddPhotoPageRoute(
      data.extra['file'] as File,
    );
  }

  @override
  RouteData get data => RouteData(path: path, extra: {'file': file});
}
