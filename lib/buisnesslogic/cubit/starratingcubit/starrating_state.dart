part of 'starrating_cubit.dart';

@freezed
class StarratingState with _$StarratingState {
  const factory StarratingState({required int rating}) = _StarratingState;
  factory StarratingState.initial() => const StarratingState(rating: 1);
}
