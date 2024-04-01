import 'package:banx/core/data/model/address_dto.dart';
import 'package:banx/core/data/model/empty_response_dto.dart';
import 'package:banx/core/data/model/generic_list_response_dto.dart';
import 'package:banx/core/data/model/get_inquiry_response_dto.dart';

abstract class AddressRemoteDataSource {
  Future<GenericListResponseDto<AddressDto>> getAddress();

  Future<GetInquiryResponseDto> postAddress({
    required AddressDto addressDto,
  });

  Future<EmptyResponseDto> putAddress();

  Future<EmptyResponseDto> getStates();

  Future<GetInquiryResponseDto> getInquiry({required String postalCode});

  Future<EmptyResponseDto> getCities();
}
