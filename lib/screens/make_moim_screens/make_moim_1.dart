import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mixin_2/screens/make_moim_screens/make_moim_tag.dart';
import '../../const/colors.dart';
import 'buttons/category_button.dart';

class MakeMoim1 extends StatefulWidget {
  @override
  State<MakeMoim1> createState() => _MakeMoim1State();
}

class _MakeMoim1State extends State<MakeMoim1> {
  final int maxLength = 500;
  String textValue = "";
  Color _grey = MIXIN_BLACK_4; //MIXIN_BLACK_5의 색이 잘 안보여서 임시대체

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
          child: Column(
            children: [
              SizedBox(height: 25.h),
              SizedBox(
                height: 450.h,
                child: Padding(
                  padding: EdgeInsets.fromLTRB(24.w, 0, 24.w, 0),
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        TextField(
                          decoration: InputDecoration(
                            hintText: '모임명을 작성해주세요',
                            hintStyle: TextStyle(
                              fontSize: 24.sp,
                              fontFamily: 'SUIT',
                              fontWeight: FontWeight.w600,
                              color: MIXIN_BLACK_4,
                            ),
                            counterStyle: TextStyle(
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w500,
                              fontFamily: 'SUIT',
                              color: const Color(0xFFCED0D5),
                            ),
                            border: InputBorder.none,
                            counterText: '',
                          ),
                          style: TextStyle(
                            fontSize: 24.sp,
                            fontFamily: 'SUIT',
                            fontWeight: FontWeight.w600,
                          ),
                          maxLength: 25,
                        ),
                        SizedBox(height: 10.h),
                        //카테고리 버튼
                        const CartegoryButton(),
                        SizedBox(height: 4.h),
                        Divider(thickness: 1.w, height: 20.h),
                        TextField(
                          decoration: InputDecoration(
                            hintText: "모임에 대한 정보를 입력해주세요.",
                            hintStyle: TextStyle(
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w500,
                              fontFamily: 'SUIT',
                              color: MIXIN_BLACK_4,
                            ),
                            counterStyle: TextStyle(
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w500,
                              fontFamily: 'SUIT',
                              color: const Color(0xFFCED0D5),
                            ),
                            border: InputBorder.none,
                          ),
                          maxLength: maxLength,
                          maxLines: null,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Divider(thickness: 8, height: 8.h, color: _grey),
              SizedBox(height: 180.h),
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
                      builder: (context) =>
                      const TagPage(),
                    ),
                  );
                },
                child: Text(
                  '다음',
                  style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 18.sp,
                      fontFamily: 'SUIT',
                    color: WHITE,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
