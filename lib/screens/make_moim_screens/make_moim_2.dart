import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../const/colors.dart';
import '../../layout/custom_floating_action_button.dart';
import 'buttons/choice_gender_button.dart';
import 'buttons/choice_numb_button.dart';
import 'buttons/choice_resistar_button.dart';
import 'make_moim_3.dart';

class MeetingPage2 extends StatefulWidget {
  const MeetingPage2({Key? key}) : super(key: key);

  @override
  State<MeetingPage2> createState() => _MeetingPage2State();
}

class _MeetingPage2State extends State<MeetingPage2> {
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
                Row(
                  children: [
                    Image.asset(
                      'assets/images/icons/back_icon_black_4x.png',
                      width: 26.w,
                      height: 26.h,
                      fit: BoxFit.contain,
                    ),
                    SizedBox(width: 16.w),
                    Text(
                      '모임 만들기',
                      style: TextStyle(
                        fontFamily: 'SUIT',
                        fontWeight: FontWeight.w600,
                        fontSize: 18.sp,
                        color: MIXIN_BLACK_1,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            onTap: () {
              Navigator.pop(context);
            },
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.fromLTRB(24.w, 25.h, 24.w, 0),
            child: Column(
              children: [
                SizedBox(
                  height: 600.h,
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Text(
                            '인원수',
                            style: TextStyle(
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w600,
                              fontFamily: 'SUIT',
                              color: MIXIN_BLACK_1,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 16.h),
                      const ChoiceNumbButton(),
                      SizedBox(height: 36.h),
                      Row(
                        children: [
                          Text(
                            '성별',
                            style: TextStyle(
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w600,
                              fontFamily: 'SUIT',
                              color: MIXIN_BLACK_1,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 16.h),
                      const ChoiceGenderButton(),
                      SizedBox(height: 36.h),
                      Row(
                        children: [
                          Text(
                            '가입기준',
                            style: TextStyle(
                              fontFamily: 'SUIT',
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 16.h),
                      const ChoiceResisterButton(),
                    ],
                  ),
                ),
                SizedBox(height: 36.h),
                ElevatedButton(
                  style: TextButton.styleFrom(
                    fixedSize: Size(342.w, 56.h),
                    elevation: 0,
                    backgroundColor: MIXIN_POINT_COLOR,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.r),
                    ),
                  ),
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => const MeetingPage3(),
                      ),
                    );
                  },
                  child: Text(
                    '다음',
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 18.sp,
                      fontFamily: 'SUIT',
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
