// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'media_input_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MediaInputDto _$MediaInputDtoFromJson(Map<String, dynamic> json) {
  return _MediaInputDto.fromJson(json);
}

/// @nodoc
mixin _$MediaInputDto {
  String get name => throw _privateConstructorUsedError;
  String get file => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MediaInputDtoCopyWith<MediaInputDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MediaInputDtoCopyWith<$Res> {
  factory $MediaInputDtoCopyWith(
          MediaInputDto value, $Res Function(MediaInputDto) then) =
      _$MediaInputDtoCopyWithImpl<$Res, MediaInputDto>;
  @useResult
  $Res call({String name, String file});
}

/// @nodoc
class _$MediaInputDtoCopyWithImpl<$Res, $Val extends MediaInputDto>
    implements $MediaInputDtoCopyWith<$Res> {
  _$MediaInputDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? file = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      file: null == file
          ? _value.file
          : file // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MediaInputDtoCopyWith<$Res>
    implements $MediaInputDtoCopyWith<$Res> {
  factory _$$_MediaInputDtoCopyWith(
          _$_MediaInputDto value, $Res Function(_$_MediaInputDto) then) =
      __$$_MediaInputDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String file});
}

/// @nodoc
class __$$_MediaInputDtoCopyWithImpl<$Res>
    extends _$MediaInputDtoCopyWithImpl<$Res, _$_MediaInputDto>
    implements _$$_MediaInputDtoCopyWith<$Res> {
  __$$_MediaInputDtoCopyWithImpl(
      _$_MediaInputDto _value, $Res Function(_$_MediaInputDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? file = null,
  }) {
    return _then(_$_MediaInputDto(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      file: null == file
          ? _value.file
          : file // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MediaInputDto implements _MediaInputDto {
  const _$_MediaInputDto({required this.name, required this.file});

  factory _$_MediaInputDto.fromJson(Map<String, dynamic> json) =>
      _$$_MediaInputDtoFromJson(json);

  @override
  final String name;
  @override
  final String file;

  @override
  String toString() {
    return 'MediaInputDto(name: $name, file: $file)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MediaInputDto &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.file, file) || other.file == file));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, file);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MediaInputDtoCopyWith<_$_MediaInputDto> get copyWith =>
      __$$_MediaInputDtoCopyWithImpl<_$_MediaInputDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MediaInputDtoToJson(
      this,
    );
  }
}

abstract class _MediaInputDto implements MediaInputDto {
  const factory _MediaInputDto(
      {required final String name,
      required final String file}) = _$_MediaInputDto;

  factory _MediaInputDto.fromJson(Map<String, dynamic> json) =
      _$_MediaInputDto.fromJson;

  @override
  String get name;
  @override
  String get file;
  @override
  @JsonKey(ignore: true)
  _$$_MediaInputDtoCopyWith<_$_MediaInputDto> get copyWith =>
      throw _privateConstructorUsedError;
}
