import 'package:freezed_annotation/freezed_annotation.dart';

part 'splash_state.freezed.dart';

enum SplashStatus { initial, loading, verifyPassword, phone , failure}

@freezed
class SplashState with _$SplashState {
  const factory SplashState({
    @Default(SplashStatus.initial) SplashStatus status,
    @Default('') String errorMessage,
  }) = _SplashState;
}
