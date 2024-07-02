import 'package:flutter/material.dart';
import 'package:krs_to_do/home_empty.dart';
import 'package:krs_to_do/login_1.dart';
import 'package:krs_to_do/loginsecond.dart';
import 'package:krs_to_do/onboard_1.dart';
import 'package:krs_to_do/onboard_2.dart';
import 'package:krs_to_do/onboard_3.dart';
import 'package:krs_to_do/signin.dart';
import 'package:krs_to_do/splash.dart';

void main() {
  runApp(const ToDo());
}

class ToDo extends StatelessWidget {
  const ToDo({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: const Splash(),
        routes: {
          '/onboard1': (context) => const FirstPage(),
          '/onboard2': (context) => const SecondPage(),
          '/onboard3': (context) => const ThirdPage(),
          '/loginfirst': (context) => const LoginFirst(),
          '/homeempty': (context) => const HomeEmpty(),
          '/loginsecond': (context) => const LoginSecond(),
          '/signin': (context) => const SignIn()
        });
  }
}
