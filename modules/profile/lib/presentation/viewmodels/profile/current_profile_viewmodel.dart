import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:profile/domain/services/profile_repository.dart';
import 'package:profile/presentation/viewmodels/profile/profile_state.dart';

class CurrentProfileViewModel extends Cubit<ProfileState> {
  CurrentProfileViewModel(this._profileRepository) : super(ProfileState.initial()) {
    getCurrentUser();
  }

  final ProfileRepository _profileRepository;

  Future<void> getCurrentUser() async {
    emit(ProfileState.loading());

    final response = await _profileRepository.getCurrentUser();

    return response.fold(
      (failure) => emit(ProfileState.failure(failure)),
      (user) => emit(ProfileState.loaded(user)),
    );
  }
}
