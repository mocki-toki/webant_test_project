import 'package:core/core.dart';
import 'package:profile/infrastructure/models/user_dto.dart';
import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart';

part 'profile_rest_client.g.dart';

@RestApi(baseUrl: InfrastructureConstants.apiUrl)
abstract class ProfileRestClient {
  factory ProfileRestClient(Dio dio) = _ProfileRestClient;

  @GET('/api/users/current')
  Future<UserDto> getCurrentUser();
}
