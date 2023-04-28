import 'package:account/account.dart';
import 'package:core/core.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginViewModel extends Cubit<LoginState> {
  LoginViewModel(
    this._accountRepository,
    this._scaffoldMessenger,
    this._router,
  ) : super(LoginState.initial(username: '', password: ''));

  AccountRepository _accountRepository;
  ScaffoldMessengerState _scaffoldMessenger;
  GoRouter _router;

  void usernameChanged(String username) {
    emit(state.copyWith(username: username));
  }

  void passwordChanged(String password) {
    emit(state.copyWith(password: password));
  }

  Future<void> login() async {
    emit(LoginState.loading(
      username: state.username,
      password: state.password,
    ));

    final response = await _accountRepository.login(
      state.username,
      state.password,
    );

    return response.fold(
      () => _router.replace('/'),
      (failure) => _scaffoldMessenger.showSnackBar(
        SnackBar(content: Text('Error: $failure')),
      ),
    );
  }
}
