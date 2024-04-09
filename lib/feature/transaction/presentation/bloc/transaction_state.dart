import 'package:banx/core/designsystem/widgets/components/drop_down_chip_widget.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'transaction_state.freezed.dart';

enum TransactionStatus { initial, failure, loading, deepLinkLanding }

@freezed
class TransactionState with _$TransactionState {
  const factory TransactionState({
    @Default(TransactionStatus.initial) TransactionStatus status,
    @Default('') String errorMessage,
    @Default('') String deeplink,
    @Default(false) bool showBiometric,
    @Default('') String name,
    @Default('') String value,
    @Default(DepositType.rialDeposit) DepositType selectedType,
  }) = _TransactionState;
}
