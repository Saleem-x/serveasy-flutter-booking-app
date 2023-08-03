part of 'reviewbloc_bloc.dart';

@freezed
class ReviewblocState with _$ReviewblocState {
  const factory ReviewblocState({required List<ReviewModel>? reviewlist}) =
      _ReviewblocState;
  const factory ReviewblocState.loadingState() = LoadingState;
  const factory ReviewblocState.successState() = SuccessState;
  const factory ReviewblocState.failedstate() = Failedstate;

  factory ReviewblocState.initial() => const ReviewblocState(reviewlist: null);
}
