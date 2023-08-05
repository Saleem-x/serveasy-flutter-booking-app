import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:project2/domain/failures/mainfailure.dart';
import 'package:project2/domain/models/review/reviewmodel.dart';
import 'package:project2/domain/repos/ireviewrepo.dart';

part 'reviewbloc_event.dart';
part 'reviewbloc_state.dart';
part 'reviewbloc_bloc.freezed.dart';

@injectable
class ReviewblocBloc extends Bloc<ReviewblocEvent, ReviewblocState> {
  final IReviewRepo iReviewRepo;
  ReviewblocBloc(this.iReviewRepo) : super(ReviewblocState.initial()) {
    on<SendReview>((event, emit) async {
      Either<MainFailures, String> sendreview =
          await iReviewRepo.sendaReview(event.review, event.id);
      emit(
        sendreview.fold(
          (l) => const ReviewblocState.failedstate(),
          (r) => const ReviewblocState.successState(),
        ),
      );
    });
    on<GetallReviews>((event, emit) async {
      Either<MainFailures, List<ReviewModel>> reviewlist =
          await iReviewRepo.getallreviews();
      log(reviewlist.length().toString());
      emit(
        reviewlist.fold(
          (l) => const ReviewblocState.failedstate(),
          (r) => ReviewblocState(reviewlist: r),
        ),
      );
    });
  }
}
