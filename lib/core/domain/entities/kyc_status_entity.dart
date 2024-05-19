import 'package:banx/core/data/model/response/kyc_response_dto.dart';
import 'package:banx/core/domain/entities/entity.dart';

class KYCStatusEntity extends Entity {
  final KYCStatus status;
  final String title;
  final String description;

  const KYCStatusEntity({
    this.status = KYCStatus.pending,
    this.title = "",
    this.description = "",
  }) : super();
}
