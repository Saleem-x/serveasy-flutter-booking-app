import 'package:dartz/dartz.dart';
import 'package:project2/domain/failures/mainfailure.dart';
import 'package:project2/domain/models/review/reviewmodel.dart';

abstract class IReviewRepo {
  Future<Either<MainFailures, List<ReviewModel>>> getallreviews();
  Future<Either<MainFailures, String>> sendaReview(ReviewModel review, int id);
}
