import 'package:dio/dio.dart';
import 'package:pansy_arch_flutter/pansy_arch_flutter.dart';

extension CoreModule on ServiceCollection {
  void addCoreModule() {
    addInstance(Dio());
  }
}
