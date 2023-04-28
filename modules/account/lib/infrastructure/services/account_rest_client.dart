import 'package:account/infrastructure/models/user_input_dto.dart';
import 'package:core/core.dart';
import 'package:account/account.dart';
import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart';

part 'account_rest_client.g.dart';

@RestApi(baseUrl: InfrastructureConstants.apiUrl)
abstract class AccountRestClient {
  factory AccountRestClient(Dio dio) = _AccountRestClient;

  @POST('/api/users')
  Future<void> register(@Body() UserInputDto body);

  @GET('/oauth/v2/token')
  Future<TokenDto> login(
    @Query('client_id') String clientId,
    @Query('username') String username,
    @Query('password') String password,
    @Query('client_secret') String clientSecret, [
    @Query('grant_type') String grantType = 'password',
  ]);

  @GET('/oauth/v2/token')
  Future<TokenDto> refreshToken(
    @Query('client_id') String clientId,
    @Query('refresh_token') String refreshToken,
    @Query('client_secret') String clientSecret, [
    @Query('grant_type') String grantType = 'refresh_token',
  ]);
}
