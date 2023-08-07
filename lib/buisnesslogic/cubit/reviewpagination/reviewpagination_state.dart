part of 'reviewpagination_cubit.dart';

@freezed
class ReviewpaginationState with _$ReviewpaginationState {
  const factory ReviewpaginationState(
      {required List<ReviewModel> reviewlist,
      required bool isloading}) = _ReviewpaginationState;

  factory ReviewpaginationState.initial() =>
      const ReviewpaginationState(reviewlist: [], isloading: false);
}
