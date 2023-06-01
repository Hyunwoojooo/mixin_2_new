import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mixin_2/components/moim_card_format.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';

import '../../../const/colors.dart';

class MainMoimScreen extends StatefulWidget {
  const MainMoimScreen({Key? key}) : super(key: key);

  @override
  State<MainMoimScreen> createState() => _MainMoimScreenState();
}

class _MainMoimScreenState extends State<MainMoimScreen>
    with SingleTickerProviderStateMixin {
  List<bool> _isHeartSelect = List.filled(5, false);
  List<String> tagText = ['LP', '음악감상', '논알콜'];
  bool _isThunderSelect = false;

  void onTap(int index) {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(76.h),
        child: AppBar(
          backgroundColor: Colors.white,
          automaticallyImplyLeading: false,
          toolbarHeight: 110.h,
          elevation: 0.0,
          titleSpacing: 24,
          title: Column(
            children: [
              SizedBox(height: 25.h),
              Text(
                '모임',
                style: TextStyle(
                  fontFamily: 'SUIT',
                  fontWeight: FontWeight.w700,
                  fontSize: 28.0.sp,
                  color: MIXIN_BLACK_1,
                ),
              ),
            ],
          ),
          flexibleSpace: SizedBox(
            height: 76.h,
            width: MediaQuery.of(context).size.width,
            child: Padding(
              padding: EdgeInsets.only(right: 10.w),
              child: Column(
                children: [
                  SizedBox(height: 25.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      IconButton(
                        onPressed: () {},
                        padding: EdgeInsets.only(top: 6.h),
                        icon: Image.asset(
                          'assets/images/icon_search.png',
                          // width: 30,
                          // height: 30,
                          color: Colors.black,
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Image.asset(
                          'assets/images/icons/bell.png',
                          color: Colors.black,
                          width: 26,
                          height: 26,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 15.h),
        child: ListView(
          scrollDirection: Axis.vertical,
          children: [
            // 카테고리
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.0.w),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    TextButton(
                      style: TextButton.styleFrom(
                        minimumSize: Size.zero,
                        padding: EdgeInsets.zero,
                        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                      ),
                      onPressed: () {},
                      child: Text(
                        '전체보기',
                        style: TextStyle(
                          fontFamily: 'SUIT',
                          fontWeight: FontWeight.w500,
                          fontSize: 18.sp,
                          color: const Color(0xFFB1B1B7),
                        ),
                        textAlign: TextAlign.start,
                      ),
                    ),
                    SizedBox(width: 24.w),
                    TextButton(
                      style: TextButton.styleFrom(
                        minimumSize: Size.zero,
                        padding: EdgeInsets.zero,
                        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                      ),
                      onPressed: () {},
                      child: Text(
                        'IT/개발',
                        style: TextStyle(
                          fontFamily: 'SUIT',
                          fontWeight: FontWeight.w500,
                          fontSize: 18.sp,
                          color: const Color(0xFFB1B1B7),
                        ),
                        textAlign: TextAlign.start,
                      ),
                    ),
                    SizedBox(width: 24.w),
                    TextButton(
                      style: TextButton.styleFrom(
                        minimumSize: Size.zero,
                        padding: EdgeInsets.zero,
                        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                      ),
                      onPressed: () {},
                      child: Text(
                        '디자인',
                        style: TextStyle(
                          fontFamily: 'SUIT',
                          fontWeight: FontWeight.w500,
                          fontSize: 18.sp,
                          color: const Color(0xFFB1B1B7),
                        ),
                        textAlign: TextAlign.start,
                      ),
                    ),
                    SizedBox(width: 24.w),
                    TextButton(
                      style: TextButton.styleFrom(
                        minimumSize: Size.zero,
                        padding: EdgeInsets.zero,
                        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                      ),
                      onPressed: () {},
                      child: Text(
                        '문화활동',
                        style: TextStyle(
                          fontFamily: 'SUIT',
                          fontWeight: FontWeight.w500,
                          fontSize: 18.sp,
                          color: const Color(0xFFB1B1B7),
                        ),
                        textAlign: TextAlign.start,
                      ),
                    ),
                    SizedBox(width: 24.w),
                    TextButton(
                      style: TextButton.styleFrom(
                        minimumSize: Size.zero,
                        padding: EdgeInsets.zero,
                        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                      ),
                      onPressed: () {},
                      child: Text(
                        '운동',
                        style: TextStyle(
                          fontFamily: 'SUIT',
                          fontWeight: FontWeight.w500,
                          fontSize: 18.sp,
                          color: const Color(0xFFB1B1B7),
                        ),
                        textAlign: TextAlign.start,
                      ),
                    ),
                    SizedBox(width: 24.w),
                    TextButton(
                      style: TextButton.styleFrom(
                        minimumSize: Size.zero,
                        padding: EdgeInsets.zero,
                        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                      ),
                      onPressed: () {},
                      child: Text(
                        '반려동물',
                        style: TextStyle(
                          fontFamily: 'SUIT',
                          fontWeight: FontWeight.w500,
                          fontSize: 18.sp,
                          color: const Color(0xFFB1B1B7),
                        ),
                        textAlign: TextAlign.start,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 10.h),
            const Divider(
              indent: 24,
              endIndent: 24,
              thickness: 2,
              color: MIXIN_BLACK_2,
            ),
            SizedBox(height: 11.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.0.w),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '총 13건',
                    style: TextStyle(
                      fontFamily: 'SUIT',
                      fontWeight: FontWeight.w500,
                      fontSize: 14.0.sp,
                      color: const Color(0xFFB1B1B7),
                    ),
                  ),
                  Row(
                    children: [
                      // 번개만
                      TextButton(
                        style: TextButton.styleFrom(
                          minimumSize: Size.zero,
                          padding: EdgeInsets.zero,
                          tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                        ),
                        onPressed: () {
                          setState(() {
                            _isThunderSelect = !_isThunderSelect;
                          });
                        },
                        child: Row(
                          children: [
                            Image.asset(
                              'assets/images/icons/thunder_moim_icon.png',
                              width: 15.w,
                              color: _isThunderSelect ? null : MIXIN_BLACK_4,
                            ),
                            SizedBox(
                              width: 5.w,
                            ),
                            Text(
                              '번개만',
                              style: TextStyle(
                                fontFamily: 'SUIT',
                                fontWeight: FontWeight.w500,
                                fontSize: 14.sp,
                                color: _isThunderSelect
                                    ? MIXIN_POINT_COLOR
                                    : MIXIN_BLACK_4,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(width: 16.w),
                      // 정렬
                      TextButton(
                        style: TextButton.styleFrom(
                          minimumSize: Size.zero,
                          padding: EdgeInsets.zero,
                          tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                        ),
                        onPressed: () {},
                        child: Row(
                          children: [
                            Text(
                              '날짜순',
                              style: TextStyle(
                                fontFamily: 'SUIT',
                                fontWeight: FontWeight.w500,
                                fontSize: 14.sp,
                                color: MIXIN_BLACK_3,
                              ),
                            ),
                            SizedBox(width: 5.w),
                            Image.asset(
                              'assets/images/icons/sort_icon.png',
                              width: 15.w,
                              color: MIXIN_BLACK_3,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 16.h),

            // 정규 모임 카드
            MoimCardBig(
              moimType: '스터디',
              dDay: 10,
              imageAsset: 'assets/images/category_images/music.png',
              categoryName: '음악',
              memberGender: 0,
              totalMember: 14,
              currentMember: 4,
              onPressed: (){},
              heartColor: MIXIN_POINT_COLOR,
              moimName: '역전할맥 5명 구합니다앙아아아아아아아아앙',
              tagText: tagText,
            ),
            // 번개 모임 카드
            MoimThunder(
              imageAsset: 'assets/images/category_images/music.png',
              categoryName: '음악',
              memberGender: 1,
              totalMember: 5,
              currentMember: 2,
              onPressed: (){},
              moimName: '역전할맥 5명 구합니다앙아아아아아아아아앙',
              moimDate: '12/1 (목)',
              moimPlace: '6호관 앞 흡연부스 오세오세',
            ),
            MoimThunder(
              imageAsset: 'assets/images/category_images/music.png',
              categoryName: '음악',
              memberGender: 1,
              totalMember: 5,
              currentMember: 2,
              onPressed: (){},
              moimName: '역전할맥 5명 구합니다앙아아아아아아아아앙',
              moimDate: '12/1 (목)',
              moimPlace: '6호관 앞 흡연부스 오세오세',
            ),
            MoimCardBig(
              moimType: '스터디',
              dDay: 10,
              imageAsset: 'assets/images/category_images/music.png',
              categoryName: '음악',
              memberGender: 0,
              totalMember: 14,
              currentMember: 4,
              onPressed: (){},
              heartColor: MIXIN_POINT_COLOR,
              moimName: 'LP바 같이 가실분',
              tagText: tagText,
            ),
            MoimCardBig(
              moimType: '스터디',
              dDay: 10,
              imageAsset: 'assets/images/category_images/music.png',
              categoryName: '음악',
              memberGender: 0,
              totalMember: 14,
              currentMember: 4,
              onPressed: (){},
              heartColor: MIXIN_POINT_COLOR,
              moimName: 'LP바 같이 가실분',
              tagText: tagText,
            ),
          ],
        ),
      ),
    );
  }
}
