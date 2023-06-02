import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mixin_2/const/term_of_service_text/community_term_text.dart';

import '../../const/colors.dart';


class CommunityUseTerm extends StatelessWidget {
  CommunityUseTerm({Key? key}) : super(key: key);

  final CommunityTermText communityUseTerm = CommunityTermText();
  final String first = CommunityTermText().first;
  final String second = CommunityTermText().second;
  final String third = CommunityTermText().third;
  final String fourth = CommunityTermText().fourth;
  final String fifth = CommunityTermText().fifth;
  final String sixth = CommunityTermText().sixth;
  final String seventh = CommunityTermText().seventh;
  final String eighth = CommunityTermText().eighth;
  final String ninth = CommunityTermText().ninth;
  final String tenth = CommunityTermText().tenth;
  final String eleventh = CommunityTermText().eleventh;
  final String twelfth = CommunityTermText().twelfth;

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
            borderRadius: BorderRadius.circular(8.0.r),
          ),
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text(
            '확인',
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
            padding: EdgeInsets.symmetric(vertical: 24.0.h, horizontal: 24.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '커뮤니티 이용규칙 확인 (필수)',
                  style: TextStyle(
                    fontFamily: 'SUIT',
                    fontWeight: FontWeight.w600,
                    fontSize: 26.0.sp,
                  ),
                ),
                SizedBox(height: 24.0.h),
                Text(
                  '커뮤니티 이용규칙 안내',
                  style: TextStyle(
                    fontFamily: 'SUIT',
                    fontWeight: FontWeight.w600,
                    fontSize: 20.0.sp,
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
                  '커뮤니티 운영 시스템',
                  style: TextStyle(
                    fontFamily: 'SUIT',
                    fontWeight: FontWeight.w600,
                    fontSize: 20.0.sp,
                  ),
                ),
                SizedBox(height: 16.sp),
                Text(
                  second,
                  style: TextStyle(
                    fontFamily: 'SUIT',
                    fontWeight: FontWeight.w500,
                    fontSize: 12.0.sp,
                  ),
                ),
                SizedBox(height: 24.0.h),
                Text(
                  '유출 방지 시스템',
                  style: TextStyle(
                    fontFamily: 'SUIT',
                    fontWeight: FontWeight.w600,
                    fontSize: 20.0.sp,
                  ),
                ),
                SizedBox(height: 16.h),
                Text(
                  third,
                  style:  TextStyle(
                    fontFamily: 'SUIT',
                    fontWeight: FontWeight.w500,
                    fontSize: 12.0.sp,
                  ),
                ),
                SizedBox(height: 24.0.h),
                Text(
                  '금지 행위',
                  style: TextStyle(
                    fontFamily: 'SUIT',
                    fontWeight: FontWeight.w600,
                    fontSize: 20.0.sp,
                  ),
                ),
                SizedBox(height: 16.h),
                Text(
                  fourth,
                  style: TextStyle(
                    fontFamily: 'SUIT',
                    fontWeight: FontWeight.w500,
                    fontSize: 12.0.sp,
                  ),
                ),
                SizedBox(height: 24.0.h),
                Text(
                  '일반 금지 행위',
                  style: TextStyle(
                    fontFamily: 'SUIT',
                    fontWeight: FontWeight.w600,
                    fontSize: 20.0.sp,
                  ),
                ),
                SizedBox(height: 16.h),
                Text(
                  fifth,
                  style: TextStyle(
                    fontFamily: 'SUIT',
                    fontWeight: FontWeight.w500,
                    fontSize: 12.0.sp,
                  ),
                ),
                SizedBox(height: 24.0.h),
                Text(
                  '정치·사회 관련 금지 행위',
                  style: TextStyle(
                    fontFamily: 'SUIT',
                    fontWeight: FontWeight.w600,
                    fontSize: 20.0.sp,
                  ),
                ),
                SizedBox(height: 16.h),
                Text(
                  sixth,
                  style: TextStyle(
                    fontFamily: 'SUIT',
                    fontWeight: FontWeight.w500,
                    fontSize: 12.0.sp,
                  ),
                ),
                SizedBox(height: 24.0.h),
                Text(
                  '홍보 및 판매 관련 금지 행위',
                  style: TextStyle(
                    fontFamily: 'SUIT',
                    fontWeight: FontWeight.w600,
                    fontSize: 20.0.sp,
                  ),
                ),
                SizedBox(height: 16.h),
                Text(
                  seventh,
                  style: TextStyle(
                    fontFamily: 'SUIT',
                    fontWeight: FontWeight.w500,
                    fontSize: 12.0.sp,
                  ),
                ),
                SizedBox(height: 24.0.h),
                Text(
                  '게시물 작성·수정·삭제 규칙',
                  style: TextStyle(
                    fontFamily: 'SUIT',
                    fontWeight: FontWeight.w600,
                    fontSize: 20.0.sp,
                  ),
                ),
                SizedBox(height: 16.h),
                Text(
                  eighth,
                  style: TextStyle(
                    fontFamily: 'SUIT',
                    fontWeight: FontWeight.w500,
                    fontSize: 12.0.sp,
                  ),
                ),
                SizedBox(height: 24.0.h),
                Text(
                  '게시판 관리자 제도',
                  style: TextStyle(
                    fontFamily: 'SUIT',
                    fontWeight: FontWeight.w600,
                    fontSize: 20.0.sp,
                  ),
                ),
                SizedBox(height: 16.h),
                Text(
                  ninth,
                  style: TextStyle(
                    fontFamily: 'SUIT',
                    fontWeight: FontWeight.w500,
                    fontSize: 12.0.sp,
                  ),
                ),
                SizedBox(height: 24.0.h),
                Text(
                  '허위사실 유포 및 명예훼손 게시물에 대한 게시 중단 요청',
                  style: TextStyle(
                    fontFamily: 'SUIT',
                    fontWeight: FontWeight.w600,
                    fontSize: 20.0.sp,
                  ),
                ),
                SizedBox(height: 16.h),
                Text(
                  tenth,
                  style: TextStyle(
                    fontFamily: 'SUIT',
                    fontWeight: FontWeight.w500,
                    fontSize: 12.0.sp,
                  ),
                ),
                SizedBox(height: 24.0.h),
                Text(
                  '전기통신사업법에 따른 불법촬영물 유통 금지',
                  style: TextStyle(
                    fontFamily: 'SUIT',
                    fontWeight: FontWeight.w600,
                    fontSize: 20.0.sp,
                  ),
                ),
                SizedBox(height: 16.h),
                Text(
                  eleventh,
                  style: TextStyle(
                    fontFamily: 'SUIT',
                    fontWeight: FontWeight.w500,
                    fontSize: 12.0.sp,
                  ),
                ),
                SizedBox(height: 24.0.h),
                Text(
                  '기타',
                  style: TextStyle(
                    fontFamily: 'SUIT',
                    fontWeight: FontWeight.w600,
                    fontSize: 20.0.sp,
                  ),
                ),
                SizedBox(height: 16.h),
                Text(
                  twelfth,
                  style: TextStyle(
                    fontFamily: 'SUIT',
                    fontWeight: FontWeight.w500,
                    fontSize: 12.0.sp,
                  ),
                ),
                SizedBox(height: 100.0.h),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
