// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_input_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UserInputDto _$UserInputDtoFromJson(Map<String, dynamic> json) {
  return _UserInputDto.fromJson(json);
}

/// @nodoc
mixin _$UserInputDto {
  String get username => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String? get phone => throw _privateConstructorUsedError;
  String get fullName => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;
  String get birthday => throw _privateConstructorUsedError;
  Iterable<String> get roles => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserInputDtoCopyWith<UserInputDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserInputDtoCopyWith<$Res> {
  factory $UserInputDtoCopyWith(
          UserInputDto value, $Res Function(UserInputDto) then) =
      _$UserInputDtoCopyWithImpl<$Res, UserInputDto>;
  @useResult
  $Res call(
      {String username,
      String email,
      String? phone,
      String fullName,
      String password,
      String birthday,
      Iterable<String> roles});
}

/// @nodoc
class _$UserInputDtoCopyWithImpl<$Res, $Val extends UserInputDto>
    implements $UserInputDtoCopyWith<$Res> {
  _$UserInputDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? username = null,
    Object? email = null,
    Object? phone = freezed,
    Object? fullName = null,
    Object? password = null,
    Object? birthday = null,
    Object? roles = null,
  }) {
    return _then(_value.copyWith(
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      fullName: null == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      birthday: null == birthday
          ? _value.birthday
          : birthday // ignore: cast_nullable_to_non_nullable
              as String,
      roles: null == roles
          ? _value.roles
          : roles // ignore: cast_nullable_to_non_nullable
              as Iterable<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_UserInputDtoCopyWith<$Res>
    implements $UserInputDtoCopyWith<$Res> {
  factory _$$_UserInputDtoCopyWith(
          _$_UserInputDto value, $Res Function(_$_UserInputDto) then) =
      __$$_UserInputDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String username,
      String email,
      String? phone,
      String fullName,
      String password,
      String birthday,
      Iterable<String> roles});
}

/// @nodoc
class __$$_UserInputDtoCopyWithImpl<$Res>
    extends _$UserInputDtoCopyWithImpl<$Res, _$_UserInputDto>
    implements _$$_UserInputDtoCopyWith<$Res> {
  __$$_UserInputDtoCopyWithImpl(
      _$_UserInputDto _value, $Res Function(_$_UserInputDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? username = null,
    Object? email = null,
    Object? phone = freezed,
    Object? fullName = null,
    Object? password = null,
    Object? birthday = null,
    Object? roles = null,
  }) {
    return _then(_$_UserInputDto(
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      fullName: null == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      birthday: null == birthday
          ? _value.birthday
          : birthday // ignore: cast_nullable_to_non_nullable
              as String,
      roles: null == roles
          ? _value.roles
          : roles // ignore: cast_nullable_to_non_nullable
              as Iterable<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UserInputDto implements _UserInputDto {
  const _$_UserInputDto(
      {required this.username,
      required this.email,
      required this.phone,
      required this.fullName,
      required this.password,
      required this.birthday,
      required this.roles});

  factory _$_UserInputDto.fromJson(Map<String, dynamic> json) =>
      _$$_UserInputDtoFromJson(json);

  @override
  final String username;
  @override
  final String email;
  @override
  final String? phone;
  @override
  final String fullName;
  @override
  final String password;
  @override
  final String birthday;
  @override
  final Iterable<String> roles;

  @override
  String toString() {
    return 'UserInputDto(username: $username, email: $email, phone: $phone, fullName: $fullName, password: $password, birthday: $birthday, roles: $roles)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserInputDto &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.fullName, fullName) ||
                other.fullName == fullName) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.birthday, birthday) ||
                other.birthday == birthday) &&
            const DeepCollectionEquality().equals(other.roles, roles));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, username, email, phone, fullName,
      password, birthday, const DeepCollectionEquality().hash(roles));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UserInputDtoCopyWith<_$_UserInputDto> get copyWith =>
      __$$_UserInputDtoCopyWithImpl<_$_UserInputDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserInputDtoToJson(
      this,
    );
  }
}

abstract class _UserInputDto implements UserInputDto {
  const factory _UserInputDto(
      {required final String username,
      required final String email,
      required final String? phone,
      required final String fullName,
      required final String password,
      required final String birthday,
      required final Iterable<String> roles}) = _$_UserInputDto;

  factory _UserInputDto.fromJson(Map<String, dynamic> json) =
      _$_UserInputDto.fromJson;

  @override
  String get username;
  @override
  String get email;
  @override
  String? get phone;
  @override
  String get fullName;
  @override
  String get password;
  @override
  String get birthday;
  @override
  Iterable<String> get roles;
  @override
  @JsonKey(ignore: true)
  _$$_UserInputDtoCopyWith<_$_UserInputDto> get copyWith =>
      throw _privateConstructorUsedError;
}
