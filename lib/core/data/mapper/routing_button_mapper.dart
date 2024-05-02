import 'package:banx/core/data/model/response/routing_button_dto.dart';
import 'package:banx/core/domain/entities/routing_button_entity.dart';

extension RoutingButtonMapper on RoutingButtonDto {
  RoutingButtonEntity toEntity() {
    return RoutingButtonEntity(
      deeplink: deeplink,
      title: title,
    );
  }
}
