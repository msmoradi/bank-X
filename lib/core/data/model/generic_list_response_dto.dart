import 'package:freezed_annotation/freezed_annotation.dart';

part 'generic_list_response_dto.freezed.dart';
part 'generic_list_response_dto.g.dart';

@Freezed(genericArgumentFactories: true)
class GenericListResponseDto<T> with _$GenericListResponseDto<T> {
  const factory GenericListResponseDto({
    required int totalPages,
    required int totalElements,
    required Pageable pageable,
    required bool first,
    required bool last,
    required int numberOfElements,
    required int size,
    required List<T> content,
    required int number,
    required Sort sort,
    required bool empty,
  }) = _GenericListResponseDto<T>;

  factory GenericListResponseDto.fromJson(
      Map<String, dynamic> json, T Function(Object?) fromJsonT) =>
      _$GenericListResponseDtoFromJson(json, fromJsonT);
}

@freezed
class Pageable with _$Pageable {
  const factory Pageable({
    required bool unpaged,
    required int pageSize,
    required bool paged,
    required int pageNumber,
    required int offset,
    required Sort sort,
  }) = _Pageable;

  factory Pageable.fromJson(Map<String, dynamic> json) =>
      _$PageableFromJson(json);
}

@freezed
class Sort with _$Sort {
  const factory Sort({
    required bool empty,
    required bool unsorted,
    required bool sorted,
  }) = _Sort;

  factory Sort.fromJson(Map<String, dynamic> json) => _$SortFromJson(json);
}