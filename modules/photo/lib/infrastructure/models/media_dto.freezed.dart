// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'media_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MediaDto _$MediaDtoFromJson(Map<String, dynamic> json) {
  return _MediaDto.fromJson(json);
}

/// @nodoc
mixin _$MediaDto {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MediaDtoCopyWith<MediaDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MediaDtoCopyWith<$Res> {
  factory $MediaDtoCopyWith(MediaDto value, $Res Function(MediaDto) then) =
      _$MediaDtoCopyWithImpl<$Res, MediaDto>;
  @useResult
  $Res call({int id, String name});
}

/// @nodoc
class _$MediaDtoCopyWithImpl<$Res, $Val extends MediaDto>
    implements $MediaDtoCopyWith<$Res> {
  _$MediaDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MediaDtoCopyWith<$Res> implements $MediaDtoCopyWith<$Res> {
  factory _$$_MediaDtoCopyWith(
          _$_MediaDto value, $Res Function(_$_MediaDto) then) =
      __$$_MediaDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String name});
}

/// @nodoc
class __$$_MediaDtoCopyWithImpl<$Res>
    extends _$MediaDtoCopyWithImpl<$Res, _$_MediaDto>
    implements _$$_MediaDtoCopyWith<$Res> {
  __$$_MediaDtoCopyWithImpl(
      _$_MediaDto _value, $Res Function(_$_MediaDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
  }) {
    return _then(_$_MediaDto(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MediaDto implements _MediaDto {
  const _$_MediaDto({required this.id, required this.name});

  factory _$_MediaDto.fromJson(Map<String, dynamic> json) =>
      _$$_MediaDtoFromJson(json);

  @override
  final int id;
  @override
  final String name;

  @override
  String toString() {
    return 'MediaDto(id: $id, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MediaDto &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MediaDtoCopyWith<_$_MediaDto> get copyWith =>
      __$$_MediaDtoCopyWithImpl<_$_MediaDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MediaDtoToJson(
      this,
    );
  }
}

abstract class _MediaDto implements MediaDto {
  const factory _MediaDto({required final int id, required final String name}) =
      _$_MediaDto;

  factory _MediaDto.fromJson(Map<String, dynamic> json) = _$_MediaDto.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$_MediaDtoCopyWith<_$_MediaDto> get copyWith =>
      throw _privateConstructorUsedError;
}
