import 'package:flutter/material.dart';
import 'package:mixin_2/layout/custom_appbar.dart';
import 'package:mixin_2/layout/custom_floating_action_button.dart';

import '../../const/colors.dart';
import 'make_2_screen.dart';
import 'make_introduce_screen.dart';

class MakeImportantScreen extends StatefulWidget {
  const MakeImportantScreen({Key? key}) : super(key: key);

  @override
  State<MakeImportantScreen> createState() => _MakeImportantScreenState();
}

class _MakeImportantScreenState extends State<MakeImportantScreen> {
  bool nextButtonColor = false;
  List<bool> selectList = List.filled(3, false);

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
          fillColor: selectList.where((element) => element).isNotEmpty
              ? MIXIN_POINT_COLOR
              : MIXIN_BLACK_4,
          onPressed: () {
            if (selectList.where((element) => element).isNotEmpty) {
              Navigator.of(context).push(
                MaterialPageRoute(
                    builder: (context) => const MakeIntroduceScreen()),
              );
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
                        backgroundColor: MIXIN_BLACK_5,
                        radius: 12.0,
                        child: Text(
                          '1',
                          style: TextStyle(
                              fontFamily: 'SUIT',
                              fontWeight: FontWeight.w500,
                              fontSize: 14.0,
                              color: MIXIN_BLACK_4),
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
                              color: MIXIN_BLACK_4),
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
                              color: Colors.white),
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
                        fontSize: 24.0),
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
                                color: selectList[0] == true
                                    ? MIXIN_2
                                    : MIXIN_BLACK_5,
                                width: 1.5),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0)),
                            padding: EdgeInsets.zero,
                            elevation: 0.0,
                            backgroundColor:
                                selectList[0] == true ? MIXIN_ : Colors.white),
                        onPressed: () {
                          setState(() {
                            selectList[0] = !selectList[0];
                            if (selectList[0] == true) {
                              selectList[1] = false;
                              selectList[2] = false;
                            }
                          });
                        },
                        child: Container(
                          margin: const EdgeInsets.fromLTRB(24, 26, 0, 0),
                          alignment: Alignment.centerLeft,
                          color: selectList[0] == true ? MIXIN_ : Colors.white,
                          child: const Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                '소통',
                                style: TextStyle(
                                    fontFamily: 'SUIT',
                                    fontWeight: FontWeight.w600,
                                    fontSize: 20.0,
                                    color: MIXIN_BLACK_1),
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
                                    color: MIXIN_BLACK_3),
                              ),
                            ],
                          ),
                        )),
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
                                color: selectList[1] == true
                                    ? MIXIN_2
                                    : MIXIN_BLACK_5,
                                width: 1.5),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0)),
                            padding: EdgeInsets.zero,
                            elevation: 0.0,
                            backgroundColor:
                                selectList[1] == true ? MIXIN_ : Colors.white),
                        onPressed: () {
                          setState(() {
                            selectList[1] = !selectList[1];
                            if (selectList[1] == true) {
                              selectList[0] = false;
                              selectList[2] = false;
                            }
                          });
                        },
                        child: Container(
                          margin: const EdgeInsets.fromLTRB(24, 26, 0, 0),
                          alignment: Alignment.centerLeft,
                          color: selectList[1] == true ? MIXIN_ : Colors.white,
                          child: const Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                '열정',
                                style: TextStyle(
                                    fontFamily: 'SUIT',
                                    fontWeight: FontWeight.w600,
                                    fontSize: 20.0,
                                    color: MIXIN_BLACK_1),
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
                                    color: MIXIN_BLACK_3),
                              ),
                            ],
                          ),
                        )),
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
                                color: selectList[2] == true
                                    ? MIXIN_2
                                    : MIXIN_BLACK_5,
                                width: 1.5),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0)),
                            padding: EdgeInsets.zero,
                            elevation: 0.0,
                            backgroundColor:
                                selectList[2] == true ? MIXIN_ : Colors.white),
                        onPressed: () {
                          setState(() {
                            selectList[2] = !selectList[2];
                            if (selectList[2] == true) {
                              selectList[0] = false;
                              selectList[1] = false;
                            }
                          });
                        },
                        child: Container(
                          margin: const EdgeInsets.fromLTRB(24, 26, 0, 0),
                          alignment: Alignment.centerLeft,
                          color: selectList[2] == true ? MIXIN_ : Colors.white,
                          child: const Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                '약속',
                                style: TextStyle(
                                    fontFamily: 'SUIT',
                                    fontWeight: FontWeight.w600,
                                    fontSize: 20.0,
                                    color: MIXIN_BLACK_1),
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
                                    color: MIXIN_BLACK_3),
                              ),
                            ],
                          ),
                        )),
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
