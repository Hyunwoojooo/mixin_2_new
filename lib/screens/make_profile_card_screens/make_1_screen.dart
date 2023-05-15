import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:mixin_2/layout/custom_floating_action_button.dart';

import '../../const/colors.dart';
import 'make_2_screen.dart';

class MakePositionScreen extends StatefulWidget {
  const MakePositionScreen({Key? key}) : super(key: key);

  @override
  State<MakePositionScreen> createState() => _MakePositionScreenState();
}

class _MakePositionScreenState extends State<MakePositionScreen> {
  final storage = FlutterSecureStorage();
  
  List<bool> positionList = List.filled(4, false);

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
      floatingActionButton: CustomFloatingActionButton(
        text: '다음',
        fillColor: (positionList.where((element) => element).length == 1) ? MIXIN_POINT_COLOR : MIXIN_BLACK_4,
        onPressed: () async {
            if (positionList.where((element) => element).length == 1){
              Navigator.of(context).push(
                MaterialPageRoute(
                    builder: (context) => const MakeCharacterScreen()),
              );
              await storage.write(key: 'userPosition', value: jsonEncode(positionList));
            } else {
              null;
            }
          },
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
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
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
                                    color: positionList[0] == true ? MIXIN_2 : MIXIN_BLACK_5,
                                  width: 1.5
                                ),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0)
                                ),
                                padding: EdgeInsets.zero,
                                elevation: 0.0,
                                backgroundColor: positionList[0] == true ? MIXIN_ : Colors.white
                            ),
                            onPressed: (){
                              setState(() {
                                positionList[0] = !positionList[0];
                                if(positionList[0] == true){
                                  positionList[1] = false;
                                  positionList[2] = false;
                                  positionList[3] = false;
                                }
                              });
                            },
                            child: Container(
                              color: positionList[0] == true ? MIXIN_ : Colors.white,
                              child: const Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
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
                                    color: positionList[1] == true ? MIXIN_2 : MIXIN_BLACK_5,
                                    width: 1.5
                                ),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10.0)
                                ),
                                padding: EdgeInsets.zero,
                                elevation: 0.0,
                                backgroundColor: positionList[1] == true ? MIXIN_ : Colors.white
                            ),
                            onPressed: (){
                              setState(() {
                                positionList[1] = !positionList[1];
                                if(positionList[1] == true){
                                  positionList[2] = false;
                                  positionList[0] = false;
                                  positionList[3] = false;
                                }
                              });
                            },
                            child: Container(
                              color: positionList[1] == true ? MIXIN_ : Colors.white,
                              child: const Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
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
                                    color: positionList[2] == true ? MIXIN_2 : MIXIN_BLACK_5,
                                    width: 1.5
                                ),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10.0)
                                ),
                                padding: EdgeInsets.zero,
                                elevation: 0.0,
                                backgroundColor: positionList[2] == true ? MIXIN_ : Colors.white
                            ),
                            onPressed: (){
                              setState(() {
                                positionList[2] = !positionList[2];
                                if(positionList[2] == true){
                                  positionList[1] = false;
                                  positionList[0] = false;
                                  positionList[3] = false;
                                }
                              });
                            },
                            child: Container(
                              color: positionList[2] == true ? MIXIN_ : Colors.white,
                              child: const Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
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
                                    color: positionList[3] == true ? MIXIN_2 : MIXIN_BLACK_5,
                                    width: 1.5
                                ),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10.0)
                                ),
                                padding: EdgeInsets.zero,
                                elevation: 0.0,
                                backgroundColor: positionList[3] == true ? MIXIN_ : Colors.white
                            ),
                            onPressed: (){
                              setState(() {
                                positionList[3] = !positionList[3];
                                if(positionList[3] == true){
                                  positionList[1] = false;
                                  positionList[0] = false;
                                  positionList[2] = false;
                                }
                              });
                            },
                            child: Container(
                              color: positionList[3] == true ? MIXIN_ : Colors.white,
                              child: const Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
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
