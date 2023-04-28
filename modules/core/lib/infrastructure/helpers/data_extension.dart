import 'dart:io';

import 'package:core/core.dart';
import 'package:dio/dio.dart';

extension DataExtension<T> on Future<T> {
  Future<Either<Failure, R>> fromDataToEither<R>([R Function(T data)? extract]) async {
    try {
      final response = await this;
      return Right(extract?.call(response) ?? response as R);
    } on DioError catch (e) {
      return Left(_handleDioError(e));
    } on SocketException {
      return Left(NetworkFailure());
    } catch (e) {
      return Left(DomainFailure());
    }
  }

  Future<Option<Failure>> fromDataToOption() async {
    try {
      await this;
      return None();
    } on DioError catch (e) {
      return Some(_handleDioError(e));
    } on SocketException {
      return Some(NetworkFailure());
    } catch (e) {
      return Some(DomainFailure());
    }
  }

  Failure _handleDioError(DioError e) {
    if (e.response?.statusCode == 400) {
      final message = e.response?.data['error_description'] as String? ??
          e.response?.data['detail'] as String? ??
          '';
      return BackendFailure(message: message);
    }

    if (e.error is SocketException) {
      return NetworkFailure();
    }

    return BackendFailure(message: e.toString());
  }
}
