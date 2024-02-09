import 'package:banx/feature/kyc_status/presentation/bloc/kyc_status_bloc.dart';
import 'package:banx/feature/kyc_status/presentation/bloc/kyc_status_state.dart';
import 'package:banx/feature/kyc_status/presentation/view/kyc_status_content.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

class KycStatusPage extends StatelessWidget {
  final Function(String) showMessage;
  final Function(String) onDeeplinkLanding;

  const KycStatusPage({
    super.key,
    required this.onDeeplinkLanding,
    required this.showMessage,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => GetIt.instance<KycStatusBloc>(),
      child: BlocConsumer<KycStatusBloc, KycStatusState>(
        listener: (context, state) {
          if (state.status == KycStatusStatus.failure) {
            showMessage(state.errorMessage);
          } else if (state.status == KycStatusStatus.deepLinkLanding) {
            if (state.deeplink != null) {
              onDeeplinkLanding(state.deeplink!);
            }
          }
        },
        builder: (context, state) {
          return KycStatusContent(
            showLoading: state.status == KycStatusStatus.loading,
            onActionClick: () {
              context.read<KycStatusBloc>().add(const ActionClicked());
            },
            showMessage: showMessage,
            actionTitle: state.actionTitle,
            actionIcon: state.actionIcon,
            iconAlignment: state.iconAlignment,
            identity: state.identity,
            phoneNumber: state.phoneNumber,
            face: state.face,
            sayah: state.sayah,
          );
        },
      ),
    );
  }
}
