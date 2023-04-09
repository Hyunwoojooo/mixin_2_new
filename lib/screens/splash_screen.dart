import 'package:flutter/material.dart';
import 'package:card_swiper/card_swiper.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Swiper(
        itemBuilder: (BuildContext context, int index){
          return Container(
            child: Text(
              '1'
            ),
          );
        },
        itemCount: 3,
        pagination: SwiperPagination(),
        control: SwiperControl(
          disableColor: Colors.white12,
          color: Colors.green,
          iconNext: Icons.arrow_forward,
          iconPrevious: Icons.arrow_back,
        ),
      ),
    );
  }
}
