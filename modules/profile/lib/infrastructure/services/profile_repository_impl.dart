import 'package:core/core.dart';
import 'package:profile/domain/models/user.dart';
import 'package:profile/domain/services/profile_repository.dart';
import 'package:profile/infrastructure/models/user_dto.dart';
import 'package:profile/infrastructure/services/profile_rest_client.dart';

part 'profile_repository_impl.g.dart';

@Service(ServiceLifetime.singleton)
class ProfileRepositoryImpl implements ProfileRepository {
  ProfileRepositoryImpl(this._profileRestClient);

  final ProfileRestClient _profileRestClient;

  @override
  Future<Either<Failure, User>> getCurrentUser() {
    return _profileRestClient.getCurrentUser().fromDataToEither((e) => e.toDomain());
  }
}
