// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'token_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TokenDto _$TokenDtoFromJson(Map<String, dynamic> json) {
  return _TokenDto.fromJson(json);
}

/// @nodoc
mixin _$TokenDto {
  String get access_token => throw _privateConstructorUsedError;
  String get refresh_token => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TokenDtoCopyWith<TokenDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TokenDtoCopyWith<$Res> {
  factory $TokenDtoCopyWith(TokenDto value, $Res Function(TokenDto) then) =
      _$TokenDtoCopyWithImpl<$Res, TokenDto>;
  @useResult
  $Res call({String access_token, String refresh_token});
}

/// @nodoc
class _$TokenDtoCopyWithImpl<$Res, $Val extends TokenDto>
    implements $TokenDtoCopyWith<$Res> {
  _$TokenDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? access_token = null,
    Object? refresh_token = null,
  }) {
    return _then(_value.copyWith(
      access_token: null == access_token
          ? _value.access_token
          : access_token // ignore: cast_nullable_to_non_nullable
              as String,
      refresh_token: null == refresh_token
          ? _value.refresh_token
          : refresh_token // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TokenDtoCopyWith<$Res> implements $TokenDtoCopyWith<$Res> {
  factory _$$_TokenDtoCopyWith(
          _$_TokenDto value, $Res Function(_$_TokenDto) then) =
      __$$_TokenDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String access_token, String refresh_token});
}

/// @nodoc
class __$$_TokenDtoCopyWithImpl<$Res>
    extends _$TokenDtoCopyWithImpl<$Res, _$_TokenDto>
    implements _$$_TokenDtoCopyWith<$Res> {
  __$$_TokenDtoCopyWithImpl(
      _$_TokenDto _value, $Res Function(_$_TokenDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? access_token = null,
    Object? refresh_token = null,
  }) {
    return _then(_$_TokenDto(
      access_token: null == access_token
          ? _value.access_token
          : access_token // ignore: cast_nullable_to_non_nullable
              as String,
      refresh_token: null == refresh_token
          ? _value.refresh_token
          : refresh_token // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TokenDto implements _TokenDto {
  const _$_TokenDto({required this.access_token, required this.refresh_token});

  factory _$_TokenDto.fromJson(Map<String, dynamic> json) =>
      _$$_TokenDtoFromJson(json);

  @override
  final String access_token;
  @override
  final String refresh_token;

  @override
  String toString() {
    return 'TokenDto(access_token: $access_token, refresh_token: $refresh_token)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TokenDto &&
            (identical(other.access_token, access_token) ||
                other.access_token == access_token) &&
            (identical(other.refresh_token, refresh_token) ||
                other.refresh_token == refresh_token));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, access_token, refresh_token);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TokenDtoCopyWith<_$_TokenDto> get copyWith =>
      __$$_TokenDtoCopyWithImpl<_$_TokenDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TokenDtoToJson(
      this,
    );
  }
}

abstract class _TokenDto implements TokenDto {
  const factory _TokenDto(
      {required final String access_token,
      required final String refresh_token}) = _$_TokenDto;

  factory _TokenDto.fromJson(Map<String, dynamic> json) = _$_TokenDto.fromJson;

  @override
  String get access_token;
  @override
  String get refresh_token;
  @override
  @JsonKey(ignore: true)
  _$$_TokenDtoCopyWith<_$_TokenDto> get copyWith =>
      throw _privateConstructorUsedError;
}
