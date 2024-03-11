
import 'package:freezed_annotation/freezed_annotation.dart';

part 'card_delivery_time_state.freezed.dart';

enum CardDeliveryTimeStatus { initial, failure, loading, deepLinkLanding }

@freezed
class CardDeliveryTimeState with _$CardDeliveryTimeState {
  const factory CardDeliveryTimeState({
    @Default(CardDeliveryTimeStatus.initial) CardDeliveryTimeStatus status,
    @Default('') String errorMessage,
    @Default('') String deeplink,
  }) = _CardDeliveryTimeState;
}

