// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'generic_list_response_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GenericListResponseDto<T> _$GenericListResponseDtoFromJson<T>(
    Map<String, dynamic> json, T Function(Object?) fromJsonT) {
  return _GenericListResponseDto<T>.fromJson(json, fromJsonT);
}

/// @nodoc
mixin _$GenericListResponseDto<T> {
  int get totalPages => throw _privateConstructorUsedError;
  int get totalElements => throw _privateConstructorUsedError;
  Pageable get pageable => throw _privateConstructorUsedError;
  bool get first => throw _privateConstructorUsedError;
  bool get last => throw _privateConstructorUsedError;
  int get numberOfElements => throw _privateConstructorUsedError;
  int get size => throw _privateConstructorUsedError;
  List<T> get content => throw _privateConstructorUsedError;
  int get number => throw _privateConstructorUsedError;
  Sort get sort => throw _privateConstructorUsedError;
  bool get empty => throw _privateConstructorUsedError;

  /// Serializes this GenericListResponseDto to a JSON map.
  Map<String, dynamic> toJson(Object? Function(T) toJsonT) =>
      throw _privateConstructorUsedError;

  /// Create a copy of GenericListResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GenericListResponseDtoCopyWith<T, GenericListResponseDto<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GenericListResponseDtoCopyWith<T, $Res> {
  factory $GenericListResponseDtoCopyWith(GenericListResponseDto<T> value,
          $Res Function(GenericListResponseDto<T>) then) =
      _$GenericListResponseDtoCopyWithImpl<T, $Res, GenericListResponseDto<T>>;
  @useResult
  $Res call(
      {int totalPages,
      int totalElements,
      Pageable pageable,
      bool first,
      bool last,
      int numberOfElements,
      int size,
      List<T> content,
      int number,
      Sort sort,
      bool empty});

  $PageableCopyWith<$Res> get pageable;
  $SortCopyWith<$Res> get sort;
}

