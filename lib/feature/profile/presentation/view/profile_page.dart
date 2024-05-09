import 'package:banx/feature/profile/presentation/bloc/profile_bloc.dart';
import 'package:banx/feature/profile/presentation/bloc/profile_state.dart';
import 'package:banx/feature/profile/presentation/view/profile_content.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

class ProfilePage extends StatelessWidget {
  final Function(String) showMessage;
  final VoidCallback logout;

  const ProfilePage({
    super.key,
    required this.showMessage,
    required this.logout,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => GetIt.instance<ProfileBloc>(),
      child: BlocConsumer<ProfileBloc, ProfileState>(
        listener: (context, state) {
          if (state.status == ProfileStatus.failure) {
            showMessage(state.errorMessage);
          } else if (state.status == ProfileStatus.logOut) {
            logout();
          }
        },
        builder: (context, state) {
          return ProfileContent(
            userProfile: state.userProfile,
            fullName: state.fullName,
            userName: state.userName,
            nfcActive: state.nfcActive,
            showLoading: state.showLoading,
            onNFCSwitchChange: () {
              context.read<ProfileBloc>().add(NFCSwitchChange());
            },
            onExitClick: () {
              context.read<ProfileBloc>().add(ExitClick());
            },
          );
        },
      ),
    );
  }
}
