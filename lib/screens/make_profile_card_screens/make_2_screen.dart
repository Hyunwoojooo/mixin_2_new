import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
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
  }

  final PageController controller = PageController(initialPage: 0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60.h),
        child: AppBar(
          backgroundColor: Colors.white,
          elevation: 0.0,
          titleSpacing: -35.w,
          title: GestureDetector(
            child: Column(
              children: [
                SizedBox(
                  height: 20.h,
                ),
                Image.asset(
                  'assets/images/icons/back_icon_black_4x.png',
                  width: 26.w,
                  height: 26.h,
                  fit: BoxFit.contain,
                ),
              ],
            ),
            onTap: () {
              Navigator.pop(context);
            },
          ),
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
            print('userPersonality : $selectList');
          } else {
            null;
          }
        },
      ),
      body: SingleChildScrollView(
        keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.0.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 29.0.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      backgroundColor: MIXIN_BLACK_5,
                      radius: 12.0.r,
                      child: Text(
                        '1',
                        style: TextStyle(
                          fontFamily: 'SUIT',
                          fontWeight: FontWeight.w500,
                          fontSize: 14.0.sp,
                          color: MIXIN_BLACK_4,
                        ),
                      ),
                    ),
                    SizedBox(width: 12.0.w),
                    CircleAvatar(
                      backgroundColor: MIXIN_POINT_COLOR,
                      radius: 12.0.r,
                      child: Text(
                        '2',
                        style: TextStyle(
                          fontFamily: 'SUIT',
                          fontWeight: FontWeight.w500,
                          fontSize: 14.0.sp,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    SizedBox(width: 12.0.w),
                    CircleAvatar(
                      backgroundColor: MIXIN_BLACK_5,
                      radius: 12.0.r,
                      child: Text(
                        '3',
                        style: TextStyle(
                          fontFamily: 'SUIT',
                          fontWeight: FontWeight.w500,
                          fontSize: 14.0.sp,
                          color: MIXIN_BLACK_4,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 24.0.h),
                Text(
                  '나를 3가지 단어로\n소개하자면?',
                  style: TextStyle(
                    fontFamily: 'SUIT',
                    fontWeight: FontWeight.w600,
                    fontSize: 24.0.sp,
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 12.0.h),
                Container(
                  width: 81.w,
                  height: 36.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(18.0.r),
                    color: MIXIN_BLACK_5,
                  ),
                  child: Center(
                    child: Text(
                      '성격/특성',
                      style: TextStyle(
                        fontFamily: 'SUIT',
                        fontWeight: FontWeight.w500,
                        fontSize: 14.0.sp,
                        color: const Color(0xFF51B49F),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 54.h),
                SizedBox(
                  width: 294.w,
                  height: 228.h,
                  child: PageView(
                    controller: controller,
                    children: [
                      Column(
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              ElevatedButtonFormat(
                                borderSideColor: introduceList[0] == true
                                    ? MIXIN_2
                                    : MIXIN_BLACK_5,
                                backgroundColor: introduceList[0] == true
                                    ? MIXIN_
                                    : Colors.white,
                                onPressed: () {
                                  setState(() {
                                    selectType(0, '논쟁을 좋아하는');
                                  });
                                },
                                containerColor: introduceList[0] == true
                                    ? MIXIN_
                                    : Colors.white,
                                text: '논쟁을 좋아하는',
                              ),
                              SizedBox(width: 18.0.w),
                              ElevatedButtonFormat(
                                borderSideColor: introduceList[1] == true
                                    ? MIXIN_2
                                    : MIXIN_BLACK_5,
                                backgroundColor: introduceList[1] == true
                                    ? MIXIN_
                                    : Colors.white,
                                onPressed: () {
                                  setState(() {
                                    selectType(1, '평화를 좋아하는');
                                  });
                                },
                                containerColor: introduceList[1] == true
                                    ? MIXIN_
                                    : Colors.white,
                                text: '평화를 좋아하는',
                              ),
                            ],
                          ),
                          SizedBox(height: 12.0.h),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              ElevatedButtonFormat(
                                borderSideColor: introduceList[2] == true
                                    ? MIXIN_2
                                    : MIXIN_BLACK_5,
                                backgroundColor: introduceList[2] == true
                                    ? MIXIN_
                                    : Colors.white,
                                onPressed: () {
                                  setState(() {
                                    selectType(2, '수줍음을 타는');
                                  });
                                },
                                containerColor: introduceList[2] == true
                                    ? MIXIN_
                                    : Colors.white,
                                text: '수줍음을 타는',
                              ),
                              SizedBox(width: 18.0.w),
                              ElevatedButtonFormat(
                                borderSideColor: introduceList[3] == true
                                    ? MIXIN_2
                                    : MIXIN_BLACK_5,
                                backgroundColor: introduceList[3] == true
                                    ? MIXIN_
                                    : Colors.white,
                                onPressed: () {
                                  setState(() {
                                    selectType(3, '말주변이 좋은');
                                  });
                                },
                                containerColor: introduceList[3] == true
                                    ? MIXIN_
                                    : Colors.white,
                                text: '말주변이 좋은',
                              ),
                            ],
                          ),
                          SizedBox(height: 12.0.h),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              ElevatedButtonFormat(
                                borderSideColor: introduceList[4] == true
                                    ? MIXIN_2
                                    : MIXIN_BLACK_5,
                                backgroundColor: introduceList[4] == true
                                    ? MIXIN_
                                    : Colors.white,
                                onPressed: () {
                                  setState(() {
                                    selectType(4, '진지한');
                                  });
                                },
                                containerColor: introduceList[4] == true
                                    ? MIXIN_
                                    : Colors.white,
                                text: '진지한',
                              ),
                              SizedBox(width: 18.0.w),
                              ElevatedButtonFormat(
                                borderSideColor: introduceList[5] == true
                                    ? MIXIN_2
                                    : MIXIN_BLACK_5,
                                backgroundColor: introduceList[5] == true
                                    ? MIXIN_
                                    : Colors.white,
                                onPressed: () {
                                  setState(() {
                                    selectType(5, '장난끼가 많은');
                                  });
                                },
                                containerColor: introduceList[5] == true
                                    ? MIXIN_
                                    : Colors.white,
                                text: '장난끼가 많은',
                              ),
                            ],
                          ),
                          SizedBox(height: 12.0.h),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              ElevatedButtonFormat(
                                borderSideColor: introduceList[6] == true
                                    ? MIXIN_2
                                    : MIXIN_BLACK_5,
                                backgroundColor: introduceList[6] == true
                                    ? MIXIN_
                                    : Colors.white,
                                onPressed: () {
                                  setState(() {
                                    selectType(6, '계획적인');
                                  });
                                },
                                containerColor: introduceList[6] == true
                                    ? MIXIN_
                                    : Colors.white,
                                text: '계획적인',
                              ),
                              SizedBox(width: 18.0.w),
                              ElevatedButtonFormat(
                                borderSideColor: introduceList[7] == true
                                    ? MIXIN_2
                                    : MIXIN_BLACK_5,
                                backgroundColor: introduceList[7] == true
                                    ? MIXIN_
                                    : Colors.white,
                                onPressed: () {
                                  setState(() {
                                    selectType(7, '즉흥적인');
                                  });
                                },
                                containerColor: introduceList[7] == true
                                    ? MIXIN_
                                    : Colors.white,
                                text: '즉흥적인',
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
                              ElevatedButtonFormat(
                                borderSideColor: introduceList[8] == true
                                    ? MIXIN_2
                                    : MIXIN_BLACK_5,
                                backgroundColor: introduceList[8] == true
                                    ? MIXIN_
                                    : Colors.white,
                                onPressed: () {
                                  setState(() {
                                    selectType(8, '느긋한');
                                  });
                                },
                                containerColor: introduceList[8] == true
                                    ? MIXIN_
                                    : Colors.white,
                                text: '느긋한',
                              ),
                              SizedBox(width: 18.0.w),
                              ElevatedButtonFormat(
                                borderSideColor: introduceList[9] == true
                                    ? MIXIN_2
                                    : MIXIN_BLACK_5,
                                backgroundColor: introduceList[9] == true
                                    ? MIXIN_
                                    : Colors.white,
                                onPressed: () {
                                  setState(() {
                                    selectType(9, '성격이 급한');
                                  });
                                },
                                containerColor: introduceList[9] == true
                                    ? MIXIN_
                                    : Colors.white,
                                text: '성격이 급한',
                              ),
                            ],
                          ),
                          SizedBox(height: 12.0.h),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              ElevatedButtonFormat(
                                borderSideColor: introduceList[10] == true
                                    ? MIXIN_2
                                    : MIXIN_BLACK_5,
                                backgroundColor: introduceList[10] == true
                                    ? MIXIN_
                                    : Colors.white,
                                onPressed: () {
                                  setState(() {
                                    selectType(10, '파티를 좋아하는');
                                  });
                                },
                                containerColor: introduceList[10] == true
                                    ? MIXIN_
                                    : Colors.white,
                                text: '파티를 좋아하는',
                              ),
                              SizedBox(width: 18.0.w),
                              ElevatedButtonFormat(
                                borderSideColor: introduceList[11] == true
                                    ? MIXIN_2
                                    : MIXIN_BLACK_5,
                                backgroundColor: introduceList[11] == true
                                    ? MIXIN_
                                    : Colors.white,
                                onPressed: () {
                                  setState(() {
                                    selectType(11, '소수모임을 좋아하는');
                                  });
                                },
                                containerColor: introduceList[11] == true
                                    ? MIXIN_
                                    : Colors.white,
                                text: '소수모임을 좋아하는',
                              ),
                            ],
                          ),
                          SizedBox(height: 12.0.h),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              ElevatedButtonFormat(
                                borderSideColor: introduceList[12] == true
                                    ? MIXIN_2
                                    : MIXIN_BLACK_5,
                                backgroundColor: introduceList[12] == true
                                    ? MIXIN_
                                    : Colors.white,
                                onPressed: () {
                                  setState(() {
                                    selectType(12, '단호한');
                                  });
                                },
                                containerColor: introduceList[12] == true
                                    ? MIXIN_
                                    : Colors.white,
                                text: '단호한',
                              ),
                              SizedBox(width: 18.0.w),
                              ElevatedButtonFormat(
                                borderSideColor: introduceList[13] == true
                                    ? MIXIN_2
                                    : MIXIN_BLACK_5,
                                backgroundColor: introduceList[13] == true
                                    ? MIXIN_
                                    : Colors.white,
                                onPressed: () {
                                  setState(() {
                                    selectType(13, '우유부단한');
                                  });
                                },
                                containerColor: introduceList[13] == true
                                    ? MIXIN_
                                    : Colors.white,
                                text: '우유부단한',
                              ),
                            ],
                          ),
                          SizedBox(height: 12.0.h),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              ElevatedButtonFormat(
                                borderSideColor: introduceList[14] == true
                                    ? MIXIN_2
                                    : MIXIN_BLACK_5,
                                backgroundColor: introduceList[14] == true
                                    ? MIXIN_
                                    : Colors.white,
                                onPressed: () {
                                  setState(() {
                                    selectType(14, '감성적인');
                                  });
                                },
                                containerColor: introduceList[14] == true
                                    ? MIXIN_
                                    : Colors.white,
                                text: '감성적인',
                              ),
                              SizedBox(width: 18.0.w),
                              ElevatedButtonFormat(
                                borderSideColor: introduceList[15] == true
                                    ? MIXIN_2
                                    : MIXIN_BLACK_5,
                                backgroundColor: introduceList[15] == true
                                    ? MIXIN_
                                    : Colors.white,
                                onPressed: () {
                                  setState(() {
                                    selectType(15, '이성적인');
                                  });
                                },
                                containerColor: introduceList[15] == true
                                ? MIXIN_
                                : Colors.white,
                                text: '이성적인',
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 50.0.h),
                SmoothPageIndicator(
                  controller: controller, // PageController
                  count: 2,
                  effect: WormEffect(
                    spacing: 18.w,
                    dotColor: MIXIN_BLACK_5,
                    activeDotColor: MIXIN_POINT_COLOR,
                    dotHeight: 8.h,
                    dotWidth: 8.w,
                  ), // your preferred effect
                  onDotClicked: (index) {},
                ),
                SizedBox(height: 20.0.h),
                Row(
                  children: [
                    Visibility(
                      visible:
                          introduceList.where((element) => element).isNotEmpty
                              ? true
                              : false,
                      child: Stack(
                        clipBehavior: Clip.none,
                        children: [
                          Container(
                            width: 107.w,
                            height: 37.h,
                            padding: EdgeInsets.zero,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              color: MIXIN_,
                              border: Border.all(color: MIXIN_2, width: 1.5.w),
                              borderRadius: BorderRadius.circular(8.0.r),
                            ),
                            child: Text(
                              introduceList
                                      .where((element) => element)
                                      .isNotEmpty
                                  ? selectList[0]
                                  : '0',
                              style: TextStyle(
                                fontFamily: 'SUIT',
                                fontWeight: FontWeight.w500,
                                fontSize: 14.sp,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: 6.0.w),
                    Visibility(
                      visible:
                          introduceList.where((element) => element).length >= 2
                              ? true
                              : false,
                      child: Stack(
                        clipBehavior: Clip.none,
                        children: [
                          Container(
                            width: 107.w,
                            height: 37.h,
                            padding: EdgeInsets.zero,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              color: MIXIN_,
                              border: Border.all(color: MIXIN_2, width: 1.5.w),
                              borderRadius: BorderRadius.circular(8.0.r),
                            ),
                            child: Text(
                              introduceList
                                          .where((element) => element)
                                          .length >=
                                      2
                                  ? selectList[1]
                                  : '1',
                              style: TextStyle(
                                fontFamily: 'SUIT',
                                fontWeight: FontWeight.w500,
                                fontSize: 14.sp,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: 6.0.w),
                    Visibility(
                      visible:
                          introduceList.where((element) => element).length == 3
                              ? true
                              : false,
                      child: Stack(
                        clipBehavior: Clip.none,
                        children: [
                          Container(
                            width: 107.w,
                            height: 37.h,
                            padding: EdgeInsets.zero,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              color: MIXIN_,
                              border: Border.all(color: MIXIN_2, width: 1.5.w),
                              borderRadius: BorderRadius.circular(8.0.r),
                            ),
                            child: Text(
                              introduceList
                                          .where((element) => element)
                                          .length ==
                                      3
                                  ? selectList[2]
                                  : '2',
                              style: TextStyle(
                                fontFamily: 'SUIT',
                                fontWeight: FontWeight.w500,
                                fontSize: 14.sp,
                              ),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

// ignore: must_be_immutable
class ElevatedButtonFormat extends StatelessWidget {
  Color borderSideColor;
  Color backgroundColor;
  void Function() onPressed;
  Color containerColor;
  String text;

  ElevatedButtonFormat(
      {required this.borderSideColor,
      required this.backgroundColor,
      required this.onPressed,
      required this.containerColor,
      required this.text,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 138.w,
      height: 48.h,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          side: BorderSide(
            color: borderSideColor,
            width: 1.5.w,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0.r),
          ),
          padding: EdgeInsets.zero,
          elevation: 0.0,
          backgroundColor: backgroundColor,
        ),
        onPressed: onPressed,
        child: Container(
          color: containerColor,
          child: Text(
            text,
            style: TextStyle(
              fontFamily: 'SUIT',
              fontWeight: FontWeight.w500,
              fontSize: 16.0.sp,
              color: MIXIN_BLACK_1,
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