/// @nodoc
class _$GenericListResponseDtoCopyWithImpl<T, $Res,
        $Val extends GenericListResponseDto<T>>
    implements $GenericListResponseDtoCopyWith<T, $Res> {
  _$GenericListResponseDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GenericListResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalPages = null,
    Object? totalElements = null,
    Object? pageable = null,
    Object? first = null,
    Object? last = null,
    Object? numberOfElements = null,
    Object? size = null,
    Object? content = null,
    Object? number = null,
    Object? sort = null,
    Object? empty = null,
  }) {
    return _then(_value.copyWith(
      totalPages: null == totalPages
          ? _value.totalPages
          : totalPages // ignore: cast_nullable_to_non_nullable
              as int,
      totalElements: null == totalElements
          ? _value.totalElements
          : totalElements // ignore: cast_nullable_to_non_nullable
              as int,
      pageable: null == pageable
          ? _value.pageable
          : pageable // ignore: cast_nullable_to_non_nullable
              as Pageable,
      first: null == first
          ? _value.first
          : first // ignore: cast_nullable_to_non_nullable
              as bool,
      last: null == last
          ? _value.last
          : last // ignore: cast_nullable_to_non_nullable
              as bool,
      numberOfElements: null == numberOfElements
          ? _value.numberOfElements
          : numberOfElements // ignore: cast_nullable_to_non_nullable
              as int,
      size: null == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as int,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as List<T>,
      number: null == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as int,
      sort: null == sort
          ? _value.sort
          : sort // ignore: cast_nullable_to_non_nullable
              as Sort,
      empty: null == empty
          ? _value.empty
          : empty // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  /// Create a copy of GenericListResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PageableCopyWith<$Res> get pageable {
    return $PageableCopyWith<$Res>(_value.pageable, (value) {
      return _then(_value.copyWith(pageable: value) as $Val);
    });
  }

  /// Create a copy of GenericListResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SortCopyWith<$Res> get sort {
    return $SortCopyWith<$Res>(_value.sort, (value) {
      return _then(_value.copyWith(sort: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$GenericListResponseDtoImplCopyWith<T, $Res>
    implements $GenericListResponseDtoCopyWith<T, $Res> {
  factory _$$GenericListResponseDtoImplCopyWith(
          _$GenericListResponseDtoImpl<T> value,
          $Res Function(_$GenericListResponseDtoImpl<T>) then) =
      __$$GenericListResponseDtoImplCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call(
      {int totalPages,
      int totalElements,
      Pageable pageable,
      bool first,
      bool last,
      int numberOfElements,
      int size,
      List<T> content,
      int number,
      Sort sort,
      bool empty});

  @override
  $PageableCopyWith<$Res> get pageable;
  @override
  $SortCopyWith<$Res> get sort;
}

/// @nodoc
class __$$GenericListResponseDtoImplCopyWithImpl<T, $Res>
    extends _$GenericListResponseDtoCopyWithImpl<T, $Res,
        _$GenericListResponseDtoImpl<T>>
    implements _$$GenericListResponseDtoImplCopyWith<T, $Res> {
  __$$GenericListResponseDtoImplCopyWithImpl(
      _$GenericListResponseDtoImpl<T> _value,
      $Res Function(_$GenericListResponseDtoImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of GenericListResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalPages = null,
    Object? totalElements = null,
    Object? pageable = null,
    Object? first = null,
    Object? last = null,
    Object? numberOfElements = null,
    Object? size = null,
    Object? content = null,
    Object? number = null,
    Object? sort = null,
    Object? empty = null,
  }) {
    return _then(_$GenericListResponseDtoImpl<T>(
      totalPages: null == totalPages
          ? _value.totalPages
          : totalPages // ignore: cast_nullable_to_non_nullable
              as int,
      totalElements: null == totalElements
          ? _value.totalElements
          : totalElements // ignore: cast_nullable_to_non_nullable
              as int,
      pageable: null == pageable
          ? _value.pageable
          : pageable // ignore: cast_nullable_to_non_nullable
              as Pageable,
      first: null == first
          ? _value.first
          : first // ignore: cast_nullable_to_non_nullable
              as bool,
      last: null == last
          ? _value.last
          : last // ignore: cast_nullable_to_non_nullable
              as bool,
      numberOfElements: null == numberOfElements
          ? _value.numberOfElements
          : numberOfElements // ignore: cast_nullable_to_non_nullable
              as int,
      size: null == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as int,
      content: null == content
          ? _value._content
          : content // ignore: cast_nullable_to_non_nullable
              as List<T>,
      number: null == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as int,
      sort: null == sort
          ? _value.sort
          : sort // ignore: cast_nullable_to_non_nullable
              as Sort,
      empty: null == empty
          ? _value.empty
          : empty // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable(genericArgumentFactories: true)
class _$GenericListResponseDtoImpl<T> implements _GenericListResponseDto<T> {
  const _$GenericListResponseDtoImpl(
      {required this.totalPages,
      required this.totalElements,
      required this.pageable,
      required this.first,
      required this.last,
      required this.numberOfElements,
      required this.size,
      required final List<T> content,
      required this.number,
      required this.sort,
      required this.empty})
      : _content = content;

  factory _$GenericListResponseDtoImpl.fromJson(
          Map<String, dynamic> json, T Function(Object?) fromJsonT) =>
      _$$GenericListResponseDtoImplFromJson(json, fromJsonT);

  @override
  final int totalPages;
  @override
  final int totalElements;
  @override
  final Pageable pageable;
  @override
  final bool first;
  @override
  final bool last;
  @override
  final int numberOfElements;
  @override
  final int size;
  final List<T> _content;
  @override
  List<T> get content {
    if (_content is EqualUnmodifiableListView) return _content;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_content);
  }

  @override
  final int number;
  @override
  final Sort sort;
  @override
  final bool empty;

  @override
  String toString() {
    return 'GenericListResponseDto<$T>(totalPages: $totalPages, totalElements: $totalElements, pageable: $pageable, first: $first, last: $last, numberOfElements: $numberOfElements, size: $size, content: $content, number: $number, sort: $sort, empty: $empty)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GenericListResponseDtoImpl<T> &&
            (identical(other.totalPages, totalPages) ||
                other.totalPages == totalPages) &&
            (identical(other.totalElements, totalElements) ||
                other.totalElements == totalElements) &&
            (identical(other.pageable, pageable) ||
                other.pageable == pageable) &&
            (identical(other.first, first) || other.first == first) &&
            (identical(other.last, last) || other.last == last) &&
            (identical(other.numberOfElements, numberOfElements) ||
                other.numberOfElements == numberOfElements) &&
            (identical(other.size, size) || other.size == size) &&
            const DeepCollectionEquality().equals(other._content, _content) &&
            (identical(other.number, number) || other.number == number) &&
            (identical(other.sort, sort) || other.sort == sort) &&
            (identical(other.empty, empty) || other.empty == empty));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      totalPages,
      totalElements,
      pageable,
      first,
      last,
      numberOfElements,
      size,
      const DeepCollectionEquality().hash(_content),
      number,
      sort,
      empty);

  /// Create a copy of GenericListResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GenericListResponseDtoImplCopyWith<T, _$GenericListResponseDtoImpl<T>>
      get copyWith => __$$GenericListResponseDtoImplCopyWithImpl<T,
          _$GenericListResponseDtoImpl<T>>(this, _$identity);

  @override
  Map<String, dynamic> toJson(Object? Function(T) toJsonT) {
    return _$$GenericListResponseDtoImplToJson<T>(this, toJsonT);
  }
}

abstract class _GenericListResponseDto<T> implements GenericListResponseDto<T> {
  const factory _GenericListResponseDto(
      {required final int totalPages,
      required final int totalElements,
      required final Pageable pageable,
      required final bool first,
      required final bool last,
      required final int numberOfElements,
      required final int size,
      required final List<T> content,
      required final int number,
      required final Sort sort,
      required final bool empty}) = _$GenericListResponseDtoImpl<T>;

  factory _GenericListResponseDto.fromJson(
          Map<String, dynamic> json, T Function(Object?) fromJsonT) =
      _$GenericListResponseDtoImpl<T>.fromJson;

  @override
  int get totalPages;
  @override
  int get totalElements;
  @override
  Pageable get pageable;
  @override
  bool get first;
  @override
  bool get last;
  @override
  int get numberOfElements;
  @override
  int get size;
  @override
  List<T> get content;
  @override
  int get number;
  @override
  Sort get sort;
  @override
  bool get empty;

  /// Create a copy of GenericListResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GenericListResponseDtoImplCopyWith<T, _$GenericListResponseDtoImpl<T>>
      get copyWith => throw _privateConstructorUsedError;
}

Pageable _$PageableFromJson(Map<String, dynamic> json) {
  return _Pageable.fromJson(json);
}

/// @nodoc
mixin _$Pageable {
  bool get unpaged => throw _privateConstructorUsedError;
  int get pageSize => throw _privateConstructorUsedError;
  bool get paged => throw _privateConstructorUsedError;
  int get pageNumber => throw _privateConstructorUsedError;
  int get offset => throw _privateConstructorUsedError;
  Sort get sort => throw _privateConstructorUsedError;

  /// Serializes this Pageable to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Pageable
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PageableCopyWith<Pageable> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PageableCopyWith<$Res> {
  factory $PageableCopyWith(Pageable value, $Res Function(Pageable) then) =
      _$PageableCopyWithImpl<$Res, Pageable>;
  @useResult
  $Res call(
      {bool unpaged,
      int pageSize,
      bool paged,
      int pageNumber,
      int offset,
      Sort sort});

  $SortCopyWith<$Res> get sort;
}

/// @nodoc
class _$PageableCopyWithImpl<$Res, $Val extends Pageable>
    implements $PageableCopyWith<$Res> {
  _$PageableCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Pageable
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? unpaged = null,
    Object? pageSize = null,
    Object? paged = null,
    Object? pageNumber = null,
    Object? offset = null,
    Object? sort = null,
  }) {
    return _then(_value.copyWith(
      unpaged: null == unpaged
          ? _value.unpaged
          : unpaged // ignore: cast_nullable_to_non_nullable
              as bool,
      pageSize: null == pageSize
          ? _value.pageSize
          : pageSize // ignore: cast_nullable_to_non_nullable
              as int,
      paged: null == paged
          ? _value.paged
          : paged // ignore: cast_nullable_to_non_nullable
              as bool,
      pageNumber: null == pageNumber
          ? _value.pageNumber
          : pageNumber // ignore: cast_nullable_to_non_nullable
              as int,
      offset: null == offset
          ? _value.offset
          : offset // ignore: cast_nullable_to_non_nullable
              as int,
      sort: null == sort
          ? _value.sort
          : sort // ignore: cast_nullable_to_non_nullable
              as Sort,
    ) as $Val);
  }

  /// Create a copy of Pageable
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SortCopyWith<$Res> get sort {
    return $SortCopyWith<$Res>(_value.sort, (value) {
      return _then(_value.copyWith(sort: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PageableImplCopyWith<$Res>
    implements $PageableCopyWith<$Res> {
  factory _$$PageableImplCopyWith(
          _$PageableImpl value, $Res Function(_$PageableImpl) then) =
      __$$PageableImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool unpaged,
      int pageSize,
      bool paged,
      int pageNumber,
      int offset,
      Sort sort});

  @override
  $SortCopyWith<$Res> get sort;
}

/// @nodoc
class __$$PageableImplCopyWithImpl<$Res>
    extends _$PageableCopyWithImpl<$Res, _$PageableImpl>
    implements _$$PageableImplCopyWith<$Res> {
  __$$PageableImplCopyWithImpl(
      _$PageableImpl _value, $Res Function(_$PageableImpl) _then)
      : super(_value, _then);

  /// Create a copy of Pageable
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? unpaged = null,
    Object? pageSize = null,
    Object? paged = null,
    Object? pageNumber = null,
    Object? offset = null,
    Object? sort = null,
  }) {
    return _then(_$PageableImpl(
      unpaged: null == unpaged
          ? _value.unpaged
          : unpaged // ignore: cast_nullable_to_non_nullable
              as bool,
      pageSize: null == pageSize
          ? _value.pageSize
          : pageSize // ignore: cast_nullable_to_non_nullable
              as int,
      paged: null == paged
          ? _value.paged
          : paged // ignore: cast_nullable_to_non_nullable
              as bool,
      pageNumber: null == pageNumber
          ? _value.pageNumber
          : pageNumber // ignore: cast_nullable_to_non_nullable
              as int,
      offset: null == offset
          ? _value.offset
          : offset // ignore: cast_nullable_to_non_nullable
              as int,
      sort: null == sort
          ? _value.sort
          : sort // ignore: cast_nullable_to_non_nullable
              as Sort,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PageableImpl implements _Pageable {
  const _$PageableImpl(
      {required this.unpaged,
      required this.pageSize,
      required this.paged,
      required this.pageNumber,
      required this.offset,
      required this.sort});

  factory _$PageableImpl.fromJson(Map<String, dynamic> json) =>
      _$$PageableImplFromJson(json);

  @override
  final bool unpaged;
  @override
  final int pageSize;
  @override
  final bool paged;
  @override
  final int pageNumber;
  @override
  final int offset;
  @override
  final Sort sort;

  @override
  String toString() {
    return 'Pageable(unpaged: $unpaged, pageSize: $pageSize, paged: $paged, pageNumber: $pageNumber, offset: $offset, sort: $sort)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PageableImpl &&
            (identical(other.unpaged, unpaged) || other.unpaged == unpaged) &&
            (identical(other.pageSize, pageSize) ||
                other.pageSize == pageSize) &&
            (identical(other.paged, paged) || other.paged == paged) &&
            (identical(other.pageNumber, pageNumber) ||
                other.pageNumber == pageNumber) &&
            (identical(other.offset, offset) || other.offset == offset) &&
            (identical(other.sort, sort) || other.sort == sort));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, unpaged, pageSize, paged, pageNumber, offset, sort);

  /// Create a copy of Pageable
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PageableImplCopyWith<_$PageableImpl> get copyWith =>
      __$$PageableImplCopyWithImpl<_$PageableImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PageableImplToJson(
      this,
    );
  }
}

abstract class _Pageable implements Pageable {
  const factory _Pageable(
      {required final bool unpaged,
      required final int pageSize,
      required final bool paged,
      required final int pageNumber,
      required final int offset,
      required final Sort sort}) = _$PageableImpl;

  factory _Pageable.fromJson(Map<String, dynamic> json) =
      _$PageableImpl.fromJson;

  @override
  bool get unpaged;
  @override
  int get pageSize;
  @override
  bool get paged;
  @override
  int get pageNumber;
  @override
  int get offset;
  @override
  Sort get sort;

  /// Create a copy of Pageable
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PageableImplCopyWith<_$PageableImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Sort _$SortFromJson(Map<String, dynamic> json) {
  return _Sort.fromJson(json);
}

/// @nodoc
mixin _$Sort {
  bool get empty => throw _privateConstructorUsedError;
  bool get unsorted => throw _privateConstructorUsedError;
  bool get sorted => throw _privateConstructorUsedError;

  /// Serializes this Sort to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Sort
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SortCopyWith<Sort> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SortCopyWith<$Res> {
  factory $SortCopyWith(Sort value, $Res Function(Sort) then) =
      _$SortCopyWithImpl<$Res, Sort>;
  @useResult
  $Res call({bool empty, bool unsorted, bool sorted});
}

/// @nodoc
class _$SortCopyWithImpl<$Res, $Val extends Sort>
    implements $SortCopyWith<$Res> {
  _$SortCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Sort
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? empty = null,
    Object? unsorted = null,
    Object? sorted = null,
  }) {
    return _then(_value.copyWith(
      empty: null == empty
          ? _value.empty
          : empty // ignore: cast_nullable_to_non_nullable
              as bool,
      unsorted: null == unsorted
          ? _value.unsorted
          : unsorted // ignore: cast_nullable_to_non_nullable
              as bool,
      sorted: null == sorted
          ? _value.sorted
          : sorted // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SortImplCopyWith<$Res> implements $SortCopyWith<$Res> {
  factory _$$SortImplCopyWith(
          _$SortImpl value, $Res Function(_$SortImpl) then) =
      __$$SortImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool empty, bool unsorted, bool sorted});
}

/// @nodoc
class __$$SortImplCopyWithImpl<$Res>
    extends _$SortCopyWithImpl<$Res, _$SortImpl>
    implements _$$SortImplCopyWith<$Res> {
  __$$SortImplCopyWithImpl(_$SortImpl _value, $Res Function(_$SortImpl) _then)
      : super(_value, _then);

  /// Create a copy of Sort
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? empty = null,
    Object? unsorted = null,
    Object? sorted = null,
  }) {
    return _then(_$SortImpl(
      empty: null == empty
          ? _value.empty
          : empty // ignore: cast_nullable_to_non_nullable
              as bool,
      unsorted: null == unsorted
          ? _value.unsorted
          : unsorted // ignore: cast_nullable_to_non_nullable
              as bool,
      sorted: null == sorted
          ? _value.sorted
          : sorted // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SortImpl implements _Sort {
  const _$SortImpl(
      {required this.empty, required this.unsorted, required this.sorted});

  factory _$SortImpl.fromJson(Map<String, dynamic> json) =>
      _$$SortImplFromJson(json);

  @override
  final bool empty;
  @override
  final bool unsorted;
  @override
  final bool sorted;

  @override
  String toString() {
    return 'Sort(empty: $empty, unsorted: $unsorted, sorted: $sorted)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SortImpl &&
            (identical(other.empty, empty) || other.empty == empty) &&
            (identical(other.unsorted, unsorted) ||
                other.unsorted == unsorted) &&
            (identical(other.sorted, sorted) || other.sorted == sorted));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, empty, unsorted, sorted);

  /// Create a copy of Sort
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SortImplCopyWith<_$SortImpl> get copyWith =>
      __$$SortImplCopyWithImpl<_$SortImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SortImplToJson(
      this,
    );
  }
}

abstract class _Sort implements Sort {
  const factory _Sort(
      {required final bool empty,
      required final bool unsorted,
      required final bool sorted}) = _$SortImpl;

  factory _Sort.fromJson(Map<String, dynamic> json) = _$SortImpl.fromJson;

  @override
  bool get empty;
  @override
  bool get unsorted;
  @override
  bool get sorted;

  /// Create a copy of Sort
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SortImplCopyWith<_$SortImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
