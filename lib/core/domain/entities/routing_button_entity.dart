import 'package:banx/core/domain/entities/entity.dart';

class RoutingButtonEntity extends Entity {
  final String deeplink;
  final String title;

  RoutingButtonEntity({required this.deeplink, required this.title});
}
