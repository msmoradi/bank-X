import 'package:banx/core/data/mapper/routing_button_mapper.dart';
import 'package:banx/core/data/model/response/kyc_response_dto.dart';
import 'package:banx/core/domain/entities/kyc_state_entity.dart';
import 'package:banx/core/domain/entities/kyc_status_entity.dart';

extension KycResponseMapper on KycResponseDto {
  KycStateEntity toEntity() {
    return KycStateEntity(
        routingButton: routingButton.toEntity(),
        state: StateEntity(
          identity: state.identityStatus.toEntity(),
          phoneNumber: state.phoneStatus.toEntity(),
          face: state.faceStatus.toEntity(),
          sayah: state.sayahStatus.toEntity(),
        ));
  }
}

extension KYCStatusMapper on KYCStatusDto {
  KYCStatusEntity toEntity() {
    return KYCStatusEntity(
      status: status,
      title: title,
      description: description,
    );
  }
}
