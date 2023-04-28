import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:photo/domain/services/photo_repository.dart';
import 'package:photo/presentation/viewmodels/details_photo/photo_state.dart';

class DetailsPhotoViewModel extends Cubit<PhotoState> {
  DetailsPhotoViewModel(
    this._photoRepository, {
    required this.id,
  }) : super(const PhotoState.initial()) {
    reload();
  }

  final int id;
  final PhotoRepository _photoRepository;

  Future<void> reload() async {
    emit(const PhotoState.loading());
    final response = await _photoRepository.getPhoto(id);

    response.fold(
      (failure) => emit(PhotoState.failure(failure)),
      (photo) => emit(PhotoState.loaded(photo)),
    );
  }
}
