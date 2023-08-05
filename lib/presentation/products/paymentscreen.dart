import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:project2/constents/apikey.dart';
import 'package:razorpay_flutter/razorpay_flutter.dart';

class PaymentScreen extends StatelessWidget {
  const PaymentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('payment'),
      ),
      body: Column(children: [
        Center(
          child: IconButton(
              onPressed: () {
                Razorpay razorpay = Razorpay();
                var options = {
                  'key': apikey,
                  'amount': 100,
                  'timeout': 120,
                  'name': 'Abdu Saleem',
                  'description': 'Fine T-Shirt',
                  'retry': {'enabled': false, 'max_count': 0},
                  'send_sms_hash': true,
                  'prefill': {
                    'contact': '1234567890',
                    'email': 'saleemsaly8@gmail.com'
                  },
                };
                razorpay.open(options);
              },
              icon: const Icon(FontAwesomeIcons.paypal)),
        )
      ]),
    );
  }
}
