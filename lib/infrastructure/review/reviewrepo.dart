import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:injectable/injectable.dart';
import 'package:project2/domain/failures/mainfailure.dart';
import 'package:project2/domain/models/review/reviewmodel.dart';
import 'package:project2/domain/repos/ireviewrepo.dart';

@LazySingleton(as: IReviewRepo)
class ReviewRepo implements IReviewRepo {
  @override
  Future<Either<MainFailures, List<ReviewModel>>> getallreviews() async {
    try {
      FirebaseFirestore firestore = FirebaseFirestore.instance;
      log('1');
      final snapshot = await firestore.collection('reviews').get();

      List<ReviewModel> reviewlist = snapshot.docs.map((doc) {
        // log(doc.data()['imageurl']);
        return ReviewModel.fromJson(doc.data());
      }).toList();
      // log('${reviewlist[0].imageurls
      return right(reviewlist);
    } catch (e) {
      return left(const MainFailures.clientfailure());
    }
  }

  @override
  Future<Either<MainFailures, String>> sendaReview(
      ReviewModel review, int id) async {
    try {
      FirebaseFirestore firestore = FirebaseFirestore.instance;
      final useruid = FirebaseAuth.instance.currentUser!.uid;
      final useremail = FirebaseAuth.instance.currentUser!.email;
      final bookingref = await firestore
          .collection('Service-Bookings')
          .doc(useremail)
          .collection('Booked')
          .get();
      final userdoc = await firestore.collection('users').doc(useruid).get();
      final username = userdoc.data()!['name'];
      final imageurl = userdoc.data()!['profileimage'];

      ReviewModel freview = ReviewModel(
          username, review.review, review.starrating, review.date, imageurl);

      firestore.collection('reviews').add(freview.toJson());
      for (var item in bookingref.docs) {
        if (item['id'] == id) {
          await item.reference.update({'isreviewadded': true});
          return right('uploaded');
        }
        return left(const MainFailures.clientfailure());
      }
      return left(const MainFailures.clientfailure());
    } catch (e) {
      return left(const MainFailures.clientfailure());
    }
  }
}
