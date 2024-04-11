import 'package:banx/core/designsystem/widgets/components/drop_down_chip_widget.dart';
import 'package:banx/core/domain/entities/transaction_time.dart';
import 'package:banx/feature/transaction_destination/presentation/view/transaction_destination_content.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'transaction_checkout_state.freezed.dart';

enum TransactionCheckoutStatus { initial, failure, loading }

@freezed
class TransactionCheckoutState with _$TransactionCheckoutState {
  const TransactionCheckoutState._();

  const factory TransactionCheckoutState({
    @Default(TransactionCheckoutStatus.initial)
    TransactionCheckoutStatus status,
    @Default('') String errorMessage,
    @Default(false) bool buttonLoading,
    @Default(DepositType.rialDeposit) DepositType sourceDepositType,
    UserInfo? sourceUserInfo,
    @Default(DepositType.rialDeposit) DepositType destinationDepositType,
    UserInfo? destinationUserInfo,
  }) = _TransactionCheckoutState;

  bool get conversionFee => sourceDepositType != destinationDepositType;

  List<TransactionTime> get transactionTimes =>
      sourceDepositType == DepositType.rialDeposit &&
              destinationDepositType == DepositType.rialDeposit
          ? [
              TransactionTime(
                title: 'در لحظه (کارت به کارت)',
                subtitle: 'کارمزد: ۲۱٬۲۰۰ ریالء',
              ),
              TransactionTime(
                title: 'امروز ~ ۱۹:۴۵ (پایا)',
                subtitle: 'کارمزد: ۵٬۴۶۰ ریالء',
              )
            ]
          : [
              TransactionTime(
                title: 'در لحظه',
                subtitle: 'کارمزد: ۲۱٬۲۰۰ ریالء',
              )
            ];
}
