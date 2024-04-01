import 'package:banx/core/data/datasource/remote/address_remote_datasource.dart';
import 'package:banx/core/data/model/address_dto.dart';
import 'package:banx/core/data/model/empty_response_dto.dart';
import 'package:banx/core/data/model/generic_list_response_dto.dart';
import 'package:banx/core/data/model/get_inquiry_response_dto.dart';
import 'package:banx/core/data/model/request/get_address_request_dto.dart';
import 'package:banx/core/data/model/request/get_inquiry_request_dto.dart';
import 'package:banx/core/data/model/request/post_address_request_dto.dart';
import 'package:banx/core/networking/api_endpoints.dart';
import 'package:banx/core/networking/http_client.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:persian_number_utility/persian_number_utility.dart';

@LazySingleton(as: AddressRemoteDataSource)
class AddressRemoteDataSourceImpl extends AddressRemoteDataSource {
  final HTTPClient apiService;

  AddressRemoteDataSourceImpl({required this.apiService});

  @override
  Future<GenericListResponseDto<AddressDto>> getAddress() {
    final requestParameters = const GetAddressRequestDto(
      page: 0,
      size: 1,
      sort: ["id,desc"],
    ).toJson();

    return apiService.get(
      endpoint: ApiEndpoint.address(AddressEndpoint.ADDRESS),
      queryParameters: requestParameters,
      mapper: (responseBody) {
        return GenericListResponseDto<AddressDto>.fromJson(
          responseBody,
          (json) => AddressDto.fromJson(json as Map<String, dynamic>),
        );
      },
    );
  }

  @override
  Future<GetInquiryResponseDto> postAddress({
    required AddressDto addressDto,
  }) {
    final dataRequest = PostAddressRequestDto(
      postalCode: addressDto.postalCode.toEnglishDigit(),
      address: addressDto.address,
      region: addressDto.region,
      street: addressDto.street,
      plaque: addressDto.plaque.toEnglishDigit(),
      floor: addressDto.floor.toEnglishDigit(),
      unit: addressDto.unit.toEnglishDigit(),
      houseName: addressDto.houseName,
      cityId: addressDto.city.id,
      provinceId: addressDto.province.id,
    ).toJson();

    return apiService.post(
      endpoint: ApiEndpoint.address(AddressEndpoint.ADDRESS),
      data: dataRequest,
      mapper: (response) {
        if (response != null) {
          return GetInquiryResponseDto.fromJson(response);
        }
        throw NotNullableError('add address response should not be null');
      },
    );
  }

  @override
  Future<GetInquiryResponseDto> getInquiry({required String postalCode}) {
    final requestParameters = GetInquiryRequestDto(
      postalCode: postalCode.toEnglishDigit(),
    ).toJson();

    return apiService.get(
      endpoint: ApiEndpoint.address(AddressEndpoint.INQUIRY),
      queryParameters: requestParameters,
      mapper: GetInquiryResponseDto.fromJson,
    );
  }

  @override
  Future<EmptyResponseDto> putAddress() {
    final body = {
      'password': "",
    };

    return apiService.put(
      endpoint: ApiEndpoint.address(AddressEndpoint.ADDRESS),
      data: body,
      mapper: (_) {
        return EmptyResponseDto.empty();
      },
    );
  }

  @override
  Future<EmptyResponseDto> getCities() {
    // TODO: implement getCities
    throw UnimplementedError();
  }

  @override
  Future<EmptyResponseDto> getStates() {
    // TODO: implement getStates
    throw UnimplementedError();
  }
}
