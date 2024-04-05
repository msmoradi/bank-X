import 'package:banx/core/domain/entities/address_entity.dart';
import 'package:banx/feature/check_postal_code/presentation/view/check_postal_code_content.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

import '../bloc/check_postal_code_bloc.dart';

class CheckPostalCodePage extends StatelessWidget {
  final Function(AddressEntity) onAddAddress;
  final Function(String) showMessage;

  const CheckPostalCodePage({
    super.key,
    required this.onAddAddress,
    required this.showMessage,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => GetIt.instance<CheckPostalCodeBloc>(),
      child: BlocConsumer<CheckPostalCodeBloc, CheckPostalCodeState>(
        listener: (context, state) {
          if (state is CheckPostalCodeFailure) {
            showMessage(state.message);
          } else if (state is AddAddress) {
            onAddAddress(state.address);
          }
        },
        builder: (context, state) {
          return CheckPostalCodeContent(
            showLoading: state is CheckPostalCodeInProgress,
          );
        },
      ),
    );
  }
}
