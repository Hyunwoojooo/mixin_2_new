import 'package:flutter/material.dart';

import '../../const/colors.dart';
import 'make_important_screen.dart';

class MakeIntroduceScreen extends StatefulWidget {
  const MakeIntroduceScreen({Key? key}) : super(key: key);

  @override
  State<MakeIntroduceScreen> createState() => _MakeIntroduceScreenState();
}

class _MakeIntroduceScreenState extends State<MakeIntroduceScreen> {


  bool nextButtonColor = false;
  bool discuss = false;
  bool peace = false;
  bool shy = false;
  bool talker = false;
  bool serious = false;
  bool curious = false;
  bool j = false;
  bool p = false;

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
                      builder: (context) => MakeImportantScreen()),
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
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        backgroundColor: MIXIN_BLACK_5,
                        radius: 12.0,
                        child: Text(
                          '1',
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
                        backgroundColor: MIXIN_POINT_COLOR,
                        radius: 12.0,
                        child: Text(
                          '2',
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
                    '나를 3가지 단어로\n소개하자면?',
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
                        '성격/특성',
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
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: 138,
                          height: 48,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                side: BorderSide(
                                    color: discuss == true ? MIXIN_2 : MIXIN_BLACK_5,
                                    width: 1.5
                                ),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10.0)
                                ),
                                padding: EdgeInsets.zero,
                                elevation: 0.0,
                                backgroundColor: discuss == true ? MIXIN_ : Colors.white
                            ),
                            onPressed: (){
                              setState(() {
                                discuss = !discuss;
                              });
                            },
                            child: Container(
                              color: discuss == true ? MIXIN_ : Colors.white,
                              child: const Text(
                                '논쟁을 좋아하는',
                                style: TextStyle(
                                    fontFamily: 'SUIT',
                                    fontWeight: FontWeight.w500,
                                    fontSize: 16.0,
                                    color: MIXIN_BLACK_1
                                ),
                                textAlign: TextAlign.center,
                              ),
                            )
                        ),
                      ),
                      const SizedBox(
                        width: 18.0,
                      ),
                      SizedBox(
                        width: 138,
                        height: 48,
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                side: BorderSide(
                                    color: peace == true ? MIXIN_2 : MIXIN_BLACK_5,
                                    width: 1.5
                                ),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10.0)
                                ),
                                padding: EdgeInsets.zero,
                                elevation: 0.0,
                                backgroundColor: peace == true ? MIXIN_ : Colors.white
                            ),
                            onPressed: (){
                              setState(() {
                                peace = !peace;
                              });
                            },
                            child: Container(
                              color: peace == true ? MIXIN_ : Colors.white,
                              child: const Text(
                                '평화를 좋아하는',
                                style: TextStyle(
                                    fontFamily: 'SUIT',
                                    fontWeight: FontWeight.w500,
                                    fontSize: 16.0,
                                    color: MIXIN_BLACK_1
                                ),
                                textAlign: TextAlign.center,
                              ),
                            )
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 12.0,
                  ),

                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: 138,
                        height: 48,
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                side: BorderSide(
                                    color: shy == true ? MIXIN_2 : MIXIN_BLACK_5,
                                    width: 1.5
                                ),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10.0)
                                ),
                                padding: EdgeInsets.zero,
                                elevation: 0.0,
                                backgroundColor: shy == true ? MIXIN_ : Colors.white
                            ),
                            onPressed: (){
                              setState(() {
                                shy = !shy;
                              });
                            },
                            child: Container(
                              color: shy == true ? MIXIN_ : Colors.white,
                              child: const Text(
                                '수줍음을 타는',
                                style: TextStyle(
                                    fontFamily: 'SUIT',
                                    fontWeight: FontWeight.w500,
                                    fontSize: 16.0,
                                    color: MIXIN_BLACK_1
                                ),
                                textAlign: TextAlign.center,
                              ),
                            )
                        ),
                      ),
                      const SizedBox(
                        width: 18.0,
                      ),
                      SizedBox(
                        width: 138,
                        height: 48,
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                side: BorderSide(
                                    color: talker == true ? MIXIN_2 : MIXIN_BLACK_5,
                                    width: 1.5
                                ),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10.0)
                                ),
                                padding: EdgeInsets.zero,
                                elevation: 0.0,
                                backgroundColor: talker == true ? MIXIN_ : Colors.white
                            ),
                            onPressed: (){
                              setState(() {
                                talker = !talker;
                              });
                            },
                            child: Container(
                              color: talker == true ? MIXIN_ : Colors.white,
                              child: const Text(
                                '말주변이 좋은',
                                style: TextStyle(
                                    fontFamily: 'SUIT',
                                    fontWeight: FontWeight.w500,
                                    fontSize: 16.0,
                                    color: MIXIN_BLACK_1
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 12.0,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: 138,
                        height: 48,
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                side: BorderSide(
                                    color: serious == true ? MIXIN_2 : MIXIN_BLACK_5,
                                    width: 1.5
                                ),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10.0)
                                ),
                                padding: EdgeInsets.zero,
                                elevation: 0.0,
                                backgroundColor: serious == true ? MIXIN_ : Colors.white
                            ),
                            onPressed: (){
                              setState(() {
                                serious = !serious;
                              });
                            },
                            child: Container(
                              color: serious == true ? MIXIN_ : Colors.white,
                              child: const Text(
                                '진지한',
                                style: TextStyle(
                                    fontFamily: 'SUIT',
                                    fontWeight: FontWeight.w500,
                                    fontSize: 16.0,
                                    color: MIXIN_BLACK_1
                                ),
                                textAlign: TextAlign.center,
                              ),
                            )
                        ),
                      ),
                      const SizedBox(
                        width: 18.0,
                      ),
                      SizedBox(
                        width: 138,
                        height: 48,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              side: BorderSide(
                                  color: curious == true ? MIXIN_2 : MIXIN_BLACK_5,
                                  width: 1.5
                              ),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0)
                              ),
                              padding: EdgeInsets.zero,
                              elevation: 0.0,
                              backgroundColor: curious == true ? MIXIN_ : Colors.white
                          ),
                          onPressed: (){
                            setState(() {
                              curious = !curious;
                            });
                          },
                          child: Container(
                            color: curious == true ? MIXIN_ : Colors.white,
                            child: const Text(
                              '장난끼가 많은',
                              style: TextStyle(
                                  fontFamily: 'SUIT',
                                  fontWeight: FontWeight.w500,
                                  fontSize: 16.0,
                                  color: MIXIN_BLACK_1
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 12.0,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: 138,
                        height: 48,
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                side: BorderSide(
                                    color: j == true ? MIXIN_2 : MIXIN_BLACK_5,
                                    width: 1.5
                                ),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10.0)
                                ),
                                padding: EdgeInsets.zero,
                                elevation: 0.0,
                                backgroundColor: j == true ? MIXIN_ : Colors.white
                            ),
                            onPressed: (){
                              setState(() {
                                j = !j;
                              });
                            },
                            child: Container(
                              color: j == true ? MIXIN_ : Colors.white,
                              child: const Text(
                                '계획적인',
                                style: TextStyle(
                                    fontFamily: 'SUIT',
                                    fontWeight: FontWeight.w500,
                                    fontSize: 16.0,
                                    color: MIXIN_BLACK_1
                                ),
                                textAlign: TextAlign.center,
                              ),
                            )
                        ),
                      ),
                      const SizedBox(
                        width: 18.0,
                      ),
                      SizedBox(
                        width: 138,
                        height: 48,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              side: BorderSide(
                                  color: p == true ? MIXIN_2 : MIXIN_BLACK_5,
                                  width: 1.5
                              ),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0)
                              ),
                              padding: EdgeInsets.zero,
                              elevation: 0.0,
                              backgroundColor: p == true ? MIXIN_ : Colors.white
                          ),
                          onPressed: (){
                            setState(() {
                              p = !p;
                            });
                          },
                          child: Container(
                            color: p == true ? MIXIN_ : Colors.white,
                            child: const Text(
                              '즉흥적인',
                              style: TextStyle(
                                  fontFamily: 'SUIT',
                                  fontWeight: FontWeight.w500,
                                  fontSize: 16.0,
                                  color: MIXIN_BLACK_1
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
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
