import 'package:firebase_app_check/firebase_app_check.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project2/bloc/accountinfo/accountinfo_bloc.dart';
import 'package:project2/bloc/address/address_bloc.dart';
import 'package:project2/bloc/bottomnavbar/bottomnavbar_bloc.dart';
import 'package:project2/bloc/buynow/buynowselection_bloc.dart';
import 'package:project2/bloc/calender/calender_bloc.dart';
import 'package:project2/bloc/cart/cart_bloc.dart';
import 'package:project2/bloc/checkout/checkout_bloc.dart';
import 'package:project2/bloc/loginscreen/loginscreen_bloc.dart';
import 'package:project2/bloc/orderslist/orderlist_bloc.dart';
import 'package:project2/bloc/product/products_bloc.dart';
import 'package:project2/bloc/service/service_bloc.dart';
import 'package:project2/bloc/servicebooknow/servicebooknow_bloc.dart';
import 'package:project2/bloc/signup/signup_bloc.dart';
import 'package:project2/bloc/splashscreen/splashscreen_bloc.dart';
import 'package:project2/bloc/updateuser/updateuser_bloc.dart';
import 'package:project2/constents/colors.dart';
import 'package:project2/functions/firebase_options.dart';
import 'package:project2/presentation/splashscreen/splashscreen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  await FirebaseAppCheck.instance.activate(
    webRecaptchaSiteKey: 'recaptcha-v3-site-key',

    // Set androidProvider to `AndroidProvider.debug`
    androidProvider: AndroidProvider.debug,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<BottomnavbarBloc>(
          create: (context) => BottomnavbarBloc(),
        ),
        BlocProvider<LoginscreenBloc>(
          create: (context) => LoginscreenBloc(),
        ),
        BlocProvider<SignupBloc>(
          create: (context) => SignupBloc(),
        ),
        BlocProvider<SplashscreenBloc>(
          create: (context) => SplashscreenBloc(),
        ),
        BlocProvider<AccountinfoBloc>(
          create: (context) => AccountinfoBloc(),
        ),
        BlocProvider<ServiceBloc>(
          create: (context) => ServiceBloc(),
        ),
        BlocProvider<ProductsBloc>(
          create: (context) => ProductsBloc(),
        ),
        BlocProvider<BuynowselectionBloc>(
          create: (context) => BuynowselectionBloc(),
        ),
        BlocProvider<OrderlistBloc>(
          create: (context) => OrderlistBloc(),
        ),
        BlocProvider<CartBloc>(
          create: (context) => CartBloc(),
        ),
        BlocProvider<CheckoutBloc>(
          create: (context) => CheckoutBloc(),
        ),
        BlocProvider<CalenderBloc>(
          create: (context) => CalenderBloc(),
        ),
        BlocProvider<ServicebooknowBloc>(
          create: (context) => ServicebooknowBloc(),
        ),
        BlocProvider<UpdateuserBloc>(
          create: (context) => UpdateuserBloc(),
        ),
        BlocProvider<AddressBloc>(
          create: (context) => AddressBloc(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: colorblue,
          // useMaterial3: true,
        ),
        home: const SplashScreen(),
      ),
    );
  }
}
