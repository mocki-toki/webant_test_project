import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_state.freezed.dart';

@freezed
class LoginState with _$LoginState {
  const factory LoginState.initial({
    required String username,
    required String password,
  }) = _Initial;

  const factory LoginState.loading({
    required String username,
    required String password,
  }) = _Loading;
}
