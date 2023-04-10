import 'package:flutter/material.dart';

import '../../const/colors.dart';
import 'make_introduce_screen.dart';

class MakePositionScreen extends StatefulWidget {
  const MakePositionScreen({Key? key}) : super(key: key);

  @override
  State<MakePositionScreen> createState() => _MakePositionScreenState();
}

class _MakePositionScreenState extends State<MakePositionScreen> {


  bool nextButtonColor = false;
  bool leader = false;
  bool moodMaker = false;
  bool liker = false;
  bool calmer = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 0.0,
        leading: GestureDetector(
          child: Image.asset('assets/images/back_icon.png'),
          onTap: () {
            Navigator.pop(context);
          },
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Container(
        decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.white,
                spreadRadius: 0.0,
                blurRadius: 0.0,
              ),
            ]
        ),
        width: 342,
        height: 56,
        child: RawMaterialButton(
          fillColor: nextButtonColor == true ? MIXIN_POINT_COLOR : MIXIN_BLACK_4,
          elevation: 0.0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8.0),
          ),
          onPressed: () {
            if (nextButtonColor == false){
              Navigator.of(context).push(
                MaterialPageRoute(
                    builder: (context) => MakeIntroduceScreen()),
              );
            } else {}
          },
          child: const Text(
            '다음',
            style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontFamily: 'SUIT',
                fontWeight: FontWeight.w600
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
        child: SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(
                    height: 29.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      CircleAvatar(
                        backgroundColor: MIXIN_POINT_COLOR,
                        radius: 12.0,
                        child: Text(
                          '1',
                          style: TextStyle(
                            fontFamily: 'SUIT',
                            fontWeight: FontWeight.w500,
                            fontSize: 14.0,
                            color: Colors.white
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 12.0,
                      ),
                      CircleAvatar(
                        backgroundColor: MIXIN_BLACK_5,
                        radius: 12.0,
                        child: Text(
                          '2',
                          style: TextStyle(
                              fontFamily: 'SUIT',
                              fontWeight: FontWeight.w500,
                              fontSize: 14.0,
                              color: MIXIN_BLACK_4
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 12.0,
                      ),
                      CircleAvatar(
                        backgroundColor: MIXIN_BLACK_5,
                        radius: 12.0,
                        child: Text(
                          '3',
                          style: TextStyle(
                              fontFamily: 'SUIT',
                              fontWeight: FontWeight.w500,
                              fontSize: 14.0,
                              color: MIXIN_BLACK_4
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 24.0,
                  ),
                  const Text(
                    '모임 내에서\n나의 포지션은?',
                    style: TextStyle(
                      fontFamily: 'SUIT',
                      fontWeight: FontWeight.w600,
                      fontSize: 24.0
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(
                    height: 12.0,
                  ),
                  Container(
                    width: 81,
                    height: 36,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(18.0),
                      color: MIXIN_BLACK_5,
                    ),
                    child: const Center(
                      child: Text(
                        '참여유형',
                        style: TextStyle(
                          fontFamily: 'SUIT',
                          fontWeight: FontWeight.w500,
                          fontSize: 14.0,
                          color: Color(0xFF51B49F),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 54,
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 165,
                        height: 105,
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                side: BorderSide(
                                    color: leader == true ? MIXIN_2 : MIXIN_BLACK_5,
                                  width: 1.5
                                ),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0)
                                ),
                                padding: EdgeInsets.zero,
                                elevation: 0.0,
                                backgroundColor: leader == true ? MIXIN_ : Colors.white
                            ),
                            onPressed: (){
                              setState(() {
                                leader = !leader;
                                if(leader == true){
                                  moodMaker = false;
                                  liker = false;
                                  calmer = false;
                                }
                              });
                            },
                            child: Container(
                              color: leader == true ? MIXIN_ : Colors.white,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: const [
                                  Text(
                                    '나 빼고 결정하는건\n못참지',
                                    style: TextStyle(
                                      fontFamily: 'SUIT',
                                      fontWeight: FontWeight.w500,
                                      fontSize: 14.0,
                                      color: MIXIN_BLACK_3
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                  SizedBox(
                                    height: 10.0,
                                  ),
                                  Text(
                                    '리더형',
                                    style: TextStyle(
                                        fontFamily: 'SUIT',
                                        fontSize: 16.0,
                                        fontWeight: FontWeight.w600,
                                        color: MIXIN_BLACK_1
                                    ),
                                  ),
                                ],
                              ),
                            )
                        ),
                      ),
                      const SizedBox(
                        width: 12.0,
                      ),
                      SizedBox(
                        width: 165,
                        height: 105,
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                side: BorderSide(
                                    color: moodMaker == true ? MIXIN_2 : MIXIN_BLACK_5,
                                    width: 1.5
                                ),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10.0)
                                ),
                                padding: EdgeInsets.zero,
                                elevation: 0.0,
                                backgroundColor: moodMaker == true ? MIXIN_ : Colors.white
                            ),
                            onPressed: (){
                              setState(() {
                                moodMaker = !moodMaker;
                                if(moodMaker == true){
                                  liker = false;
                                  leader = false;
                                  calmer = false;
                                }
                              });
                            },
                            child: Container(
                              color: moodMaker == true ? MIXIN_ : Colors.white,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: const [
                                  Text(
                                    '이 모임 분위기는\n내가 책임진다!',
                                    style: TextStyle(
                                        fontFamily: 'SUIT',
                                        fontWeight: FontWeight.w500,
                                        fontSize: 14.0,
                                        color: MIXIN_BLACK_3
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                  SizedBox(
                                    height: 10.0,
                                  ),
                                  Text(
                                    '분위기메이커형',
                                    style: TextStyle(
                                        fontFamily: 'SUIT',
                                        fontSize: 16.0,
                                        fontWeight: FontWeight.w600,
                                        color: MIXIN_BLACK_1
                                    ),
                                  ),
                                ],
                              ),
                            )
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 14.0,
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 165,
                        height: 105,
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                side: BorderSide(
                                    color: liker == true ? MIXIN_2 : MIXIN_BLACK_5,
                                    width: 1.5
                                ),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10.0)
                                ),
                                padding: EdgeInsets.zero,
                                elevation: 0.0,
                                backgroundColor: liker == true ? MIXIN_ : Colors.white
                            ),
                            onPressed: (){
                              setState(() {
                                liker = !liker;
                                if(liker == true){
                                  moodMaker = false;
                                  leader = false;
                                  calmer = false;
                                }
                              });
                            },
                            child: Container(
                              color: liker == true ? MIXIN_ : Colors.white,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: const [
                                  Text(
                                    '좋아좋아\n뭐든지 다 좋아~',
                                    style: TextStyle(
                                        fontFamily: 'SUIT',
                                        fontWeight: FontWeight.w500,
                                        fontSize: 14.0,
                                        color: MIXIN_BLACK_3
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                  SizedBox(
                                    height: 10.0,
                                  ),
                                  Text(
                                    '다좋아형',
                                    style: TextStyle(
                                        fontFamily: 'SUIT',
                                        fontSize: 16.0,
                                        fontWeight: FontWeight.w600,
                                        color: MIXIN_BLACK_1
                                    ),
                                  ),
                                ],
                              ),
                            )
                        ),
                      ),
                      const SizedBox(
                        width: 12.0,
                      ),
                      SizedBox(
                        width: 165,
                        height: 105,
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                side: BorderSide(
                                    color: calmer == true ? MIXIN_2 : MIXIN_BLACK_5,
                                    width: 1.5
                                ),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10.0)
                                ),
                                padding: EdgeInsets.zero,
                                elevation: 0.0,
                                backgroundColor: calmer == true ? MIXIN_ : Colors.white
                            ),
                            onPressed: (){
                              setState(() {
                                calmer = !calmer;
                                if(calmer == true){
                                  moodMaker = false;
                                  leader = false;
                                  liker = false;
                                }
                              });
                            },
                            child: Container(
                              color: calmer == true ? MIXIN_ : Colors.white,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: const [
                                  Text(
                                    '당황하지 않아요\n침착하게..',
                                    style: TextStyle(
                                        fontFamily: 'SUIT',
                                        fontWeight: FontWeight.w500,
                                        fontSize: 14.0,
                                        color: MIXIN_BLACK_3
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                  SizedBox(
                                    height: 10.0,
                                  ),
                                  Text(
                                    '차분형',
                                    style: TextStyle(
                                        fontFamily: 'SUIT',
                                        fontSize: 16.0,
                                        fontWeight: FontWeight.w600,
                                        color: MIXIN_BLACK_1
                                    ),
                                  ),
                                ],
                              ),
                            )
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
        ),
      )
    );
  }
}
