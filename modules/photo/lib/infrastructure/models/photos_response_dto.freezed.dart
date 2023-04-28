// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'photos_response_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PhotosResponseDto _$PhotosResponseDtoFromJson(Map<String, dynamic> json) {
  return _PhotosResponseDto.fromJson(json);
}

/// @nodoc
mixin _$PhotosResponseDto {
  int get totalItems => throw _privateConstructorUsedError;
  int get itemsPerPage => throw _privateConstructorUsedError;
  int get countOfPages => throw _privateConstructorUsedError;
  Iterable<PhotoDto> get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PhotosResponseDtoCopyWith<PhotosResponseDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PhotosResponseDtoCopyWith<$Res> {
  factory $PhotosResponseDtoCopyWith(
          PhotosResponseDto value, $Res Function(PhotosResponseDto) then) =
      _$PhotosResponseDtoCopyWithImpl<$Res, PhotosResponseDto>;
  @useResult
  $Res call(
      {int totalItems,
      int itemsPerPage,
      int countOfPages,
      Iterable<PhotoDto> data});
}

/// @nodoc
class _$PhotosResponseDtoCopyWithImpl<$Res, $Val extends PhotosResponseDto>
    implements $PhotosResponseDtoCopyWith<$Res> {
  _$PhotosResponseDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalItems = null,
    Object? itemsPerPage = null,
    Object? countOfPages = null,
    Object? data = null,
  }) {
    return _then(_value.copyWith(
      totalItems: null == totalItems
          ? _value.totalItems
          : totalItems // ignore: cast_nullable_to_non_nullable
              as int,
      itemsPerPage: null == itemsPerPage
          ? _value.itemsPerPage
          : itemsPerPage // ignore: cast_nullable_to_non_nullable
              as int,
      countOfPages: null == countOfPages
          ? _value.countOfPages
          : countOfPages // ignore: cast_nullable_to_non_nullable
              as int,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Iterable<PhotoDto>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PhotosResponseDtoCopyWith<$Res>
    implements $PhotosResponseDtoCopyWith<$Res> {
  factory _$$_PhotosResponseDtoCopyWith(_$_PhotosResponseDto value,
          $Res Function(_$_PhotosResponseDto) then) =
      __$$_PhotosResponseDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int totalItems,
      int itemsPerPage,
      int countOfPages,
      Iterable<PhotoDto> data});
}

/// @nodoc
class __$$_PhotosResponseDtoCopyWithImpl<$Res>
    extends _$PhotosResponseDtoCopyWithImpl<$Res, _$_PhotosResponseDto>
    implements _$$_PhotosResponseDtoCopyWith<$Res> {
  __$$_PhotosResponseDtoCopyWithImpl(
      _$_PhotosResponseDto _value, $Res Function(_$_PhotosResponseDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalItems = null,
    Object? itemsPerPage = null,
    Object? countOfPages = null,
    Object? data = null,
  }) {
    return _then(_$_PhotosResponseDto(
      totalItems: null == totalItems
          ? _value.totalItems
          : totalItems // ignore: cast_nullable_to_non_nullable
              as int,
      itemsPerPage: null == itemsPerPage
          ? _value.itemsPerPage
          : itemsPerPage // ignore: cast_nullable_to_non_nullable
              as int,
      countOfPages: null == countOfPages
          ? _value.countOfPages
          : countOfPages // ignore: cast_nullable_to_non_nullable
              as int,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Iterable<PhotoDto>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PhotosResponseDto implements _PhotosResponseDto {
  const _$_PhotosResponseDto(
      {required this.totalItems,
      required this.itemsPerPage,
      required this.countOfPages,
      required this.data});

  factory _$_PhotosResponseDto.fromJson(Map<String, dynamic> json) =>
      _$$_PhotosResponseDtoFromJson(json);

  @override
  final int totalItems;
  @override
  final int itemsPerPage;
  @override
  final int countOfPages;
  @override
  final Iterable<PhotoDto> data;

  @override
  String toString() {
    return 'PhotosResponseDto(totalItems: $totalItems, itemsPerPage: $itemsPerPage, countOfPages: $countOfPages, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PhotosResponseDto &&
            (identical(other.totalItems, totalItems) ||
                other.totalItems == totalItems) &&
            (identical(other.itemsPerPage, itemsPerPage) ||
                other.itemsPerPage == itemsPerPage) &&
            (identical(other.countOfPages, countOfPages) ||
                other.countOfPages == countOfPages) &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, totalItems, itemsPerPage,
      countOfPages, const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PhotosResponseDtoCopyWith<_$_PhotosResponseDto> get copyWith =>
      __$$_PhotosResponseDtoCopyWithImpl<_$_PhotosResponseDto>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PhotosResponseDtoToJson(
      this,
    );
  }
}

abstract class _PhotosResponseDto implements PhotosResponseDto {
  const factory _PhotosResponseDto(
      {required final int totalItems,
      required final int itemsPerPage,
      required final int countOfPages,
      required final Iterable<PhotoDto> data}) = _$_PhotosResponseDto;

  factory _PhotosResponseDto.fromJson(Map<String, dynamic> json) =
      _$_PhotosResponseDto.fromJson;

  @override
  int get totalItems;
  @override
  int get itemsPerPage;
  @override
  int get countOfPages;
  @override
  Iterable<PhotoDto> get data;
  @override
  @JsonKey(ignore: true)
  _$$_PhotosResponseDtoCopyWith<_$_PhotosResponseDto> get copyWith =>
      throw _privateConstructorUsedError;
}
