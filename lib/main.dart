import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project2/bloc/bottomnavbar/bottomnavbar_bloc.dart';
import 'package:project2/constents/colors.dart';
import 'package:project2/ui/welocomescreen.dart';

void main() {
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
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: colorblue,
          // useMaterial3: true,
        ),
        home: const WelcomeScreen(),
      ),
    );
  }
}
