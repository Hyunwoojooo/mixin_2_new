import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../components/moim_card_format.dart';
import '../../../const/colors.dart';
import '../../../layout/category_layout_round.dart';

class MainHomeHomeScreen extends StatefulWidget {
  const MainHomeHomeScreen({Key? key}) : super(key: key);

  @override
  State<MainHomeHomeScreen> createState() => _MainHomeHomeScreenState();
}

class _MainHomeHomeScreenState extends State<MainHomeHomeScreen> {
  final List<bool> _selectScript = List.filled(3, false);
  List<String> tagText = ['필카', '야외', '사진'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          //배너
          SizedBox(
            height: 251.h,
            child: Stack(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 176.h,
                  color: const Color(0xFF495FE7),
                  alignment: Alignment.center,
                  child: Column(
                    children: [
                      SizedBox(height: 24.h),
                      Text(
                        '우리들의 놀이터, 믹스인',
                        style: TextStyle(
                          fontFamily: 'SUIT',
                          fontWeight: FontWeight.w500,
                          fontSize: 14.0.sp,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(height: 4.h),
                      Text(
                        '더 잘 활용하는 방법은?',
                        style: TextStyle(
                          fontFamily: 'SUIT',
                          fontWeight: FontWeight.w600,
                          fontSize: 24.0.sp,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
                Positioned(
                    top: 91.h,
                    left: 24.w,
                    child: SizedBox(
                      width: 342.w,
                      height: 160.h,
                      child: Image.asset('assets/images/maskgroup.png'),
                    ))
              ],
            ),
          ),
          //카테고리
          Padding(
            padding: EdgeInsets.only(left: 24.w, top: 12.h),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(right: 8.w),
                    child: CategoryLayoutRound(
                      mainSizedBoxWidth: 103.w,
                      borderSideColor: MIXIN_BLACK_5,
                      backgroundColor: MIXIN_BLACK_5,
                      onPressed: () {},
                      containerColor: MIXIN_BLACK_5,
                      imageAsset:
                          'assets/images/category_images/category_all.png',
                      imageWidth: 24.w,
                      imageHeight: 21.47.h,
                      sizedBoxWidth: 8.0.w  ,
                      text: '전체보기',
                    ),
                  ),
                  CategoryLayoutRound(
                    mainSizedBoxWidth: 103.w,
                    borderSideColor: MIXIN_BLACK_5,
                    backgroundColor: MIXIN_BLACK_5,
                    onPressed: () {},
                    containerColor: MIXIN_BLACK_5,
                    imageAsset: 'assets/images/category_images/IT.png',
                    imageWidth: 24.w,
                    imageHeight: 21.47.h,
                    sizedBoxWidth: 8.0.w,
                    text: 'IT/개발',
                  ),
                  SizedBox(width: 8.w),
                  CategoryLayoutRound(
                    mainSizedBoxWidth: 103.w,
                    borderSideColor: MIXIN_BLACK_5,
                    backgroundColor: MIXIN_BLACK_5,
                    onPressed: () {},
                    containerColor: MIXIN_BLACK_5,
                    imageAsset: 'assets/images/category_images/music.png',
                    imageWidth: 24.w,
                    imageHeight: 24.w,
                    sizedBoxWidth: 8.0.w,
                    text: '음악',
                  ),
                  SizedBox(width: 8.w),
                  CategoryLayoutRound(
                    mainSizedBoxWidth: 103.w,
                    borderSideColor: MIXIN_BLACK_5,
                    backgroundColor: MIXIN_BLACK_5,
                    onPressed: () {},
                    containerColor: MIXIN_BLACK_5,
                    imageAsset: 'assets/images/category_images/music.png',
                    imageWidth: 24.w,
                    imageHeight: 24.h,
                    sizedBoxWidth: 8.0.w,
                    text: '음악',
                  ),
                  SizedBox(width: 8.w),
                  CategoryLayoutRound(
                    mainSizedBoxWidth: 103.w,
                    borderSideColor: MIXIN_BLACK_5,
                    backgroundColor: MIXIN_BLACK_5,
                    onPressed: () {},
                    containerColor: MIXIN_BLACK_5,
                    imageAsset: 'assets/images/category_images/music.png',
                    imageWidth: 24.w,
                    imageHeight: 24.h,
                    sizedBoxWidth: 8.0.w,
                    text: '음악',
                  ),
                ],
              ),
            ),
          ),
          // 정규모임 카드
          Padding(
            padding: EdgeInsets.only(left: 24.w, top: 16.h),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  MoimCardSmall(
                    moimType: '스터디',
                    dDay: 7,
                    imageAsset: 'assets/images/category_images/music.png',
                    categoryName: '음악',
                    memberGender: 1,
                    totalMember: 6,
                    currentMember: 1,
                    onPressed: (){},
                    heartColor: MIXIN_POINT_COLOR,
                    moimName: '필름감아',
                    tagText: tagText,
                  ),
                  SizedBox(width: 12.w),
                  MoimCardSmall(
                    moimType: '스터디',
                    dDay: 7,
                    imageAsset: 'assets/images/category_images/music.png',
                    categoryName: '음악',
                    memberGender: 2,
                    totalMember: 6,
                    currentMember: 1,
                    onPressed: (){},
                    heartColor: MIXIN_POINT_COLOR,
                    moimName: '필름감아',
                    tagText: tagText,
                  ),
                  SizedBox(width: 12.w),
                  MoimCardSmall(
                    moimType: '프로젝트',
                    dDay: 14,
                    imageAsset: 'assets/images/category_images/IT.png',
                    categoryName: 'IT/개발',
                    memberGender: 0,
                    totalMember: 6,
                    currentMember: 1,
                    onPressed: (){},
                    heartColor: MIXIN_POINT_COLOR,
                    moimName: '플러터 개발자 구합니다.',
                    tagText: tagText,
                  ),
                  SizedBox(width: 12.w),
                  MoimCardSmall(
                    moimType: '스터디',
                    dDay: 7,
                    imageAsset: 'assets/images/category_images/music.png',
                    categoryName: '음악',
                    memberGender: 1,
                    totalMember: 6,
                    currentMember: 1,
                    onPressed: (){},
                    heartColor: MIXIN_POINT_COLOR,
                    moimName: '필름감아',
                    tagText: tagText,
                  ),
                  SizedBox(width: 12.w),
                  MoimCardSmall(
                    moimType: '스터디',
                    dDay: 7,
                    imageAsset: 'assets/images/category_images/music.png',
                    categoryName: '음악',
                    memberGender: 1,
                    totalMember: 6,
                    currentMember: 1,
                    onPressed: (){},
                    heartColor: MIXIN_POINT_COLOR,
                    moimName: '필름감아',
                    tagText: tagText,
                  ),
                ],
              ),
            ),
          ),
          const Divider(
            thickness: 8,
            color: MIXIN_BLACK_5,
          ),
          // 활동 추천
          Padding(
            padding:
                EdgeInsets.only(left: 24.w, top: 24.h, right: 0, bottom: 32.h),
            child: Column(
              children: [
                // 타이틀
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '이 활동(추천)은 어떠세요?',
                      style: TextStyle(
                          fontFamily: 'SUIT',
                          fontWeight: FontWeight.w700,
                          fontSize: 22.sp),
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 24.0.w),
                      child: TextButton(
                        style: TextButton.styleFrom(
                          minimumSize: Size.zero,
                          tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                          padding: EdgeInsets.symmetric(vertical: 7.h),
                          backgroundColor: Colors.white,
                        ),
                        child: const Text(
                          'All >',
                          style: TextStyle(
                              color: MIXIN_BLACK_4,
                              fontSize: 14,
                              fontFamily: 'SUIT',
                              fontWeight: FontWeight.w500),
                        ),
                        onPressed: () {},
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 25.h),
                // 콘텐츠
                Column(
                  children: [
                    // 콘텐츠 1
                    Row(
                      children: [
                        Container(
                          height: 90,
                          width: 90,
                          decoration: BoxDecoration(
                            color: MIXIN_BLACK_5,
                            borderRadius: BorderRadius.circular(16),
                          ),
                        ),
                        SizedBox(width: 25.w),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              '안양시청',
                              style: TextStyle(
                                  fontFamily: 'SUIT',
                                  fontWeight: FontWeight.w600,
                                  fontSize: 12.0.sp,
                                  color: MIXIN_POINT_COLOR),
                            ),
                            SizedBox(height: 4.h),
                            Text(
                              '안양시 캐릭터 콘테스트',
                              style: TextStyle(
                                  fontFamily: 'SUIT',
                                  fontWeight: FontWeight.w600,
                                  fontSize: 18.sp,
                                  color: MIXIN_BLACK_1),
                            ),
                            SizedBox(height: 12.h),
                            Container(
                              width: 180.w,
                              height: 28.h,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                  color: MIXIN_BLACK_5,
                                  borderRadius: BorderRadius.circular(16)),
                              child: Text(
                                '2023.12.01 ~ 2023.12.31',
                                style: TextStyle(
                                    fontFamily: 'SUIT',
                                    fontWeight: FontWeight.w500,
                                    fontSize: 14.sp,
                                    color: MIXIN_BLACK_2),
                              ),
                            )
                          ],
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor:
                                _selectScript[0] ? Colors.white : MIXIN_BLACK_5,
                            fixedSize: Size(16.w, 16.h),
                            shape: const CircleBorder(),
                            side: const BorderSide(
                                width: 2, color: MIXIN_BLACK_5),
                            elevation: 0,
                          ),
                          onPressed: () {
                            setState(() {
                              _selectScript[0] = !_selectScript[0];
                            });
                          },
                          child: Image.asset(
                            'assets/images/icons/subscribe_icon.png',
                            width: 14.w,
                            height: 20.h,
                            color: _selectScript[0]
                                ? MIXIN_POINT_COLOR
                                : MIXIN_BLACK_4,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 12.h),
                    // 콘텐츠 2
                    Row(
                      children: [
                        Container(
                          height: 90,
                          width: 90,
                          decoration: BoxDecoration(
                            color: MIXIN_BLACK_5,
                            borderRadius: BorderRadius.circular(16),
                          ),
                        ),
                        SizedBox(width: 25.w),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              '미분당',
                              style: TextStyle(
                                  fontFamily: 'SUIT',
                                  fontWeight: FontWeight.w600,
                                  fontSize: 12.0.sp,
                                  color: MIXIN_POINT_COLOR),
                            ),
                            SizedBox(height: 4.h),
                            Text(
                              '미분당 로고 리뉴얼',
                              style: TextStyle(
                                  fontFamily: 'SUIT',
                                  fontWeight: FontWeight.w600,
                                  fontSize: 18.sp,
                                  color: MIXIN_BLACK_1),
                            ),
                            SizedBox(height: 12.h),
                            Container(
                              width: 180.w,
                              height: 28.h,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                  color: MIXIN_BLACK_5,
                                  borderRadius: BorderRadius.circular(16)),
                              child: Text(
                                '2023.12.01 ~ 2023.12.31',
                                style: TextStyle(
                                    fontFamily: 'SUIT',
                                    fontWeight: FontWeight.w500,
                                    fontSize: 14.sp,
                                    color: MIXIN_BLACK_2),
                              ),
                            )
                          ],
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor:
                                _selectScript[1] ? Colors.white : MIXIN_BLACK_5,
                            fixedSize: Size(16.w, 16.h),
                            shape: const CircleBorder(),
                            side: const BorderSide(
                                width: 2, color: MIXIN_BLACK_5),
                            elevation: 0,
                          ),
                          onPressed: () {
                            setState(() {
                              _selectScript[1] = !_selectScript[1];
                            });
                          },
                          child: Image.asset(
                            'assets/images/icons/subscribe_icon.png',
                            width: 14.w,
                            height: 20.h,
                            color: _selectScript[1]
                                ? MIXIN_POINT_COLOR
                                : MIXIN_BLACK_4,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 12.h),
                    // 콘텐츠 3
                    Row(
                      children: [
                        Container(
                          height: 90,
                          width: 90,
                          decoration: BoxDecoration(
                            color: MIXIN_BLACK_5,
                            borderRadius: BorderRadius.circular(16),
                          ),
                        ),
                        SizedBox(width: 25.w),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              '이마트24',
                              style: TextStyle(
                                  fontFamily: 'SUIT',
                                  fontWeight: FontWeight.w600,
                                  fontSize: 12.0.sp,
                                  color: MIXIN_POINT_COLOR),
                            ),
                            SizedBox(height: 4.h),
                            Text(
                              '신메뉴 네이밍 콘테스트',
                              style: TextStyle(
                                  fontFamily: 'SUIT',
                                  fontWeight: FontWeight.w600,
                                  fontSize: 18.sp,
                                  color: MIXIN_BLACK_1),
                            ),
                            SizedBox(height: 12.h),
                            Container(
                              width: 180.w,
                              height: 28.h,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                  color: MIXIN_BLACK_5,
                                  borderRadius: BorderRadius.circular(16)),
                              child: Text(
                                '2023.12.01 ~ 2023.12.31',
                                style: TextStyle(
                                    fontFamily: 'SUIT',
                                    fontWeight: FontWeight.w500,
                                    fontSize: 14.sp,
                                    color: MIXIN_BLACK_2),
                              ),
                            )
                          ],
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor:
                                _selectScript[2] ? Colors.white : MIXIN_BLACK_5,
                            fixedSize: Size(16.w, 16.h),
                            shape: const CircleBorder(),
                            side: const BorderSide(
                                width: 2, color: MIXIN_BLACK_5),
                            elevation: 0,
                          ),
                          onPressed: () {
                            setState(() {
                              _selectScript[2] = !_selectScript[2];
                            });
                          },
                          child: Image.asset(
                            'assets/images/icons/subscribe_icon.png',
                            width: 14.w,
                            height: 20.h,
                            color: _selectScript[2]
                                ? MIXIN_POINT_COLOR
                                : MIXIN_BLACK_4,
                          ),
                        ),
                      ],
                    ),
                  ],
                )
              ],
            ),
          ),
          const Divider(
            thickness: 8,
            color: MIXIN_BLACK_5,
          ),
        ],
      ),
    );
  }
}
