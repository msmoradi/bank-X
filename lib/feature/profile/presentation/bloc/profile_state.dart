import 'package:freezed_annotation/freezed_annotation.dart';

part 'profile_state.freezed.dart';

enum ProfileStatus { initial, logOut, failure }

@freezed
class ProfileState with _$ProfileState {
  const factory ProfileState({
    @Default(ProfileStatus.initial) ProfileStatus status,
    @Default('https://i.pravatar.cc/150') String userProfile,
    @Default('') String errorMessage,
    @Default('کاربر نمونه') String fullName,
    @Default('@sample_user') String userName,
    @Default(false) bool nfcActive,
    @Default(false) bool showLoading,
  }) = _ProfileState;
}
