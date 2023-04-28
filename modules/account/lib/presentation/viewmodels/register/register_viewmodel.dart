import 'package:account/account.dart';
import 'package:core/core.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RegisterViewModel extends Cubit<RegisterState> {
  RegisterViewModel(
    this._accountRepository,
    this._scaffoldMessenger,
    this._router,
  ) : super(RegisterState.initial(
          username: '',
          phone: '',
          birthday: '',
          email: '',
          password: '',
          confirmPassword: '',
        ));

  final AccountRepository _accountRepository;
  final ScaffoldMessengerState _scaffoldMessenger;
  final GoRouter _router;

  void usernameChanged(String username) {
    emit(state.copyWith(username: username));
  }

  void phoneChanged(String phone) {
    emit(state.copyWith(phone: phone));
  }

  void birthdayChanged(String birthday) {
    emit(state.copyWith(birthday: birthday));
  }

  void emailChanged(String email) {
    emit(state.copyWith(email: email));
  }

  void passwordChanged(String password) {
    emit(state.copyWith(password: password));
  }

  void confirmPasswordChanged(String confirmPassword) {
    emit(state.copyWith(confirmPassword: confirmPassword));
  }

  Future<void> register() async {
    if (state.password != state.confirmPassword) {
      _scaffoldMessenger.showSnackBar(
        SnackBar(content: Text('Passwords do not match')),
      );
      return;
    }

    emit(RegisterState.loading(
      username: state.username,
      phone: state.phone,
      birthday: state.birthday,
      email: state.email,
      password: state.password,
      confirmPassword: state.confirmPassword,
    ));

    final response = await _accountRepository.register(
      state.email,
      state.password,
      state.username,
      state.birthday.isEmpty ? DateTime.now() : DateTime.parse(state.birthday),
    );

    return response.fold(
      () => _router.replace('/'),
      (failure) {
        _scaffoldMessenger.showSnackBar(
          SnackBar(content: Text('Error: $failure')),
        );
        emit(RegisterState.initial(
          username: state.username,
          phone: state.phone,
          birthday: state.birthday,
          email: state.email,
          password: state.password,
          confirmPassword: state.confirmPassword,
        ));
      },
    );
  }
}
