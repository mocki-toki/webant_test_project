// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'photo_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PhotoDto _$PhotoDtoFromJson(Map<String, dynamic> json) {
  return _PhotoDto.fromJson(json);
}

/// @nodoc
mixin _$PhotoDto {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get dateCreate => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  @JsonKey(name: 'new')
  bool get isNew => throw _privateConstructorUsedError;
  bool get popular => throw _privateConstructorUsedError;
  MediaDto get image => throw _privateConstructorUsedError;
  String? get user => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PhotoDtoCopyWith<PhotoDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PhotoDtoCopyWith<$Res> {
  factory $PhotoDtoCopyWith(PhotoDto value, $Res Function(PhotoDto) then) =
      _$PhotoDtoCopyWithImpl<$Res, PhotoDto>;
  @useResult
  $Res call(
      {int id,
      String name,
      String dateCreate,
      String description,
      @JsonKey(name: 'new') bool isNew,
      bool popular,
      MediaDto image,
      String? user});

  $MediaDtoCopyWith<$Res> get image;
}

/// @nodoc
class _$PhotoDtoCopyWithImpl<$Res, $Val extends PhotoDto>
    implements $PhotoDtoCopyWith<$Res> {
  _$PhotoDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? dateCreate = null,
    Object? description = null,
    Object? isNew = null,
    Object? popular = null,
    Object? image = null,
    Object? user = freezed,
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
              as MediaDto,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $MediaDtoCopyWith<$Res> get image {
    return $MediaDtoCopyWith<$Res>(_value.image, (value) {
      return _then(_value.copyWith(image: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_PhotoDtoCopyWith<$Res> implements $PhotoDtoCopyWith<$Res> {
  factory _$$_PhotoDtoCopyWith(
          _$_PhotoDto value, $Res Function(_$_PhotoDto) then) =
      __$$_PhotoDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String name,
      String dateCreate,
      String description,
      @JsonKey(name: 'new') bool isNew,
      bool popular,
      MediaDto image,
      String? user});

  @override
  $MediaDtoCopyWith<$Res> get image;
}

/// @nodoc
class __$$_PhotoDtoCopyWithImpl<$Res>
    extends _$PhotoDtoCopyWithImpl<$Res, _$_PhotoDto>
    implements _$$_PhotoDtoCopyWith<$Res> {
  __$$_PhotoDtoCopyWithImpl(
      _$_PhotoDto _value, $Res Function(_$_PhotoDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? dateCreate = null,
    Object? description = null,
    Object? isNew = null,
    Object? popular = null,
    Object? image = null,
    Object? user = freezed,
  }) {
    return _then(_$_PhotoDto(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
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
              as MediaDto,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PhotoDto implements _PhotoDto {
  const _$_PhotoDto(
      {required this.id,
      required this.name,
      required this.dateCreate,
      required this.description,
      @JsonKey(name: 'new') required this.isNew,
      required this.popular,
      required this.image,
      required this.user});

  factory _$_PhotoDto.fromJson(Map<String, dynamic> json) =>
      _$$_PhotoDtoFromJson(json);

  @override
  final int id;
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
  final MediaDto image;
  @override
  final String? user;

  @override
  String toString() {
    return 'PhotoDto(id: $id, name: $name, dateCreate: $dateCreate, description: $description, isNew: $isNew, popular: $popular, image: $image, user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PhotoDto &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.dateCreate, dateCreate) ||
                other.dateCreate == dateCreate) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.isNew, isNew) || other.isNew == isNew) &&
            (identical(other.popular, popular) || other.popular == popular) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.user, user) || other.user == user));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, dateCreate,
      description, isNew, popular, image, user);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PhotoDtoCopyWith<_$_PhotoDto> get copyWith =>
      __$$_PhotoDtoCopyWithImpl<_$_PhotoDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PhotoDtoToJson(
      this,
    );
  }
}

abstract class _PhotoDto implements PhotoDto {
  const factory _PhotoDto(
      {required final int id,
      required final String name,
      required final String dateCreate,
      required final String description,
      @JsonKey(name: 'new') required final bool isNew,
      required final bool popular,
      required final MediaDto image,
      required final String? user}) = _$_PhotoDto;

  factory _PhotoDto.fromJson(Map<String, dynamic> json) = _$_PhotoDto.fromJson;

  @override
  int get id;
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
  MediaDto get image;
  @override
  String? get user;
  @override
  @JsonKey(ignore: true)
  _$$_PhotoDtoCopyWith<_$_PhotoDto> get copyWith =>
      throw _privateConstructorUsedError;
}
