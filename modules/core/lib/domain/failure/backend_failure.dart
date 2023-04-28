import 'package:core/domain/failure/failure.dart';

class BackendFailure extends Failure {
  const BackendFailure({required this.message});

  final String message;
}
