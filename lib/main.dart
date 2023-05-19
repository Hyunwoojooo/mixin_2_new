import 'package:flutter/material.dart';
import 'package:mixin_2/screens/make_profile_card_screens/make_2_screen.dart';
import 'package:mixin_2/screens/make_profile_card_screens/make_category_screen.dart';
import 'package:mixin_2/screens/moim_screens/moim_main_screen.dart';
import 'package:mixin_2/screens/onboarding_screens/onboarding_screen_main.dart';

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
      initialRoute: '/',
      routes: {
        '/': (context) => const MoimMainScreen(),
      },
    );
  }
}


