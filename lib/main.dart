import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mixin_2/screens/complete_profile_card_screen/complete_profile_card_screen.dart';
import 'package:mixin_2/screens/complete_profile_card_screen/front_profile_card_screen.dart';
import 'package:mixin_2/screens/login_screen.dart';
import 'package:mixin_2/screens/main_screens/main_bottom_navigation_bar.dart';
import 'package:mixin_2/screens/make_moim_screens/make_moim_1.dart';
import 'package:mixin_2/screens/make_moim_screens/make_moim_2.dart';
import 'package:mixin_2/screens/make_moim_screens/make_moim_4.dart';
import 'package:mixin_2/screens/make_moim_screens/make_moim_tag.dart';
import 'package:mixin_2/screens/make_profile_card_screens/make_2_screen.dart';
import 'package:mixin_2/screens/make_profile_card_screens/make_category_screen.dart';
import 'package:mixin_2/screens/make_profile_card_screens/make_introduce_screen.dart';
import 'package:mixin_2/screens/moim_screens/moim_main_screen.dart';
import 'package:mixin_2/screens/moim_screens/moim_noticeboard_screen.dart';
import 'package:mixin_2/screens/onboarding_screens/onboarding_screen_main.dart';
import 'package:mixin_2/screens/signup_screens/signup_screen_namephone.dart';
import 'package:mixin_2/screens/signup_screens/signup_screen_school.dart';
import 'package:mixin_2/screens/signup_screens/signup_screen_tos.dart';
import 'package:mixin_2/screens/splash_screen.dart';
import 'package:mixin_2/screens/make_moim_screens/make_moim_3.dart';

Future<void> main() async {
  runApp(Mixin());
}

class Mixin extends StatelessWidget {
  Mixin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        minTextAdapt: true,
        designSize: const Size(390, 844),
        builder: (context, child) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            theme: ThemeData(
              fontFamily: 'SUIT',
              scaffoldBackgroundColor: const Color(0xFFFFFFFF),

              // textTheme: Typography.englishLike2018.apply(fontSizeFactor: 1),
            ),
            initialRoute: '/',
            routes: {
              '/': (context) =>  LoginScreen(),
            },
          );
        });
  }
}
