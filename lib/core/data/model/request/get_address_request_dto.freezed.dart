// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_address_request_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GetAddressRequestDto _$GetAddressRequestDtoFromJson(Map<String, dynamic> json) {
  return _GetAddressRequestDto.fromJson(json);
}

/// @nodoc
mixin _$GetAddressRequestDto {
  int get page => throw _privateConstructorUsedError;
  int get size => throw _privateConstructorUsedError;
  List<String> get sort => throw _privateConstructorUsedError;

  /// Serializes this GetAddressRequestDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of GetAddressRequestDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GetAddressRequestDtoCopyWith<GetAddressRequestDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetAddressRequestDtoCopyWith<$Res> {
  factory $GetAddressRequestDtoCopyWith(GetAddressRequestDto value,
          $Res Function(GetAddressRequestDto) then) =
      _$GetAddressRequestDtoCopyWithImpl<$Res, GetAddressRequestDto>;
  @useResult
  $Res call({int page, int size, List<String> sort});
}

/// @nodoc
class _$GetAddressRequestDtoCopyWithImpl<$Res,
        $Val extends GetAddressRequestDto>
    implements $GetAddressRequestDtoCopyWith<$Res> {
  _$GetAddressRequestDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GetAddressRequestDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = null,
    Object? size = null,
    Object? sort = null,
  }) {
    return _then(_value.copyWith(
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      size: null == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as int,
      sort: null == sort
          ? _value.sort
          : sort // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GetAddressRequestDtoImplCopyWith<$Res>
    implements $GetAddressRequestDtoCopyWith<$Res> {
  factory _$$GetAddressRequestDtoImplCopyWith(_$GetAddressRequestDtoImpl value,
          $Res Function(_$GetAddressRequestDtoImpl) then) =
      __$$GetAddressRequestDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int page, int size, List<String> sort});
}

/// @nodoc
class __$$GetAddressRequestDtoImplCopyWithImpl<$Res>
    extends _$GetAddressRequestDtoCopyWithImpl<$Res, _$GetAddressRequestDtoImpl>
    implements _$$GetAddressRequestDtoImplCopyWith<$Res> {
  __$$GetAddressRequestDtoImplCopyWithImpl(_$GetAddressRequestDtoImpl _value,
      $Res Function(_$GetAddressRequestDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of GetAddressRequestDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = null,
    Object? size = null,
    Object? sort = null,
  }) {
    return _then(_$GetAddressRequestDtoImpl(
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      size: null == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as int,
      sort: null == sort
          ? _value._sort
          : sort // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GetAddressRequestDtoImpl implements _GetAddressRequestDto {
  const _$GetAddressRequestDtoImpl(
      {required this.page,
      required this.size,
      required final List<String> sort})
      : _sort = sort;

  factory _$GetAddressRequestDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$GetAddressRequestDtoImplFromJson(json);

  @override
  final int page;
  @override
  final int size;
  final List<String> _sort;
  @override
  List<String> get sort {
    if (_sort is EqualUnmodifiableListView) return _sort;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_sort);
  }

  @override
  String toString() {
    return 'GetAddressRequestDto(page: $page, size: $size, sort: $sort)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetAddressRequestDtoImpl &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.size, size) || other.size == size) &&
            const DeepCollectionEquality().equals(other._sort, _sort));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, page, size, const DeepCollectionEquality().hash(_sort));

  /// Create a copy of GetAddressRequestDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetAddressRequestDtoImplCopyWith<_$GetAddressRequestDtoImpl>
      get copyWith =>
          __$$GetAddressRequestDtoImplCopyWithImpl<_$GetAddressRequestDtoImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GetAddressRequestDtoImplToJson(
      this,
    );
  }
}

abstract class _GetAddressRequestDto implements GetAddressRequestDto {
  const factory _GetAddressRequestDto(
      {required final int page,
      required final int size,
      required final List<String> sort}) = _$GetAddressRequestDtoImpl;

  factory _GetAddressRequestDto.fromJson(Map<String, dynamic> json) =
      _$GetAddressRequestDtoImpl.fromJson;

  @override
  int get page;
  @override
  int get size;
  @override
  List<String> get sort;

  /// Create a copy of GetAddressRequestDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetAddressRequestDtoImplCopyWith<_$GetAddressRequestDtoImpl>
      get copyWith => throw _privateConstructorUsedError;
}
