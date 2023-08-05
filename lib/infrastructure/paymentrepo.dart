import 'package:project2/constents/apikey.dart';
import 'package:razorpay_flutter/razorpay_flutter.dart';

class PaymentRepo {
  sendpayment() {
    Razorpay razorpay = Razorpay();
    var options = {
      'key': apikey,
      'amount': 100,
      'name': 'Acme Corp.',
      'description': 'Fine T-Shirt',
      'retry': {'enabled': true, 'max_count': 1},
      'send_sms_hash': true,
      'prefill': {'contact': '8888888888', 'email': 'test@razorpay.com'},
      'external': {
        'wallets': ['paytm']
      }
    };
  }
}
