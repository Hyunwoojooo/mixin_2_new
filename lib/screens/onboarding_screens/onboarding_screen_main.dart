import 'package:flutter/material.dart';
import 'package:mixin_2/const/colors.dart';
import 'package:mixin_2/screens/login_screen.dart';
import 'package:mixin_2/screens/signup_screens/signup_screen_tos.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({Key? key}) : super(key: key);

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final PageController controller = PageController(initialPage: 0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height / 100 * 62,
            child: SafeArea(
              child: PageView(
                controller: controller,
                children: [
                  Center(
                    child: Column(
                      children: [
                        SizedBox(height: MediaQuery.of(context).size.height / 100 * 20),
                        const CircleAvatar(
                          backgroundColor: Colors.grey,
                          radius: 105,
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height / 100 * 8,
                        ),
                        const Text(
                          '우리들의 놀이터,\n믹스인!',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontFamily: 'SUIT',
                            fontSize: 24,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Center(
                    child: Column(
                      children: [
                        SizedBox(height: MediaQuery.of(context).size.height / 100 * 20),
                        const CircleAvatar(
                          backgroundColor: Colors.grey,
                          radius: 105,
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height / 100 * 8,
                        ),
                        const Text(
                          '당신이 관심있는 분야들로만\n보여드릴게요',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontFamily: 'SUIT',
                            fontSize: 24,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Center(
                    child: Column(
                      children: [
                        SizedBox(height: MediaQuery.of(context).size.height / 100 * 20),
                        const CircleAvatar(
                          backgroundColor: Colors.grey,
                          radius: 105,
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height / 100 * 8,
                        ),
                        const Text(
                          '인증된 나만의 프로필카드',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontFamily: 'SUIT',
                            fontSize: 24,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height / 100 * 6.6,
          ),
          Center(
            child: SmoothPageIndicator(
              controller: controller,  // PageController
              count:  3,
              effect: const WormEffect(
                spacing: 18,
                dotColor: MIXIN_BLACK_5,
                activeDotColor: MIXIN_POINT_COLOR,
                dotHeight: 8,
                dotWidth: 8,
              ),  // your preferred effect
              onDotClicked: (index){},
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height / 100 * 9.3,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: MIXIN_POINT_COLOR,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0)),
                  elevation: 0.0),
              onPressed: () async {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => const SignUpScreen1()),
                );
              },
              child: const SizedBox(
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
              const Text(
                '이미 계정이 있나요?',
                style: TextStyle(
                  color: Color(0xFFB1B1B7),
                  fontFamily: 'SUIT',
                  fontWeight: FontWeight.w500,
                  fontSize: 14,
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              SizedBox(
                width: 102,
                height: 20,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white, elevation: 0.0),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const LoginScreen()),
                    );
                  },
                  child: const Text(
                    '로그인하기',
                    style: TextStyle(
                        fontSize: 14,
                        fontFamily: 'SUIT',
                        fontWeight: FontWeight.w500,
                        color: MIXIN_POINT_COLOR,
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
