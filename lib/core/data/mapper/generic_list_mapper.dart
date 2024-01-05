import 'package:banx/core/data/model/generic_list_response_dto.dart';
import 'package:banx/core/domain/entities/entity.dart';
import 'package:banx/core/domain/entities/generic_list_entity.dart';

extension GenericListResponseDtoMapper<T> on GenericListResponseDto<T> {
  GenericListEntity<R> toEntity<R extends Entity>(R Function(T) contentMapper) {
    return GenericListEntity<R>(
      totalPages: totalPages,
      totalElements: totalElements,
      pageable: pageable.toEntity(),
      first: first,
      last: last,
      numberOfElements: numberOfElements,
      size: size,
      content: content.map(contentMapper).toList(),
      number: number,
      sort: sort.toEntity(),
      empty: empty,
    );
  }
}

extension PageableMapper on Pageable {
  PageableEntity toEntity() {
    return PageableEntity(
      unpaged: unpaged,
      pageSize: pageSize,
      paged: paged,
      pageNumber: pageNumber,
      offset: offset,
      sort: sort.toEntity(),
    );
  }
}

extension SortMapper on Sort {
  SortEntity toEntity() {
    return SortEntity(
      empty: empty,
      unsorted: unsorted,
      sorted: sorted,
    );
  }
}
