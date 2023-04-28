import 'dart:io';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'add_photo_state.freezed.dart';

@freezed
class AddPhotoState with _$AddPhotoState {
  const factory AddPhotoState.initial({
    required String name,
    required String description,
    required File file,
    required bool isPopular,
  }) = _Initial;

  const factory AddPhotoState.loading({
    required String name,
    required String description,
    required File file,
    required bool isPopular,
  }) = _Loading;
}
