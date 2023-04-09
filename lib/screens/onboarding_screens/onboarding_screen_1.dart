import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:mixin_2/const/colors.dart';
import 'package:mixin_2/screens/signup_screens/signup_screen_tos.dart';
import 'package:dots_indicator/dots_indicator.dart';

class OnboardingPage1 extends StatefulWidget {
  const OnboardingPage1({Key? key}) : super(key: key);

  @override
  State<OnboardingPage1> createState() => _OnboardingPage1State();
}

class _OnboardingPage1State extends State<OnboardingPage1> {
  final _totalDots = 5;
  final double _currentPosition = 0.0;

  @override
  Widget build(BuildContext context) {
    final decorator = DotsDecorator(
        activeColor: MIXIN_POINT_COLOR,
        size: Size.square(8),
        activeSize: Size.square(8),
        activeShape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(25.0)));
    return Scaffold(
      body: Center(
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: MediaQuery.of(context).size.height / 100 * 15),
            CircleAvatar(
              backgroundColor: Colors.grey,
              radius: 105,
            ),
            const SizedBox(
              height: 63,
            ),
            Text(
              '우리들의 놀이터,\n믹스인!',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: 'SUIT',
                fontSize: 24,
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(
              height: 69.0,
            ),
            DotsIndicator(
              dotsCount: 3,
              position: _currentPosition,
              decorator: DotsDecorator(
                  color: MIXIN_BLACK_5, activeColor: MIXIN_POINT_COLOR),
            ),
          ],
        ),
      ),
    );
  }
}
