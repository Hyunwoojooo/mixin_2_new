import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mixin_2/const/term_of_service_text/personal_term_text.dart';

import '../../const/colors.dart';


class PersonalIfmterm extends StatelessWidget {
  PersonalIfmterm({Key? key}) : super(key: key);

  final PersonalTermText serviceTermText = PersonalTermText();
  final String first = PersonalTermText().first;
  final String second = PersonalTermText().second;
  final String third = PersonalTermText().third;
  final String fourth = PersonalTermText().fourth;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60.h),
        child: AppBar(
          backgroundColor: Colors.white,
          elevation: 0.0,
          titleSpacing: -35,
          title: GestureDetector(
            child: Column(
              children: [
                SizedBox(height: 20.h),
                Image.asset(
                  'assets/images/icons/close_icon_black_3x.png',
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
      floatingActionButton: Container(
        decoration: const BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.white,
              spreadRadius: 30.0,
              blurRadius: 20.0,
            ),
          ],
        ),
        width: 342.w,
        height: 56.h,
        child: RawMaterialButton(
          fillColor: MIXIN_POINT_COLOR,
          elevation: 0.0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8.0),
          ),
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text(
            '확인하고 동의',
            style: TextStyle(
                color: Colors.white,
                fontSize: 18.sp,
                fontFamily: 'SUIT',
                fontWeight: FontWeight.w600),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 24.0.h, horizontal: 24.0.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                 Text(
                  '개인정보 수집 및 이용 동의 (필수)',
                  style: TextStyle(
                    fontFamily: 'SUIT',
                    fontWeight: FontWeight.w600,
                    fontSize: 24.0.sp,
                  ),
                ),
                 SizedBox(height: 24.0.h),
                Text(
                  '수집하는 개인정보의 항목',
                  style: TextStyle(
                    fontFamily: 'SUIT',
                    fontWeight: FontWeight.w600,
                    fontSize: 18.0.sp,
                  ),
                ),
                 SizedBox(height: 16.h),
                Text(
                  first,
                  style: TextStyle(
                    fontFamily: 'SUIT',
                    fontWeight: FontWeight.w500,
                    fontSize: 12.0.sp,
                  ),
                ),
                SizedBox(height: 24.0.h),
                Text(
                  '수집한 개인정보의 처리 목적',
                  style: TextStyle(
                    fontFamily: 'SUIT',
                    fontWeight: FontWeight.w600,
                    fontSize: 18.0.sp,
                  ),
                ),
                SizedBox(height: 16.h),
                Text(
                  second,
                  style: TextStyle(
                    fontFamily: 'SUIT',
                    fontWeight: FontWeight.w500,
                    fontSize: 11.0.sp,
                  ),
                ),
                SizedBox(height: 24.0.h),
                Text(
                  '수집한 개인정보의 보관 및 파기',
                  style: TextStyle(
                    fontFamily: 'SUIT',
                    fontWeight: FontWeight.w600,
                    fontSize: 18.0.sp,
                  ),
                ),
                SizedBox(height: 16.h),
                Text(
                  third,
                  style: TextStyle(
                    fontFamily: 'SUIT',
                    fontWeight: FontWeight.w500,
                    fontSize: 11.0.sp,
                  ),
                ),
                SizedBox(height: 24.0.h),
                Text(
                  '기타',
                  style: TextStyle(
                    fontFamily: 'SUIT',
                    fontWeight: FontWeight.w600,
                    fontSize: 18.0.sp,
                  ),
                ),
                SizedBox(height: 16.h),
                Text(
                  fourth,
                  style: TextStyle(
                    fontFamily: 'SUIT',
                    fontWeight: FontWeight.w500,
                    fontSize: 11.0.sp,
                  ),
                ),
                SizedBox(height: 100.0.h)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
