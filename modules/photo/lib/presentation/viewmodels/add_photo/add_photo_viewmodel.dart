import 'dart:io';

import 'package:core/core.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:photo/domain/services/photo_repository.dart';
import 'package:photo/presentation/viewmodels/add_photo/add_photo_state.dart';

class AddPhotoViewModel extends Cubit<AddPhotoState> {
  AddPhotoViewModel(
    this._photoRepository,
    this._scaffoldMessenger,
    this._router, {
    required File file,
  }) : super(AddPhotoState.initial(
          name: '',
          description: '',
          file: file,
          isPopular: false,
        ));

  final PhotoRepository _photoRepository;
  final ScaffoldMessengerState _scaffoldMessenger;
  final GoRouter _router;

  void nameChanged(String value) {
    emit(state.copyWith(name: value));
  }

  void descriptionChanged(String value) {
    emit(state.copyWith(description: value));
  }

  void fileChanged(File value) {
    emit(state.copyWith(file: value));
  }

  void isPopularChanged(bool value) {
    emit(state.copyWith(isPopular: value));
  }

  Future<void> uploadPhoto() async {
    emit(AddPhotoState.loading(
      name: state.name,
      description: state.description,
      file: state.file,
      isPopular: state.isPopular,
    ));
    final result = await _photoRepository.uploadPhoto(
      name: state.name,
      description: state.description,
      file: state.file,
      isNew: !state.isPopular,
      isPopular: state.isPopular,
    );

    result.fold(
      (value) {
        _scaffoldMessenger.showSnackBar(
          SnackBar(
            content: Text('$value'),
          ),
        );
        emit(AddPhotoState.initial(
          name: state.name,
          description: state.description,
          file: state.file,
          isPopular: state.isPopular,
        ));
      },
      (value) {
        _scaffoldMessenger.showSnackBar(
          SnackBar(
            content: Text('Photo added'),
          ),
        );
        _router.go('/');
      },
    );
  }
}
