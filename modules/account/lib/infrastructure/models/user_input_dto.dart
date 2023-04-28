import 'package:core/core.dart';

part 'user_input_dto.freezed.dart';
part 'user_input_dto.g.dart';

@freezed
class UserInputDto with _$UserInputDto {
  const factory UserInputDto({
    required String username,
    required String email,
    required String? phone,
    required String fullName,
    required String password,
    required String birthday,
    required Iterable<String> roles,
  }) = _UserInputDto;

  factory UserInputDto.fromJson(Map<String, dynamic> json) => _$UserInputDtoFromJson(json);
}
