part of 'choicechips_cubit.dart';

@freezed
class ChoicechipsState with _$ChoicechipsState {
  const factory ChoicechipsState({required bool isService}) = _ChoicechipsState;

  factory ChoicechipsState.initial() => const ChoicechipsState(isService: true);
}
