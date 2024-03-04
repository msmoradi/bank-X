import 'package:banx/core/data/datasource/remote/card_remote_datasource.dart';
import 'package:banx/core/data/model/empty_response_dto.dart';
import 'package:banx/core/data/model/request/card/card_orders_request_dto.dart';
import 'package:banx/core/data/model/response/card/card_shipping_time_slots_response_dto.dart';
import 'package:banx/core/data/model/response/card/card_types_response_dto.dart';
import 'package:banx/core/networking/api_endpoints.dart';
import 'package:banx/core/networking/http_client.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: CardRemoteDataSource)
class CardRemoteDataSourceImpl extends CardRemoteDataSource {
  final HTTPClient apiService;

  CardRemoteDataSourceImpl({required this.apiService});

  @override
  Future<EmptyResponseDto> orders({
    required int addressId,
    required int typeId,
    required int cardShippingTimeSlotId,
  }) {
    final dataRequest = CardOrdersRequestDto(
            addressId: addressId,
            typeId: typeId,
            cardShippingTimeSlotId: cardShippingTimeSlotId)
        .toJson();

    return apiService.post(
      endpoint: ApiEndpoint.card(CardEndpoint.ORDERS),
      data: dataRequest,
      mapper: (_) {
        return EmptyResponseDto.empty();
      },
    );
  }

  @override
  Future<CardShippingTimeSlotsResponseDto> shippingTimeSlots() {
    return apiService.get(
      endpoint: ApiEndpoint.card(CardEndpoint.SHIPPING_TIME_SLOTS),
      mapper: CardShippingTimeSlotsResponseDto.fromJson,
    );
  }

  @override
  Future<CardTypesResponseDto> types() {
    return apiService.get(
      endpoint: ApiEndpoint.card(CardEndpoint.TYPES),
      mapper: CardTypesResponseDto.fromJson,
    );
  }
}
