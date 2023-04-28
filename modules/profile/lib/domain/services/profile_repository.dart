import 'package:core/core.dart';
import 'package:profile/domain/models/user.dart';

abstract class ProfileRepository {
  Future<Either<Failure, User>> getCurrentUser();
}
