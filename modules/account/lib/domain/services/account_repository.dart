import 'package:core/core.dart';

abstract class AccountRepository {
  bool get isAuthenticated;
  String? get accessToken;
  Future<Option<Failure>> login(String username, String password);
  Future<Option<Failure>> register(
    String email,
    String password,
    String username,
    DateTime birthday,
  );
  Future<Option<Failure>> refreshToken();
  Future<void> logout();
}
