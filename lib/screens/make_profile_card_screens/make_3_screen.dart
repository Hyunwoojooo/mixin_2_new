import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
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
  List<String> selectOptions = [];
  final storage = const FlutterSecureStorage();

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
        fillColor: selectList.where((element) => element).isNotEmpty
            ? MIXIN_POINT_COLOR
            : MIXIN_BLACK_4,
        onPressed: () async {
          if (selectList.where((element) => element).isNotEmpty) {
            Navigator.of(context).push(
              MaterialPageRoute(
                  builder: (context) => const MakeIntroduceScreen()),
            );
            await storage.write(
                key: 'userValues', value: jsonEncode(selectOptions));
            print(selectOptions);
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
                      backgroundColor: MIXIN_BLACK_5,
                      radius: 12.0.r,
                      child: Text(
                        '2',
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
                        '3',
                        style: TextStyle(
                          fontFamily: 'SUIT',
                          fontWeight: FontWeight.w500,
                          fontSize: 14.0.sp,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 24.0.h),
                Text(
                  '모임 참여 시\nOO이 가장 중요해요!',
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
                      '가치관',
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
                  width: 342.w,
                  height: 105.h,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        side: BorderSide(
                            color:
                                selectList[0] == true ? MIXIN_2 : MIXIN_BLACK_5,
                            width: 1.5.w),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0.r),
                        ),
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
                          selectOptions.clear();
                          selectOptions.add('소통');
                        }
                      });
                      print(selectOptions);
                    },
                    child: Container(
                      margin: EdgeInsets.fromLTRB(24.w, 26.h, 0, 0),
                      alignment: Alignment.centerLeft,
                      color: selectList[0] == true ? MIXIN_ : Colors.white,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '소통',
                            style: TextStyle(
                              fontFamily: 'SUIT',
                              fontWeight: FontWeight.w600,
                              fontSize: 20.0.sp,
                              color: MIXIN_BLACK_1,
                            ),
                            textAlign: TextAlign.center,
                          ),
                          SizedBox(height: 7.0.h),
                          Text(
                            '소통이 원활하게 이뤄지는 게 중요하지!',
                            style: TextStyle(
                              fontFamily: 'SUIT',
                              fontSize: 16.0.sp,
                              fontWeight: FontWeight.w600,
                              color: MIXIN_BLACK_3,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 12.0.h),
                SizedBox(
                  width: 342.w,
                  height: 105.h,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      side: BorderSide(
                          color:
                              selectList[1] == true ? MIXIN_2 : MIXIN_BLACK_5,
                          width: 1.5),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0.r),
                      ),
                      padding: EdgeInsets.zero,
                      elevation: 0.0,
                      backgroundColor:
                          selectList[1] == true ? MIXIN_ : Colors.white,
                    ),
                    onPressed: () {
                      setState(() {
                        selectList[1] = !selectList[1];
                        if (selectList[1] == true) {
                          selectList[0] = false;
                          selectList[2] = false;
                          selectOptions.clear();
                          selectOptions.add('열정');
                        }
                      });
                      print(selectOptions);
                    },
                    child: Container(
                      margin: EdgeInsets.fromLTRB(24.w, 26.h, 0, 0),
                      alignment: Alignment.centerLeft,
                      color: selectList[1] == true ? MIXIN_ : Colors.white,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '열정',
                            style: TextStyle(
                              fontFamily: 'SUIT',
                              fontWeight: FontWeight.w600,
                              fontSize: 20.0.sp,
                              color: MIXIN_BLACK_1,
                            ),
                            textAlign: TextAlign.center,
                          ),
                          SizedBox(height: 7.0.h),
                          Text(
                            '모든 일의 시작은 열정이 아니겠어?',
                            style: TextStyle(
                              fontFamily: 'SUIT',
                              fontSize: 16.0.sp,
                              fontWeight: FontWeight.w600,
                              color: MIXIN_BLACK_3,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 12.0.h),
                SizedBox(
                  width: 342.w,
                  height: 105.h,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        side: BorderSide(
                            color:
                                selectList[2] == true ? MIXIN_2 : MIXIN_BLACK_5,
                            width: 1.5.w),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0.r),
                        ),
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
                          selectOptions.clear();
                          selectOptions.add('약속');
                        }
                      });
                      print(selectOptions);
                    },
                    child: Container(
                      margin: EdgeInsets.fromLTRB(24.w, 26.h, 0, 0),
                      alignment: Alignment.centerLeft,
                      color: selectList[2] == true ? MIXIN_ : Colors.white,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '약속',
                            style: TextStyle(
                              fontFamily: 'SUIT',
                              fontWeight: FontWeight.w600,
                              fontSize: 20.0.sp,
                              color: MIXIN_BLACK_1,
                            ),
                            textAlign: TextAlign.center,
                          ),
                          SizedBox(height: 7.0.h),
                          Text(
                            '약속은 기본 매너 아니겠어?',
                            style: TextStyle(
                              fontFamily: 'SUIT',
                              fontSize: 16.0.sp,
                              fontWeight: FontWeight.w600,
                              color: MIXIN_BLACK_3,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
