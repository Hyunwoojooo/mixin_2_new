import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:mixin_2/const/colors.dart';
import 'package:mixin_2/screens/login_screen.dart';
import 'package:mixin_2/screens/onboarding_screens/onboarding_screen_3.dart';
import 'package:mixin_2/screens/onboarding_screens/onboarding_screen_2.dart';
import 'package:mixin_2/screens/signup_screens/signup_screen_tos.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'onboarding_screen_1.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({Key? key}) : super(key: key);

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          CarouselSlider(
            options: CarouselOptions(
                height: 600,
              viewportFraction: 1.0
            ),
            items: [
              OnboardingPage1(),
              OnboardingPage2(),
              OnboardingPage3(),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: MIXIN_POINT_COLOR,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0)),
                    elevation: 0.0
                ),
                onPressed: () async {
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => SignUpScreen1()),
                  );
                  print(MediaQuery.of(context).size.width);
                  print(MediaQuery.of(context).size.height);
                },
                child: Container(
                  width: 300,
                  height: 56,
                  child: Center(
                    child: Text(
                      '회원가입하고 시작하기',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontFamily: 'SUIT',
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                ),
            ),
          ),
          const SizedBox(
            height: 12,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '이미 계정이 있나요?',
                style: TextStyle(
                  color: Color(0xFFB1B1B7),
                  fontFamily: 'SUIT',
                  fontWeight: FontWeight.w500,
                  fontSize: 14,
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Container(
                width: 102,
                height: 20,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white, elevation: 0.0),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const StartScreen()),
                    );
                  },
                  child: Container(
                    child: Text(
                      '로그인하기',
                      style: TextStyle(
                          fontSize: 14,
                          fontFamily: 'SUIT',
                          fontWeight: FontWeight.w500,
                          color: MIXIN_POINT_COLOR),
                    ),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
