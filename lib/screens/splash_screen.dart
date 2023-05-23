import 'package:flutter/material.dart';
import 'package:mixin_2/const/colors.dart';
import 'package:mixin_2/const/data.dart';
import 'package:mixin_2/screens/login_screen.dart';
import 'package:mixin_2/screens/make_profile_card_screens/make_category_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    checkToken();
  }

  void deleteToken() async {
    await storage.delete(key: REFRESH_TOKEN_KEY);
    await storage.delete(key: ACCESS_TOKEN_KEY);
  }

  void checkToken() async {
    final refreshToken = await storage.read(key: REFRESH_TOKEN_KEY);
    final accessToken = await storage.read(key: ACCESS_TOKEN_KEY);

    if (refreshToken == null || accessToken == null) {
      Navigator.of(context).pushAndRemoveUntil(
        MaterialPageRoute(builder: (_) => LoginScreen()),
        (route) => false,
      );
    } else {
      Navigator.of(context).pushAndRemoveUntil(
        MaterialPageRoute(builder: (_) => MakeCategoryScreen()),
        (route) => false,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      width: MediaQuery.of(context).size.width,
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            'assets/images/mixin_logo.png',
            width: MediaQuery.of(context).size.width / 3,
          ),
          const SizedBox(
            height: 18.0,
          ),
          const Text(
            'Everyone\'s playground',
            style: TextStyle(
              fontFamily: 'SUIT',
              fontWeight: FontWeight.w500,
              fontSize: 14,
              color: Color(0xFF979797),
            ),
          ),
          const SizedBox(
            height: 28.0,
          ),
          const CircularProgressIndicator(
            color: MIXIN_POINT_COLOR,
          )
        ],
      ),
    ));
  }
}
