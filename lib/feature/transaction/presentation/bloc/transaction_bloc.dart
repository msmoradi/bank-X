import 'package:banx/core/designsystem/widgets/components/drop_down_chip_widget.dart';
import 'package:banx/feature/transaction/presentation/bloc/transaction_state.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:persian_number_utility/persian_number_utility.dart';

part 'transaction_event.dart';

@injectable
class TransactionBloc extends Bloc<TransactionEvent, TransactionState> {
  TransactionBloc()
      : super(const TransactionState(status: TransactionStatus.loading)) {
    on<SelectTypeEvent>(_onSelectType);
    on<AddValueEvent>(_onAddValue);
    on<RemoveValueEvent>(_onRemoveValue);
  }

  void _onSelectType(SelectTypeEvent event, Emitter<TransactionState> emit) {
    if (state.selectedType != event.selectedType) {
      emit(state.copyWith(value: '', selectedType: event.selectedType));
    }
  }

  void _onAddValue(AddValueEvent event, Emitter<TransactionState> emit) {
    final currentValue = state.value;
    final isRialDeposit = state.selectedType == DepositType.rialDeposit;

    if (_isInvalidDecimal(event, currentValue, isRialDeposit) ||
        _exceedsMaxLength(currentValue, event.key)) {
      return;
    }

    final updatedValue = currentValue + event.key;
    final formattedValue = _formatWithCommas(updatedValue);

    if (formattedValue != currentValue) {
      emit(state.copyWith(value: formattedValue));
    }
  }

  bool _isInvalidDecimal(AddValueEvent event, String currentValue, bool isRialDeposit) {
    return (event.key == '.' && (isRialDeposit || currentValue.contains('.')));
  }

  bool _exceedsMaxLength(String currentValue, String key) {
    return (currentValue + key).length > 13;
  }

  void _onRemoveValue(RemoveValueEvent event, Emitter<TransactionState> emit) {
    final currentValue = state.value;
    if (currentValue.isNotEmpty) {
      final updatedValue = currentValue.substring(0, currentValue.length - 1);
      final formattedValue = _formatWithCommas(updatedValue);

      if (formattedValue != state.value) {
        emit(state.copyWith(value: formattedValue));
      }
    }
  }

  String _formatWithCommas(String value) {
    String numericValue = value.replaceAll(',', '');
    if (numericValue.isEmpty) return '';

    if (numericValue.contains('.')) {
      List<String> parts = numericValue.split('.');
      String formattedIntPart = parts[0].seRagham();
      return parts.length > 1
          ? '$formattedIntPart.${parts[1]}'
          : formattedIntPart;
    } else {
      return numericValue.seRagham();
    }
  }
}
