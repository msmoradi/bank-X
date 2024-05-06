import 'package:banx/core/data/mock.dart';
import 'package:banx/core/designsystem/widgets/components/bank_transaction_icon.dart';
import 'package:banx/core/domain/entities/card_delivery_entity.dart';
import 'package:banx/core/domain/entities/transaction_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'bank_state.freezed.dart';

enum BankStatus { initial, success, failure, loading, cardActivation }

enum BankCardStatus {
  ordered, // سفارش داده شده
  issued, // صادر شده
  delivered, // تحویل شده
  activated, // فعال شده
  frozen // فریز شده
}

@freezed
class BankState with _$BankState {
  const BankState._();

  const factory BankState({
    required BankStatus status,
    required BankCardStatus bankCardStatus,
    @Default([]) List<TransactionModel> transactions,
    required String errorMessage,
  }) = _BankState;

  bool get showCardDeliveryButton {
    return bankCardStatus != BankCardStatus.ordered &&
        bankCardStatus != BankCardStatus.activated;
  }

  bool get showCardDeliveryContainer {
    return bankCardStatus != BankCardStatus.activated;
  }

  String get cardDeliveryActionTitle {
    // Example logic to set the action title based on bankCardStatus
    switch (bankCardStatus) {
      case BankCardStatus.issued:
        return 'پیگیری مرسوله';
      case BankCardStatus.delivered:
        return 'فعال‌سازی کارت';
      case BankCardStatus.activated:
        return 'کارت خود را فعال کنید';
      default:
        return '';
    }
  }

  String get cardDeliveryActionAssetPath {
    // Example logic to set the asset path based on bankCardStatus
    switch (bankCardStatus) {
      case BankCardStatus.issued:
        return 'assets/icons/delivery-fast.svg';
      case BankCardStatus.delivered:
        return 'assets/icons/check-circle.svg';
      case BankCardStatus.frozen:
        return 'assets/icons/check-circle.svg';
      default:
        return '';
    }
  }

  String get cardFrontPath {
    return bankCardStatus == BankCardStatus.activated
        ? 'assets/images/banx-card-active-balance.png'
        : 'assets/images/banx-card-deactive-balance.png';
  }

  CardDeliveryEntity get cardDeliveryEntity {
    return CardDeliveryEntity(
      cardOrder: CardDeliveryStatusEntity(
        title: 'سفارش کارت',
        subtitle: '۲۹ فروردین',
        isPassed: true,
      ),
      cardIssuance: CardDeliveryStatusEntity(
        title: 'صدور کارت',
        subtitle: '۱ اردیبهشت',
        isPassed: bankCardStatus == BankCardStatus.issued ||
            bankCardStatus == BankCardStatus.delivered,
      ),
      cardDelivery: CardDeliveryStatusEntity(
          title: 'تحویل کارت',
          subtitle: '۳ تا ۵ اردیبهشت',
          isPassed: bankCardStatus == BankCardStatus.delivered),
    );
  }
}
