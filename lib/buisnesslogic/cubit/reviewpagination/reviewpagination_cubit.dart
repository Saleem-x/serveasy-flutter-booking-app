import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:project2/domain/models/review/reviewmodel.dart';

part 'reviewpagination_state.dart';
part 'reviewpagination_cubit.freezed.dart';

class ReviewpaginationCubit extends Cubit<ReviewpaginationState> {
  ReviewpaginationCubit() : super(ReviewpaginationState.initial());

  getalist() async {
    emit(state.copyWith(isloading: true));
    FirebaseFirestore firestore = FirebaseFirestore.instance;
    final snapshot = await firestore.collection('reviews').get();

    List<ReviewModel> reviewlist = snapshot.docs.map((doc) {
      // log(doc.data()['imageurl']);
      return ReviewModel.fromJson(doc.data());
    }).toList();

    List<ReviewModel> listtosend =
        reviewlist.length < 6 ? reviewlist : reviewlist;

    emit(ReviewpaginationState(reviewlist: reviewlist, isloading: false));
  }
}
