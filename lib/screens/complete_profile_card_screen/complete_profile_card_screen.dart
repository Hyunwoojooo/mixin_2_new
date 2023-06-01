import 'package:flutter/material.dart';
import 'package:flip_card/flip_card.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../const/colors.dart';
import '../../layout/custom_floating_action_button.dart';
import '../main_screens/main_bottom_navigation_bar.dart';
import 'back_profile_card_screen.dart';
import 'front_profile_card_screen.dart';

class CompleteProfileCardScreen extends StatefulWidget {
  const CompleteProfileCardScreen({Key? key}) : super(key: key);

  @override
  State<CompleteProfileCardScreen> createState() =>
      _CompleteProfileCardScreenState();
}

class _CompleteProfileCardScreenState extends State<CompleteProfileCardScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: CustomFloatingActionButton(
        text: '환영해요',
        fillColor: MIXIN_POINT_COLOR,
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(
                builder: (context) => const MainBottomNavigationBar()),
          );
        },
      ),
      backgroundColor: Colors.white.withOpacity(0.4),
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              SizedBox(height: 50.h),
              Text(
                '믹스인에서\n내 프로필이 이렇게 보여요!',
                style: TextStyle(
                  fontFamily: 'SUIT',
                  fontWeight: FontWeight.w600,
                  fontSize: 24.0.sp,
                  color: Colors.white,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 40.h),
              FlipCard(
                onFlip: (){
                  setState(() {
                  });
                },
                fill: Fill.fillBack,
                // Fill the back side of the card to make in the same size as the front.
                direction: FlipDirection.HORIZONTAL,
                // default
                side: CardSide.FRONT,
                // The side to initially display.
                front: FrontProfileCardScreen(),
                back: BackProfileCardScreen(),
              ),
              SizedBox(height: 40.0.h),
              Container(
                height: 40.h,
                width: 249.w,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20.0),
                ),
                child: Text(
                  '추후 수정은 내 프로필에서 할 수 있어요!',
                  style: TextStyle(
                    color: MIXIN_POINT_COLOR,
                    fontFamily: 'SUIT',
                    fontWeight: FontWeight.w500,
                    fontSize: 14.0.sp,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}