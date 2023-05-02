import 'package:flutter/material.dart';
import 'package:flip_card/flip_card.dart';
import 'package:mixin_2/screens/complete_profile_card_screen/front_profile_card_screen.dart';

import '../../const/colors.dart';
import '../../layout/custom_floating_action_button.dart';

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
          null;
          // Navigator.of(context).push(
          //   MaterialPageRoute(
          //       builder: (context) => const MakeIntroduceScreen()),
          // );
        },
      ),
      backgroundColor: Colors.white.withOpacity(0.4),
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              SizedBox(height: 50),
              Text(
                '믹스인에서\n내 프로필이 이렇게 보여요!',
                style: TextStyle(
                  fontFamily: 'SUIT',
                  fontWeight: FontWeight.w600,
                  fontSize: 24.0,
                  color: Colors.white,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 40),
              FlipCard(
                fill: Fill.fillBack,
                // Fill the back side of the card to make in the same size as the front.
                direction: FlipDirection.HORIZONTAL,
                // default
                side: CardSide.FRONT,
                // The side to initially display.
                front: FrontProfileCardScreen(),
                back: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(23.0),
                  ),
                  child: Center(
                    child: Column(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image:
                                  AssetImage('assets/images/speech_bubble.png'),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Text(
                '믹스인에서\n내 프로필이 이렇게 보여요!',
                style: TextStyle(
                  fontFamily: 'SUIT',
                  fontWeight: FontWeight.w600,
                  fontSize: 24.0,
                  color: Colors.white,
                ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
