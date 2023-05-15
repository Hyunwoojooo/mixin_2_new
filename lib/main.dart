import 'package:flutter/material.dart';
import 'package:mixin_2/screens/make_profile_card_screens/make_2_screen.dart';

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
        '/': (context) => const MakeCharacterScreen(),
      },
    );
  }
}


