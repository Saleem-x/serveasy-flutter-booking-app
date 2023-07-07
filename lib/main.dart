import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project2/bloc/accountinfo/accountinfo_bloc.dart';
import 'package:project2/bloc/bottomnavbar/bottomnavbar_bloc.dart';
import 'package:project2/bloc/loginscreen/loginscreen_bloc.dart';
import 'package:project2/bloc/signup/signup_bloc.dart';
import 'package:project2/bloc/splashscreen/splashscreen_bloc.dart';
import 'package:project2/constents/colors.dart';
import 'package:project2/firebase_options.dart';
import 'package:project2/ui/splashscreen/splashscreen.dart';
import 'package:project2/ui/welocomescreen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
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
