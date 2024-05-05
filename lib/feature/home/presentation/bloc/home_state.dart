import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_state.freezed.dart';

enum HomeStatus { initial }

@freezed
class HomeState with _$HomeState {
  const factory HomeState({
    @Default(HomeStatus.initial) HomeStatus status,
    @Default(false) bool needNfc,
    @Default(false) bool isLoading,
  }) = _HomeState;
}
