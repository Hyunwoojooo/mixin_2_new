import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:mixin_2/layout/custom_floating_action_button.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../const/colors.dart';
import 'make_3_screen.dart';

class MakeCharacterScreen extends StatefulWidget {
  const MakeCharacterScreen({Key? key}) : super(key: key);

  @override
  State<MakeCharacterScreen> createState() => _MakeCharacterScreenState();
}

class _MakeCharacterScreenState extends State<MakeCharacterScreen> {
  List<bool> introduceList = List.filled(16, false);
  final storage = const FlutterSecureStorage();

  List<String> introduceListText = [
    '논쟁을 좋아하는',
    '평화를 좋아하는',
    '수줍음을 타는',
    '말주변이 좋은',
    '진지한',
    '장난끼가 많은',
    '계획적인',
    '즉흥적인',
    '느긋한',
    '성격이 급한',
    '파티를 좋아하는',
    '소수모임을 좋아하는',
    '단호한',
    '우유부단한',
    '감성적인',
    '이성적인'
  ];
  List<String> selectList = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    print(introduceList);
    print(selectList);
  }

  void selectType(int index, String title) {
    if (introduceList[index] == true &&
        introduceList.where((element) => element).length >= 3) {
      introduceList[index] = !introduceList[index];
      selectList.removeWhere((String t) => t == title);
    } else if (introduceList[index] == false &&
        introduceList.where((element) => element).length >= 3) {
      return;
    } else if (introduceList[index] == false &&
        introduceList.where((element) => element).length < 3) {
      introduceList[index] = !introduceList[index];
      selectList.add(introduceListText[index]);
    } else if (introduceList[index] == true &&
        introduceList.where((element) => element).length < 3) {
      introduceList[index] = !introduceList[index];
      selectList.removeWhere((String t) => t == title);
    }
    print('selectList : $selectList');
    print('introduceList : $introduceList');
  }

  final PageController controller = PageController(initialPage: 0);

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
          fillColor: introduceList.where((element) => element).length == 3
              ? MIXIN_POINT_COLOR
              : MIXIN_BLACK_4,
          onPressed: () async {
            if (introduceList.where((element) => element).length == 3) {
              Navigator.of(context).push(
                MaterialPageRoute(
                    builder: (context) => const MakeImportantScreen()),
              );
              await storage.write(
                key: 'userPersonality',
                value: jsonEncode(selectList),
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
                  const SizedBox(height: 29.0),
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
                        backgroundColor: MIXIN_POINT_COLOR,
                        radius: 12.0,
                        child: Text(
                          '2',
                          style: TextStyle(
                              fontFamily: 'SUIT',
                              fontWeight: FontWeight.w500,
                              fontSize: 14.0,
                              color: Colors.white),
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
                              color: MIXIN_BLACK_4),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 24.0),
                  const Text(
                    '나를 3가지 단어로\n소개하자면?',
                    style: TextStyle(
                        fontFamily: 'SUIT',
                        fontWeight: FontWeight.w600,
                        fontSize: 24.0),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 12.0),
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
                  const SizedBox(height: 54),
                  SizedBox(
                    width: 294,
                    height: 228,
                    child: PageView(
                      controller: controller,
                      children: [
                        Column(
                          children: [
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
                                              color: introduceList[0] == true
                                                  ? MIXIN_2
                                                  : MIXIN_BLACK_5,
                                              width: 1.5),
                                          shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(10.0)),
                                          padding: EdgeInsets.zero,
                                          elevation: 0.0,
                                          backgroundColor:
                                              introduceList[0] == true
                                                  ? MIXIN_
                                                  : Colors.white),
                                      onPressed: () {
                                        setState(() {
                                          selectType(0, '논쟁을 좋아하는');
                                        });
                                      },
                                      child: Container(
                                        color: introduceList[0] == true
                                            ? MIXIN_
                                            : Colors.white,
                                        child: const Text(
                                          '논쟁을 좋아하는',
                                          style: TextStyle(
                                              fontFamily: 'SUIT',
                                              fontWeight: FontWeight.w500,
                                              fontSize: 16.0,
                                              color: MIXIN_BLACK_1),
                                          textAlign: TextAlign.center,
                                        ),
                                      )),
                                ),
                                const SizedBox(width: 18.0),
                                SizedBox(
                                  width: 138,
                                  height: 48,
                                  child: ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                          side: BorderSide(
                                              color: introduceList[1] == true
                                                  ? MIXIN_2
                                                  : MIXIN_BLACK_5,
                                              width: 1.5),
                                          shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(10.0)),
                                          padding: EdgeInsets.zero,
                                          elevation: 0.0,
                                          backgroundColor:
                                              introduceList[1] == true
                                                  ? MIXIN_
                                                  : Colors.white),
                                      onPressed: () {
                                        setState(() {
                                          selectType(1, '평화를 좋아하는');
                                        });
                                      },
                                      child: Container(
                                        color: introduceList[1] == true
                                            ? MIXIN_
                                            : Colors.white,
                                        child: const Text(
                                          '평화를 좋아하는',
                                          style: TextStyle(
                                              fontFamily: 'SUIT',
                                              fontWeight: FontWeight.w500,
                                              fontSize: 16.0,
                                              color: MIXIN_BLACK_1),
                                          textAlign: TextAlign.center,
                                        ),
                                      )),
                                ),
                              ],
                            ),
                            const SizedBox(height: 12.0),
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
                                              color: introduceList[2] == true
                                                  ? MIXIN_2
                                                  : MIXIN_BLACK_5,
                                              width: 1.5),
                                          shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(10.0)),
                                          padding: EdgeInsets.zero,
                                          elevation: 0.0,
                                          backgroundColor:
                                              introduceList[2] == true
                                                  ? MIXIN_
                                                  : Colors.white),
                                      onPressed: () {
                                        setState(() {
                                          selectType(2, '수줍음을 타는');
                                        });
                                      },
                                      child: Container(
                                        color: introduceList[2] == true
                                            ? MIXIN_
                                            : Colors.white,
                                        child: const Text(
                                          '수줍음을 타는',
                                          style: TextStyle(
                                              fontFamily: 'SUIT',
                                              fontWeight: FontWeight.w500,
                                              fontSize: 16.0,
                                              color: MIXIN_BLACK_1),
                                          textAlign: TextAlign.center,
                                        ),
                                      )),
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
                                            color: introduceList[3] == true
                                                ? MIXIN_2
                                                : MIXIN_BLACK_5,
                                            width: 1.5),
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(10.0)),
                                        padding: EdgeInsets.zero,
                                        elevation: 0.0,
                                        backgroundColor:
                                            introduceList[3] == true
                                                ? MIXIN_
                                                : Colors.white),
                                    onPressed: () {
                                      setState(() {
                                        selectType(3, '말주변이 좋은');
                                      });
                                    },
                                    child: Container(
                                      color: introduceList[3] == true
                                          ? MIXIN_
                                          : Colors.white,
                                      child: const Text(
                                        '말주변이 좋은',
                                        style: TextStyle(
                                            fontFamily: 'SUIT',
                                            fontWeight: FontWeight.w500,
                                            fontSize: 16.0,
                                            color: MIXIN_BLACK_1),
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
                                              color: introduceList[4] == true
                                                  ? MIXIN_2
                                                  : MIXIN_BLACK_5,
                                              width: 1.5),
                                          shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(10.0)),
                                          padding: EdgeInsets.zero,
                                          elevation: 0.0,
                                          backgroundColor:
                                              introduceList[4] == true
                                                  ? MIXIN_
                                                  : Colors.white),
                                      onPressed: () {
                                        setState(() {
                                          selectType(4, '진지한');
                                        });
                                      },
                                      child: Container(
                                        color: introduceList[4] == true
                                            ? MIXIN_
                                            : Colors.white,
                                        child: const Text(
                                          '진지한',
                                          style: TextStyle(
                                              fontFamily: 'SUIT',
                                              fontWeight: FontWeight.w500,
                                              fontSize: 16.0,
                                              color: MIXIN_BLACK_1),
                                          textAlign: TextAlign.center,
                                        ),
                                      )),
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
                                            color: introduceList[5] == true
                                                ? MIXIN_2
                                                : MIXIN_BLACK_5,
                                            width: 1.5),
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(10.0)),
                                        padding: EdgeInsets.zero,
                                        elevation: 0.0,
                                        backgroundColor:
                                            introduceList[5] == true
                                                ? MIXIN_
                                                : Colors.white),
                                    onPressed: () {
                                      setState(() {
                                        selectType(5, '장난끼가 많은');
                                      });
                                    },
                                    child: Container(
                                      color: introduceList[5] == true
                                          ? MIXIN_
                                          : Colors.white,
                                      child: const Text(
                                        '장난끼가 많은',
                                        style: TextStyle(
                                            fontFamily: 'SUIT',
                                            fontWeight: FontWeight.w500,
                                            fontSize: 16.0,
                                            color: MIXIN_BLACK_1),
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
                                              color: introduceList[6] == true
                                                  ? MIXIN_2
                                                  : MIXIN_BLACK_5,
                                              width: 1.5),
                                          shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(10.0)),
                                          padding: EdgeInsets.zero,
                                          elevation: 0.0,
                                          backgroundColor:
                                              introduceList[6] == true
                                                  ? MIXIN_
                                                  : Colors.white),
                                      onPressed: () {
                                        setState(() {
                                          selectType(6, '계획적인');
                                        });
                                      },
                                      child: Container(
                                        color: introduceList[6] == true
                                            ? MIXIN_
                                            : Colors.white,
                                        child: const Text(
                                          '계획적인',
                                          style: TextStyle(
                                              fontFamily: 'SUIT',
                                              fontWeight: FontWeight.w500,
                                              fontSize: 16.0,
                                              color: MIXIN_BLACK_1),
                                          textAlign: TextAlign.center,
                                        ),
                                      )),
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
                                            color: introduceList[7] == true
                                                ? MIXIN_2
                                                : MIXIN_BLACK_5,
                                            width: 1.5),
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(10.0)),
                                        padding: EdgeInsets.zero,
                                        elevation: 0.0,
                                        backgroundColor:
                                            introduceList[7] == true
                                                ? MIXIN_
                                                : Colors.white),
                                    onPressed: () {
                                      setState(() {
                                        selectType(7, '즉흥적인');
                                      });
                                    },
                                    child: Container(
                                      color: introduceList[7] == true
                                          ? MIXIN_
                                          : Colors.white,
                                      child: const Text(
                                        '즉흥적인',
                                        style: TextStyle(
                                            fontFamily: 'SUIT',
                                            fontWeight: FontWeight.w500,
                                            fontSize: 16.0,
                                            color: MIXIN_BLACK_1),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Column(
                          children: [
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
                                              color: introduceList[8] == true
                                                  ? MIXIN_2
                                                  : MIXIN_BLACK_5,
                                              width: 1.5),
                                          shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(10.0)),
                                          padding: EdgeInsets.zero,
                                          elevation: 0.0,
                                          backgroundColor:
                                              introduceList[8] == true
                                                  ? MIXIN_
                                                  : Colors.white),
                                      onPressed: () {
                                        setState(() {
                                          selectType(8, '느긋한');
                                        });
                                      },
                                      child: Container(
                                        color: introduceList[8] == true
                                            ? MIXIN_
                                            : Colors.white,
                                        child: const Text(
                                          '느긋한',
                                          style: TextStyle(
                                              fontFamily: 'SUIT',
                                              fontWeight: FontWeight.w500,
                                              fontSize: 16.0,
                                              color: MIXIN_BLACK_1),
                                          textAlign: TextAlign.center,
                                        ),
                                      )),
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
                                              color: introduceList[9] == true
                                                  ? MIXIN_2
                                                  : MIXIN_BLACK_5,
                                              width: 1.5),
                                          shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(10.0)),
                                          padding: EdgeInsets.zero,
                                          elevation: 0.0,
                                          backgroundColor:
                                              introduceList[9] == true
                                                  ? MIXIN_
                                                  : Colors.white),
                                      onPressed: () {
                                        setState(() {
                                          selectType(9, '성격이 급한');
                                        });
                                      },
                                      child: Container(
                                        color: introduceList[9] == true
                                            ? MIXIN_
                                            : Colors.white,
                                        child: const Text(
                                          '성격이 급한',
                                          style: TextStyle(
                                              fontFamily: 'SUIT',
                                              fontWeight: FontWeight.w500,
                                              fontSize: 16.0,
                                              color: MIXIN_BLACK_1),
                                          textAlign: TextAlign.center,
                                        ),
                                      )),
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
                                              color: introduceList[10] == true
                                                  ? MIXIN_2
                                                  : MIXIN_BLACK_5,
                                              width: 1.5),
                                          shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(10.0)),
                                          padding: EdgeInsets.zero,
                                          elevation: 0.0,
                                          backgroundColor:
                                              introduceList[10] == true
                                                  ? MIXIN_
                                                  : Colors.white),
                                      onPressed: () {
                                        setState(() {
                                          selectType(10, '파티를 좋아하는');
                                        });
                                      },
                                      child: Container(
                                        color: introduceList[10] == true
                                            ? MIXIN_
                                            : Colors.white,
                                        child: const Text(
                                          '파티를 좋아하는',
                                          style: TextStyle(
                                              fontFamily: 'SUIT',
                                              fontWeight: FontWeight.w500,
                                              fontSize: 16.0,
                                              color: MIXIN_BLACK_1),
                                          textAlign: TextAlign.center,
                                        ),
                                      )),
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
                                            color: introduceList[11] == true
                                                ? MIXIN_2
                                                : MIXIN_BLACK_5,
                                            width: 1.5),
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(10.0)),
                                        padding: EdgeInsets.zero,
                                        elevation: 0.0,
                                        backgroundColor:
                                            introduceList[11] == true
                                                ? MIXIN_
                                                : Colors.white),
                                    onPressed: () {
                                      setState(() {
                                        selectType(11, '소수모임을 좋아하는');
                                      });
                                    },
                                    child: Container(
                                      color: introduceList[11] == true
                                          ? MIXIN_
                                          : Colors.white,
                                      child: const Text(
                                        '소수모임을 좋아하는',
                                        style: TextStyle(
                                            fontFamily: 'SUIT',
                                            fontWeight: FontWeight.w500,
                                            fontSize: 16.0,
                                            color: MIXIN_BLACK_1),
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
                                              color: introduceList[12] == true
                                                  ? MIXIN_2
                                                  : MIXIN_BLACK_5,
                                              width: 1.5),
                                          shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(10.0)),
                                          padding: EdgeInsets.zero,
                                          elevation: 0.0,
                                          backgroundColor:
                                              introduceList[12] == true
                                                  ? MIXIN_
                                                  : Colors.white),
                                      onPressed: () {
                                        setState(() {
                                          selectType(12, '단호한');
                                        });
                                      },
                                      child: Container(
                                        color: introduceList[12] == true
                                            ? MIXIN_
                                            : Colors.white,
                                        child: const Text(
                                          '단호한',
                                          style: TextStyle(
                                              fontFamily: 'SUIT',
                                              fontWeight: FontWeight.w500,
                                              fontSize: 16.0,
                                              color: MIXIN_BLACK_1),
                                          textAlign: TextAlign.center,
                                        ),
                                      )),
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
                                            color: introduceList[13] == true
                                                ? MIXIN_2
                                                : MIXIN_BLACK_5,
                                            width: 1.5),
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(10.0)),
                                        padding: EdgeInsets.zero,
                                        elevation: 0.0,
                                        backgroundColor:
                                            introduceList[13] == true
                                                ? MIXIN_
                                                : Colors.white),
                                    onPressed: () {
                                      setState(() {
                                        selectType(13, '우유부단한');
                                      });
                                    },
                                    child: Container(
                                      color: introduceList[13] == true
                                          ? MIXIN_
                                          : Colors.white,
                                      child: const Text(
                                        '우유부단한',
                                        style: TextStyle(
                                            fontFamily: 'SUIT',
                                            fontWeight: FontWeight.w500,
                                            fontSize: 16.0,
                                            color: MIXIN_BLACK_1),
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
                                              color: introduceList[14] == true
                                                  ? MIXIN_2
                                                  : MIXIN_BLACK_5,
                                              width: 1.5),
                                          shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(10.0)),
                                          padding: EdgeInsets.zero,
                                          elevation: 0.0,
                                          backgroundColor:
                                              introduceList[14] == true
                                                  ? MIXIN_
                                                  : Colors.white),
                                      onPressed: () {
                                        setState(() {
                                          selectType(14, '감성적인');
                                        });
                                      },
                                      child: Container(
                                        color: introduceList[14] == true
                                            ? MIXIN_
                                            : Colors.white,
                                        child: const Text(
                                          '감성적인',
                                          style: TextStyle(
                                              fontFamily: 'SUIT',
                                              fontWeight: FontWeight.w500,
                                              fontSize: 16.0,
                                              color: MIXIN_BLACK_1),
                                          textAlign: TextAlign.center,
                                        ),
                                      )),
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
                                            color: introduceList[15] == true
                                                ? MIXIN_2
                                                : MIXIN_BLACK_5,
                                            width: 1.5),
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(10.0)),
                                        padding: EdgeInsets.zero,
                                        elevation: 0.0,
                                        backgroundColor:
                                            introduceList[15] == true
                                                ? MIXIN_
                                                : Colors.white),
                                    onPressed: () {
                                      setState(() {
                                        selectType(15, '이성적인');
                                      });
                                    },
                                    child: Container(
                                      color: introduceList[15] == true
                                          ? MIXIN_
                                          : Colors.white,
                                      child: const Text(
                                        '이성적인',
                                        style: TextStyle(
                                            fontFamily: 'SUIT',
                                            fontWeight: FontWeight.w500,
                                            fontSize: 16.0,
                                            color: MIXIN_BLACK_1),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 50.0),
                  SmoothPageIndicator(
                    controller: controller, // PageController
                    count: 2,
                    effect: const WormEffect(
                      spacing: 18,
                      dotColor: MIXIN_BLACK_5,
                      activeDotColor: MIXIN_POINT_COLOR,
                      dotHeight: 8,
                      dotWidth: 8,
                    ), // your preferred effect
                    onDotClicked: (index) {},
                  ),
                  const SizedBox(height: 20.0),
                  Row(
                    children: [
                      Visibility(
                        visible:
                            introduceList.where((element) => element).length >=
                                    1
                                ? true
                                : false,
                        child: Stack(
                          clipBehavior: Clip.none,
                          children: [
                            Container(
                              width: 107,
                              height: 37,
                              padding: EdgeInsets.zero,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                color: MIXIN_,
                                border: Border.all(color: MIXIN_2, width: 1.5),
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              child: Text(
                                introduceList
                                            .where((element) => element)
                                            .length >=
                                        1
                                    ? selectList[0]
                                    : '0',
                                style: TextStyle(fontSize: 12),
                              ),
                            ),
                            // Positioned(
                            //   bottom: 12,
                            //   left: 81,
                            //   child: IconButton(
                            //     onPressed: (){
                            //     },
                            //     icon: Image.asset('assets/images/cancel_button.png'),
                            //   ),
                            // ),
                          ],
                        ),
                      ),
                      const SizedBox(width: 6.0),
                      Visibility(
                        visible:
                            introduceList.where((element) => element).length >=
                                    2
                                ? true
                                : false,
                        child: Stack(
                          clipBehavior: Clip.none,
                          children: [
                            Container(
                              width: 107,
                              height: 37,
                              padding: EdgeInsets.zero,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                color: MIXIN_,
                                border: Border.all(color: MIXIN_2, width: 1.5),
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              child: Text(
                                introduceList
                                            .where((element) => element)
                                            .length >=
                                        2
                                    ? selectList[1]
                                    : '1',
                                style: TextStyle(fontSize: 12),
                              ),
                            ),
                            // Positioned(
                            //   bottom: 12,
                            //   left: 81,
                            //   child: IconButton(
                            //     onPressed: (){
                            //     },
                            //     icon: Image.asset('assets/images/cancel_button.png'),
                            //   ),
                            // ),
                          ],
                        ),
                      ),
                      const SizedBox(width: 6.0),
                      Visibility(
                        visible:
                            introduceList.where((element) => element).length ==
                                    3
                                ? true
                                : false,
                        child: Stack(
                          clipBehavior: Clip.none,
                          children: [
                            Container(
                              width: 107,
                              height: 37,
                              padding: EdgeInsets.zero,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                color: MIXIN_,
                                border: Border.all(color: MIXIN_2, width: 1.5),
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              child: Text(
                                introduceList
                                            .where((element) => element)
                                            .length ==
                                        3
                                    ? selectList[2]
                                    : '2',
                                style: TextStyle(fontSize: 12),
                              ),
                            ),
                            // Positioned(
                            //   bottom: 12,
                            //   left: 81,
                            //   child: IconButton(
                            //     onPressed: (){
                            //       selectList.removeLast();
                            //       setState(() {
                            //
                            //       });
                            //     },
                            //     icon: Image.asset('assets/images/cancel_button.png'),
                            //   ),
                            // ),
                          ],
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ));
  }
}
