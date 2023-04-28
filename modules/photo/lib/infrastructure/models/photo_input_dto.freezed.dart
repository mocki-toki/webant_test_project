// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'photo_input_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PhotoInputDto _$PhotoInputDtoFromJson(Map<String, dynamic> json) {
  return _PhotoInputDto.fromJson(json);
}

/// @nodoc
mixin _$PhotoInputDto {
  String get name => throw _privateConstructorUsedError;
  String get dateCreate => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  @JsonKey(name: 'new')
  bool get isNew => throw _privateConstructorUsedError;
  bool get popular => throw _privateConstructorUsedError;
  String get image => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PhotoInputDtoCopyWith<PhotoInputDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PhotoInputDtoCopyWith<$Res> {
  factory $PhotoInputDtoCopyWith(
          PhotoInputDto value, $Res Function(PhotoInputDto) then) =
      _$PhotoInputDtoCopyWithImpl<$Res, PhotoInputDto>;
  @useResult
  $Res call(
      {String name,
      String dateCreate,
      String description,
      @JsonKey(name: 'new') bool isNew,
      bool popular,
      String image});
}

/// @nodoc
class _$PhotoInputDtoCopyWithImpl<$Res, $Val extends PhotoInputDto>
    implements $PhotoInputDtoCopyWith<$Res> {
  _$PhotoInputDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? dateCreate = null,
    Object? description = null,
    Object? isNew = null,
    Object? popular = null,
    Object? image = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      dateCreate: null == dateCreate
          ? _value.dateCreate
          : dateCreate // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      isNew: null == isNew
          ? _value.isNew
          : isNew // ignore: cast_nullable_to_non_nullable
              as bool,
      popular: null == popular
          ? _value.popular
          : popular // ignore: cast_nullable_to_non_nullable
              as bool,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PhotoInputDtoCopyWith<$Res>
    implements $PhotoInputDtoCopyWith<$Res> {
  factory _$$_PhotoInputDtoCopyWith(
          _$_PhotoInputDto value, $Res Function(_$_PhotoInputDto) then) =
      __$$_PhotoInputDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      String dateCreate,
      String description,
      @JsonKey(name: 'new') bool isNew,
      bool popular,
      String image});
}

/// @nodoc
class __$$_PhotoInputDtoCopyWithImpl<$Res>
    extends _$PhotoInputDtoCopyWithImpl<$Res, _$_PhotoInputDto>
    implements _$$_PhotoInputDtoCopyWith<$Res> {
  __$$_PhotoInputDtoCopyWithImpl(
      _$_PhotoInputDto _value, $Res Function(_$_PhotoInputDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? dateCreate = null,
    Object? description = null,
    Object? isNew = null,
    Object? popular = null,
    Object? image = null,
  }) {
    return _then(_$_PhotoInputDto(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      dateCreate: null == dateCreate
          ? _value.dateCreate
          : dateCreate // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      isNew: null == isNew
          ? _value.isNew
          : isNew // ignore: cast_nullable_to_non_nullable
              as bool,
      popular: null == popular
          ? _value.popular
          : popular // ignore: cast_nullable_to_non_nullable
              as bool,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PhotoInputDto implements _PhotoInputDto {
  const _$_PhotoInputDto(
      {required this.name,
      required this.dateCreate,
      required this.description,
      @JsonKey(name: 'new') required this.isNew,
      required this.popular,
      required this.image});

  factory _$_PhotoInputDto.fromJson(Map<String, dynamic> json) =>
      _$$_PhotoInputDtoFromJson(json);

  @override
  final String name;
  @override
  final String dateCreate;
  @override
  final String description;
  @override
  @JsonKey(name: 'new')
  final bool isNew;
  @override
  final bool popular;
  @override
  final String image;

  @override
  String toString() {
    return 'PhotoInputDto(name: $name, dateCreate: $dateCreate, description: $description, isNew: $isNew, popular: $popular, image: $image)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PhotoInputDto &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.dateCreate, dateCreate) ||
                other.dateCreate == dateCreate) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.isNew, isNew) || other.isNew == isNew) &&
            (identical(other.popular, popular) || other.popular == popular) &&
            (identical(other.image, image) || other.image == image));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, name, dateCreate, description, isNew, popular, image);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PhotoInputDtoCopyWith<_$_PhotoInputDto> get copyWith =>
      __$$_PhotoInputDtoCopyWithImpl<_$_PhotoInputDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PhotoInputDtoToJson(
      this,
    );
  }
}

abstract class _PhotoInputDto implements PhotoInputDto {
  const factory _PhotoInputDto(
      {required final String name,
      required final String dateCreate,
      required final String description,
      @JsonKey(name: 'new') required final bool isNew,
      required final bool popular,
      required final String image}) = _$_PhotoInputDto;

  factory _PhotoInputDto.fromJson(Map<String, dynamic> json) =
      _$_PhotoInputDto.fromJson;

  @override
  String get name;
  @override
  String get dateCreate;
  @override
  String get description;
  @override
  @JsonKey(name: 'new')
  bool get isNew;
  @override
  bool get popular;
  @override
  String get image;
  @override
  @JsonKey(ignore: true)
  _$$_PhotoInputDtoCopyWith<_$_PhotoInputDto> get copyWith =>
      throw _privateConstructorUsedError;
}
