import 'package:banx/feature/identity/presentation/view/identity_form.dart';
import 'package:banx/feature/identity_correction/presentation/view/identity_correction_form.dart';
import 'package:flutter/material.dart';

import '../bloc/identity_correction_bloc.dart';

class  IdentityCorrectionContent extends StatelessWidget {
  final  IdentityCorrectionState state;
  final String phoneNumber;

  const  IdentityCorrectionContent({
    super.key,
    required this.state,
    required this.phoneNumber,
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
          child:  IdentityCorrectionForm(
            phoneNumber: phoneNumber,
            showLoading: state is  IdentityCorrectionInProgress,
          ),
        ),
      ),
    );
  }
}
