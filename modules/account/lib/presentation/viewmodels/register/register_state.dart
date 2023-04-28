import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:core/core.dart';

part 'register_state.freezed.dart';

@freezed
class RegisterState with _$RegisterState {
  const factory RegisterState.initial({
    required String username,
    required String phone,
    required String birthday,
    required String email,
    required String password,
    required String confirmPassword,
  }) = _Initial;

  const factory RegisterState.loading({
    required String username,
    required String phone,
    required String birthday,
    required String email,
    required String password,
    required String confirmPassword,
  }) = _Loading;
}
