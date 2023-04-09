import 'package:flutter/material.dart';
import 'package:mixin_2/components/firebase_auth_sms.dart';
import 'package:mixin_2/screens/onboarding_screens/onboarding_screen_main.dart';
import 'package:firebase_core/firebase_core.dart';
// import 'firebase_options.dart';
import 'package:mixin_2/screens/signup_screens/signup_screen_tos.dart';
import 'package:mixin_2/screens/splash_screen.dart';
import 'package:mixin_2/screens/login_screen.dart';

Future<void> main() async{
  runApp(Mixin());
}

class Mixin extends StatelessWidget {
  Mixin({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'SUIT',
        scaffoldBackgroundColor: const Color(0xFFFFFFFF),
      ),
      home: OnboardingScreen(),
    );
  }
}


