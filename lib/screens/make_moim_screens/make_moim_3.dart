import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../const/colors.dart';
import '../../layout/custom_floating_action_button.dart';
import 'buttons/moim_cycle_button.dart';
import 'buttons/moim_rules.dart';
import 'buttons/moim_term_button.dart';
import 'make_moim_4.dart';

class MeetingPage3 extends StatefulWidget {
  const MeetingPage3({Key? key}) : super(key: key);

  @override
  State<MeetingPage3> createState() => _MeetingPage3State();
}

class _MeetingPage3State extends State<MeetingPage3> {
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
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '썸네일',
                          style: TextStyle(
                            fontFamily: 'SUIT',
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w600,
                            color: MIXIN_BLACK_1,
                          ),
                        ),
                        SizedBox(height: 16.h),
                        Container(
                          height: 188,
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                            color: Colors.grey.withOpacity(0.8),
                            borderRadius: BorderRadius.circular(24.r),
                          ),
                          alignment: Alignment.center,
                          child: Text(
                            '이미지 선택',
                            style: TextStyle(
                              fontFamily: 'SUIT',
                              fontWeight: FontWeight.w600,
                              fontSize: 24.sp,
                              color: WHITE,
                            ),
                          ),
                        ),
                        SizedBox(height: 36.h),
                        Text(
                          '모집기간',
                          style: TextStyle(
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w600,
                            fontFamily: 'SUIT',
                            color: MIXIN_BLACK_1,
                          ),
                        ),
                        SizedBox(height: 16.h),
                        const MoimTermButton(),
                        SizedBox(height: 36.h),
                        Text(
                          '모임 주기',
                          style: TextStyle(
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w600,
                            fontFamily: 'SUIT',
                            color: MIXIN_BLACK_1,
                          ),
                        ),
                        SizedBox(height: 16.h),
                        const MoimCycleButton(),
                        SizedBox(height: 36.h),
                        Text(
                          '모임 규칙',
                          style: TextStyle(
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w600,
                            fontFamily: 'SUIT',
                            color: MIXIN_BLACK_1,
                          ),
                        ),
                        SizedBox(height: 16.h),
                        const MoimRules(),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 36.h,),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
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
                        builder: (context) => const MakeMoim4(),
                      ),
                    );
                  },
                  child: Text(
                    '다음',
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 18.sp,
                        fontFamily: 'SUIT'),
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
