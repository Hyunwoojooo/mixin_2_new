import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:mixin_2/const/colors.dart';
import 'package:mixin_2/screens/signup_screens/signup_screen_tos.dart';
import 'package:dots_indicator/dots_indicator.dart';


class OnboardingPage2 extends StatefulWidget {
  const OnboardingPage2({Key? key}) : super(key: key);

  @override
  State<OnboardingPage2> createState() => _OnboardingPage2State();
}

class _OnboardingPage2State extends State<OnboardingPage2> {
  final double _currentPosition = 1.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
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
              '당신이 관심있는 분야들로만\n보여드릴게요',
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
