import 'package:account/account.dart';
import 'package:account/infrastructure/models/user_input_dto.dart';
import 'package:account/infrastructure/services/account_rest_client.dart';
import 'package:core/core.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:dio/dio.dart';

part 'account_repository_impl.g.dart';

const _tokenKey = 'token';
const _refreshKey = 'refresh';

@Service(ServiceLifetime.singleton)
class AccountRepositoryImpl implements AccountRepository, Initializable {
  AccountRepositoryImpl(
    this._dio,
    this._accountRestClient,
    this._sharedPreferences,
  );

  final Dio _dio;
  final AccountRestClient _accountRestClient;
  final SharedPreferences _sharedPreferences;

  @override
  Future<void> initialize() async {
    _dio.interceptors.add(
      InterceptorsWrapper(
        onRequest: (options, handler) {
          if (isAuthenticated) options.headers['Authorization'] = 'Bearer $accessToken';

          handler.next(options);
        },
        onError: (error, handler) async {
          if (!isAuthenticated) {
            handler.reject(error);
            return;
          }

          if (error.response?.statusCode == 403 || error.response?.statusCode == 401) {
            final response = await refreshToken();

            return response.fold(
              () async {
                error.requestOptions.headers['Authorization'] = 'Bearer $accessToken';
                final opts = new Options(
                  method: error.requestOptions.method,
                  headers: error.requestOptions.headers,
                );

                final cloneReq = await _dio.request(
                  error.requestOptions.path,
                  options: opts,
                  data: error.requestOptions.data,
                  queryParameters: error.requestOptions.queryParameters,
                );

                return handler.resolve(cloneReq);
              },
              (t) {
                logout();
                handler.reject(error);
              },
            );
          }
          handler.reject(error);
        },
      ),
    );
  }

  @override
  bool get isAuthenticated => _sharedPreferences.containsKey(_tokenKey);

  String? get accessToken => _sharedPreferences.getString(_tokenKey);

  @override
  Future<Option<Failure>> login(String username, String password) async {
    final either = await _accountRestClient
        .login(
          '${InfrastructureConstants.clientId}_${InfrastructureConstants.randomId}',
          username,
          password,
          InfrastructureConstants.clientSecret,
        )
        .fromDataToEither();

    return either.fold(
      (failure) => Some(failure),
      (token) async {
        await _sharedPreferences.setString(_tokenKey, token.access_token);
        await _sharedPreferences.setString(_refreshKey, token.refresh_token);

        return None();
      },
    );
  }

  @override
  Future<Option<Failure>> register(
    String email,
    String password,
    String username,
    DateTime birthday,
  ) {
    return _accountRestClient
        .register(
          UserInputDto(
            email: email,
            phone: null,
            fullName: username,
            password: password,
            username: username,
            birthday: birthday.toIso8601String(),
            roles: [
              'ROLE_USER',
            ],
          ),
        )
        .fromDataToOption();
  }

  @override
  Future<Option<Failure>> refreshToken() async {
    final refreshToken = _sharedPreferences.getString(_refreshKey);
    if (refreshToken == null) return const Some(UnauthorizedFailure());

    final either = await _accountRestClient
        .refreshToken(
          '${InfrastructureConstants.clientId}_${InfrastructureConstants.randomId}',
          refreshToken,
          InfrastructureConstants.clientSecret,
        )
        .fromDataToEither();

    return either.fold(
      (failure) => Some(failure),
      (token) async {
        await _sharedPreferences.setString(_tokenKey, token.accessToken);
        await _sharedPreferences.setString(_refreshKey, token.refreshToken);

        return None();
      },
    );
  }

  @override
  Future<void> logout() {
    return Future.wait([
      _sharedPreferences.remove(_tokenKey),
      _sharedPreferences.remove(_refreshKey),
    ]);
  }
}
