import 'package:banx/feature/identity/presentation/view/identity_form.dart';
import 'package:flutter/material.dart';

import '../bloc/identity_bloc.dart';

class IdentityContent extends StatelessWidget {
  final IdentityState state;
  final String phoneNumber;
  final bool needReferralCode;

  const IdentityContent({
    super.key,
    required this.state,
    required this.phoneNumber,
    required this.needReferralCode,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        automaticallyImplyLeading: false,
        title: const Text("اطلاعات هویتی"),
        titleTextStyle: Theme.of(context).textTheme.headlineMedium,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: IdentityForm(
            phoneNumber: phoneNumber,
            needReferralCode: needReferralCode,
            showLoading: state is IdentityInProgress,
          ),
        ),
      ),
    );
  }
}
