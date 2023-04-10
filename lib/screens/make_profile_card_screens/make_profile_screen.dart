import 'package:flutter/material.dart';

import '../../const/colors.dart';
import 'make_introduce_screen.dart';

class MakeProfileScreen extends StatefulWidget {
  const MakeProfileScreen({Key? key}) : super(key: key);

  @override
  State<MakeProfileScreen> createState() => _MakeProfileScreenState();
}

class _MakeProfileScreenState extends State<MakeProfileScreen> {


  bool nextButtonColor = false;
  bool communication = false;
  bool passion = false;
  bool promise = false;

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
                        backgroundColor: MIXIN_POINT_COLOR,
                        radius: 12.0,
                        child: Text(
                          '3',
                          style: TextStyle(
                              fontFamily: 'SUIT',
                              fontWeight: FontWeight.w500,
                              fontSize: 14.0,
                              color: Colors.white
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 24.0,
                  ),
                  const Text(
                    '모임 참여 시\nOO이 가장 중요해요!',
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
                        '가치관',
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
                  SizedBox(
                    width: 342,
                    height: 105,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            side: BorderSide(
                                color: communication == true ? MIXIN_2 : MIXIN_BLACK_5,
                                width: 1.5
                            ),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0)
                            ),
                            padding: EdgeInsets.zero,
                            elevation: 0.0,
                            backgroundColor: communication == true ? MIXIN_ : Colors.white
                        ),
                        onPressed: (){
                          setState(() {
                            communication = !communication;
                            if(communication == true){
                              passion = false;
                              promise = false;
                            }
                          });
                        },
                        child: Container(
                          margin: EdgeInsets.fromLTRB(24, 26, 0, 0),
                          alignment: Alignment.centerLeft,
                          color: communication == true ? MIXIN_ : Colors.white,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text(
                                '소통',
                                style: TextStyle(
                                    fontFamily: 'SUIT',
                                    fontWeight: FontWeight.w600,
                                    fontSize: 20.0,
                                    color: MIXIN_BLACK_1
                                ),
                                textAlign: TextAlign.center,
                              ),
                              SizedBox(
                                height: 7.0,
                              ),
                              Text(
                                '소통이 원활하게 이뤄지는 게 중요하지!',
                                style: TextStyle(
                                    fontFamily: 'SUIT',
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.w600,
                                    color: MIXIN_BLACK_3
                                ),
                              ),
                            ],
                          ),
                        )
                    ),
                  ),
                  const SizedBox(
                    height: 12.0,
                  ),
                  SizedBox(
                    width: 342,
                    height: 105,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            side: BorderSide(
                                color: passion == true ? MIXIN_2 : MIXIN_BLACK_5,
                                width: 1.5
                            ),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0)
                            ),
                            padding: EdgeInsets.zero,
                            elevation: 0.0,
                            backgroundColor: passion == true ? MIXIN_ : Colors.white
                        ),
                        onPressed: (){
                          setState(() {
                            passion = !passion;
                            if(passion == true){
                              communication = false;
                              promise = false;
                            }
                          });
                        },
                        child: Container(
                          margin: EdgeInsets.fromLTRB(24, 26, 0, 0),
                          alignment: Alignment.centerLeft,
                          color: passion == true ? MIXIN_ : Colors.white,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text(
                                '열정',
                                style: TextStyle(
                                    fontFamily: 'SUIT',
                                    fontWeight: FontWeight.w600,
                                    fontSize: 20.0,
                                    color: MIXIN_BLACK_1
                                ),
                                textAlign: TextAlign.center,
                              ),
                              SizedBox(
                                height: 7.0,
                              ),
                              Text(
                                '모든 일의 시작은 열정이 아니겠어?',
                                style: TextStyle(
                                    fontFamily: 'SUIT',
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.w600,
                                    color: MIXIN_BLACK_3
                                ),
                              ),
                            ],
                          ),
                        )
                    ),
                  ),
                  const SizedBox(
                    height: 12.0,
                  ),
                  SizedBox(
                    width: 342,
                    height: 105,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            side: BorderSide(
                                color: promise == true ? MIXIN_2 : MIXIN_BLACK_5,
                                width: 1.5
                            ),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0)
                            ),
                            padding: EdgeInsets.zero,
                            elevation: 0.0,
                            backgroundColor: promise == true ? MIXIN_ : Colors.white
                        ),
                        onPressed: (){
                          setState(() {
                            promise = !promise;
                            if(promise == true){
                              communication = false;
                              passion = false;
                            }
                          });
                        },
                        child: Container(
                          margin: EdgeInsets.fromLTRB(24, 26, 0, 0),
                          alignment: Alignment.centerLeft,
                          color: promise == true ? MIXIN_ : Colors.white,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text(
                                '약속',
                                style: TextStyle(
                                    fontFamily: 'SUIT',
                                    fontWeight: FontWeight.w600,
                                    fontSize: 20.0,
                                    color: MIXIN_BLACK_1
                                ),
                                textAlign: TextAlign.center,
                              ),
                              SizedBox(
                                height: 7.0,
                              ),
                              Text(
                                '약속은 기본 매너 아니겠어?',
                                style: TextStyle(
                                    fontFamily: 'SUIT',
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.w600,
                                    color: MIXIN_BLACK_3
                                ),
                              ),
                            ],
                          ),
                        )
                    ),
                  ),
                ],
              ),
            ),
          ),
        )
    );
  }
}
