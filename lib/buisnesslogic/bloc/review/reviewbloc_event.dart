part of 'reviewbloc_bloc.dart';

@freezed
class ReviewblocEvent with _$ReviewblocEvent {
  const factory ReviewblocEvent.sendReview(
      {required ReviewModel review, required int id}) = SendReview;

  const factory ReviewblocEvent.getallReviews() = GetallReviews;
}
