import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:project2/constents/apikey.dart';
import 'package:project2/domain/models/product/productmodel.dart';
import 'package:razorpay_flutter/razorpay_flutter.dart';

part 'paymentcubit_state.dart';
part 'paymentcubit_cubit.freezed.dart';

class PaymentcubitCubit extends Cubit<PaymentcubitState> {
  PaymentcubitCubit() : super(PaymentcubitState.initial());

  void submitpayent(
    ProductModel product,
    int itemcount,
    String address,
    String paymentmethod,
    num total,
  ) {
    User user = FirebaseAuth.instance.currentUser!;

    Razorpay razorpay = Razorpay();
    var options = {
      'key': apikey,
      'amount': total.toInt() * 100,
      'timeout': 120,
      'name': 'Serveasy',
      'description': product.name,
      'retry': {'enabled': true, 'max_count': 1},
      'send_sms_hash': true,
      'prefill': {'contact': user.displayName, 'email': user.email},
    };
    razorpay.open(options);
    razorpay.on(Razorpay.EVENT_PAYMENT_SUCCESS, handlePaymentSuccessResponse);
    razorpay.on(Razorpay.EVENT_PAYMENT_ERROR, handlePaymentErrorResponse);
  }

  void handlePaymentErrorResponse(PaymentFailureResponse response) {
    emit(const PaymentcubitState.paymentFailedState());
    log(' "Payment Failed", "Code: ${response.code}\nDescription: ${response.message}\nMetadata:${response.error.toString()}"');
  }

  void handlePaymentSuccessResponse(PaymentSuccessResponse response) {
    emit(PaymentcubitState.paymentSuccessState(paymentid: response.paymentId!));
    log(' "Payment Successful", "Payment ID: ${response.paymentId}"');
  }

  void handleExternalWalletSelected(ExternalWalletResponse response) {
    log(' "External Wallet Selected", "${response.walletName}"');
  }
}
