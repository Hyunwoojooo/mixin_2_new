import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../const/colors.dart';


class MainHomeMoimScreen extends StatefulWidget {
  const MainHomeMoimScreen({Key? key}) : super(key: key);

  @override
  State<MainHomeMoimScreen> createState() => _MainHomeMoimScreenState();
}

class _MainHomeMoimScreenState extends State<MainHomeMoimScreen> {

  final List<bool> _isBellSelect = List.filled(5, false);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width,
            height: 51.h,
            child: Container(
              alignment: Alignment.centerRight,
              width: 26.w,
              height: 26.h,
              padding: EdgeInsets.only(right: 10.w),
              child: IconButton(
                onPressed: () {},
                icon: Image.asset('assets/images/icons/calendar_icon.png'),
              ),
            ),
          ),
          Container(
            color: const Color(0xFFF2F2F2),
            padding: EdgeInsets.only(top: 19.h),
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 24.w),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: Column(
                      children: [
                        // 내 모임
                        SizedBox(
                          width: 342.w,
                          height: 314.h,
                          child: Column(
                            children: [
                              // 썸네일
                              Stack(
                                children: [
                                  Container(
                                    height: 192.h,
                                    decoration: const BoxDecoration(
                                      borderRadius: BorderRadius.only(
                                        topRight: Radius.circular(8),
                                        topLeft: Radius.circular(8),
                                      ),
                                      color: Colors.orange,
                                    ),
                                  ),
                                  Positioned(
                                    top: 16,
                                    right: 16.3,
                                    child: Container(
                                      width: 62,
                                      height: 32,
                                      alignment: Alignment.center,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(8),
                                        color: MIXIN_BLACK_5,
                                      ),
                                      child: Text(
                                        '동아리',
                                        style: TextStyle(
                                          fontFamily: 'SUIT',
                                          fontWeight: FontWeight.w600,
                                          fontSize: 14.sp,
                                          color: MIXIN_POINT_COLOR,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    right: 16.w,
                                    bottom: 8.h,
                                    child: IconButton(
                                      onPressed: () {
                                        setState(() {
                                          _isBellSelect[0] = !_isBellSelect[0];
                                        });
                                      },
                                      icon: Image.asset(
                                        'assets/images/icons/bell.png',
                                        color: _isBellSelect[0] ? null : MIXIN_BLACK_4,
                                      ),
                                    ),
                                  )
                                ],
                              ),
                              Container(
                                height: 122.h,
                                padding: EdgeInsets.only(
                                    top: 8.h, left: 16.w, right: 16.w),
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: const BorderRadius.only(
                                      bottomLeft: Radius.circular(8),
                                      bottomRight: Radius.circular(8),
                                    ),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey.withOpacity(0.6),
                                        spreadRadius: 0.2,
                                        blurRadius: 3,
                                        offset: const Offset(1, 1),
                                      ),
                                    ]),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    // 모임 카테고리
                                    Row(
                                      children: [
                                        Image.asset(
                                          'assets/images/category_images/culture.png',
                                          width: 24.w,
                                        ),
                                        SizedBox(width: 8.w),
                                        Text(
                                          '문화활동',
                                          style: TextStyle(
                                            fontFamily: 'SUIT',
                                            fontWeight: FontWeight.w500,
                                            fontSize: 14.sp,
                                            color: MIXIN_BLACK_2,
                                          ),
                                        )
                                      ],
                                    ),
                                    SizedBox(height: 4.h),
                                    // 모임 이름
                                    Text(
                                      '필름감아',
                                      style: TextStyle(
                                        fontFamily: 'SUIT',
                                        fontWeight: FontWeight.w600,
                                        fontSize: 22.0.sp,
                                        color: MIXIN_BLACK_2,
                                      ),
                                    ),
                                    SizedBox(height: 12.h),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        // 모임 주기
                                        Row(
                                          children: [
                                            Container(
                                              width: 61.w,
                                              height: 32.h,
                                              alignment: Alignment.center,
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(8),
                                                  color: MIXIN_BLACK_5),
                                              child: Text(
                                                '여기저기',
                                                style: TextStyle(
                                                  fontFamily: 'SUIT',
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: 14.sp,
                                                  color: Color(0xFFB1B1B7),
                                                ),
                                              ),
                                            ),
                                            SizedBox(width: 8.w),
                                            Container(
                                              width: 84.w,
                                              height: 32.h,
                                              alignment: Alignment.center,
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(8),
                                                  color: MIXIN_BLACK_5),
                                              child: Text(
                                                '매주 화요일',
                                                style: TextStyle(
                                                  fontFamily: 'SUIT',
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: 14.sp,
                                                  color:
                                                      const Color(0xFFB1B1B7),
                                                ),
                                              ),
                                            )
                                          ],
                                        ),
                                        // 모임 인원
                                        Row(
                                          children: [
                                            const Icon(
                                              Icons.person,
                                              color: Color(0xFFCED0D5),
                                            ),
                                            SizedBox(width: 4.w),
                                            Text(
                                              '6',
                                              style: TextStyle(
                                                fontFamily: 'SUIT',
                                                fontWeight: FontWeight.w500,
                                                fontSize: 14.0.sp,
                                                color: const Color(0xFFCED0D5),
                                              ),
                                            ),
                                          ],
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                        SizedBox(height: 12.h),
                        SizedBox(
                          width: 342.w,
                          height: 314.h,
                          child: Column(
                            children: [
                              // 썸네일
                              Stack(
                                children: [
                                  Container(
                                    height: 192.h,
                                    decoration: const BoxDecoration(
                                      borderRadius: BorderRadius.only(
                                        topRight: Radius.circular(8),
                                        topLeft: Radius.circular(8),
                                      ),
                                      color: Colors.orange,
                                    ),
                                  ),
                                  Positioned(
                                    top: 16,
                                    right: 16.3,
                                    child: Container(
                                      width: 62,
                                      height: 32,
                                      alignment: Alignment.center,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(8),
                                        color: MIXIN_BLACK_5,
                                      ),
                                      child: Text(
                                        '동아리',
                                        style: TextStyle(
                                          fontFamily: 'SUIT',
                                          fontWeight: FontWeight.w600,
                                          fontSize: 14.sp,
                                          color: MIXIN_POINT_COLOR,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    right: 16.w,
                                    bottom: 8.h,
                                    child: IconButton(
                                      onPressed: () {
                                        setState(() {
                                          _isBellSelect[1] = !_isBellSelect[1];
                                        });
                                      },
                                      icon: Image.asset(
                                        'assets/images/icons/bell.png',
                                        color: _isBellSelect[1] ? null : MIXIN_BLACK_4,
                                      ),
                                    ),
                                  )
                                ],
                              ),
                              Container(
                                height: 122.h,
                                padding: EdgeInsets.only(
                                    top: 8.h, left: 16.w, right: 16.w),
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: const BorderRadius.only(
                                      bottomLeft: Radius.circular(8),
                                      bottomRight: Radius.circular(8),
                                    ),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey.withOpacity(0.6),
                                        spreadRadius: 0.2,
                                        blurRadius: 3,
                                        offset: const Offset(1, 1),
                                      ),
                                    ]),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    // 모임 카테고리
                                    Row(
                                      children: [
                                        Image.asset(
                                          'assets/images/category_images/culture.png',
                                          width: 24.w,
                                        ),
                                        SizedBox(width: 8.w),
                                        Text(
                                          '문화활동',
                                          style: TextStyle(
                                            fontFamily: 'SUIT',
                                            fontWeight: FontWeight.w500,
                                            fontSize: 14.sp,
                                            color: MIXIN_BLACK_2,
                                          ),
                                        )
                                      ],
                                    ),
                                    SizedBox(height: 4.h),
                                    // 모임 이름
                                    Text(
                                      '필름감아',
                                      style: TextStyle(
                                        fontFamily: 'SUIT',
                                        fontWeight: FontWeight.w600,
                                        fontSize: 22.0.sp,
                                        color: MIXIN_BLACK_2,
                                      ),
                                    ),
                                    SizedBox(height: 12.h),
                                    Row(
                                      mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                      CrossAxisAlignment.start,
                                      children: [
                                        // 모임 주기
                                        Row(
                                          children: [
                                            Container(
                                              width: 61.w,
                                              height: 32.h,
                                              alignment: Alignment.center,
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                  BorderRadius.circular(8),
                                                  color: MIXIN_BLACK_5),
                                              child: Text(
                                                '여기저기',
                                                style: TextStyle(
                                                  fontFamily: 'SUIT',
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: 14.sp,
                                                  color: Color(0xFFB1B1B7),
                                                ),
                                              ),
                                            ),
                                            SizedBox(width: 8.w),
                                            Container(
                                              width: 84.w,
                                              height: 32.h,
                                              alignment: Alignment.center,
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                  BorderRadius.circular(8),
                                                  color: MIXIN_BLACK_5),
                                              child: Text(
                                                '매주 화요일',
                                                style: TextStyle(
                                                  fontFamily: 'SUIT',
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: 14.sp,
                                                  color:
                                                  const Color(0xFFB1B1B7),
                                                ),
                                              ),
                                            )
                                          ],
                                        ),
                                        // 모임 인원
                                        Row(
                                          children: [
                                            const Icon(
                                              Icons.person,
                                              color: Color(0xFFCED0D5),
                                            ),
                                            SizedBox(width: 4.w),
                                            Text(
                                              '6',
                                              style: TextStyle(
                                                fontFamily: 'SUIT',
                                                fontWeight: FontWeight.w500,
                                                fontSize: 14.0.sp,
                                                color: const Color(0xFFCED0D5),
                                              ),
                                            ),
                                          ],
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                        SizedBox(height: 12.h),

                        SizedBox(
                          width: 342.w,
                          height: 314.h,
                          child: Column(
                            children: [
                              // 썸네일
                              Stack(
                                children: [
                                  Container(
                                    height: 192.h,
                                    decoration: const BoxDecoration(
                                      borderRadius: BorderRadius.only(
                                        topRight: Radius.circular(8),
                                        topLeft: Radius.circular(8),
                                      ),
                                      color: Colors.orange,
                                    ),
                                  ),
                                  Positioned(
                                    top: 16,
                                    right: 16.3,
                                    child: Container(
                                      width: 62,
                                      height: 32,
                                      alignment: Alignment.center,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(8),
                                        color: MIXIN_BLACK_5,
                                      ),
                                      child: Text(
                                        '동아리',
                                        style: TextStyle(
                                          fontFamily: 'SUIT',
                                          fontWeight: FontWeight.w600,
                                          fontSize: 14.sp,
                                          color: MIXIN_POINT_COLOR,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    right: 16.w,
                                    bottom: 8.h,
                                    child: IconButton(
                                      onPressed: () {
                                        setState(() {
                                          _isBellSelect[2] = !_isBellSelect[2];
                                        });
                                      },
                                      icon: Image.asset(
                                        'assets/images/icons/bell.png',
                                        color: _isBellSelect[2] ? null : MIXIN_BLACK_4,
                                      ),
                                    ),
                                  )
                                ],
                              ),
                              Container(
                                height: 122.h,
                                padding: EdgeInsets.only(
                                    top: 8.h, left: 16.w, right: 16.w),
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: const BorderRadius.only(
                                      bottomLeft: Radius.circular(8),
                                      bottomRight: Radius.circular(8),
                                    ),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey.withOpacity(0.6),
                                        spreadRadius: 0.2,
                                        blurRadius: 3,
                                        offset: const Offset(1, 1),
                                      ),
                                    ]),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    // 모임 카테고리
                                    Row(
                                      children: [
                                        Image.asset(
                                          'assets/images/category_images/culture.png',
                                          width: 24.w,
                                        ),
                                        SizedBox(width: 8.w),
                                        Text(
                                          '문화활동',
                                          style: TextStyle(
                                            fontFamily: 'SUIT',
                                            fontWeight: FontWeight.w500,
                                            fontSize: 14.sp,
                                            color: MIXIN_BLACK_2,
                                          ),
                                        )
                                      ],
                                    ),
                                    SizedBox(height: 4.h),
                                    // 모임 이름
                                    Text(
                                      '필름감아',
                                      style: TextStyle(
                                        fontFamily: 'SUIT',
                                        fontWeight: FontWeight.w600,
                                        fontSize: 22.0.sp,
                                        color: MIXIN_BLACK_2,
                                      ),
                                    ),
                                    SizedBox(height: 12.h),
                                    Row(
                                      mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                      CrossAxisAlignment.start,
                                      children: [
                                        // 모임 주기
                                        Row(
                                          children: [
                                            Container(
                                              width: 61.w,
                                              height: 32.h,
                                              alignment: Alignment.center,
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                  BorderRadius.circular(8),
                                                  color: MIXIN_BLACK_5),
                                              child: Text(
                                                '여기저기',
                                                style: TextStyle(
                                                  fontFamily: 'SUIT',
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: 14.sp,
                                                  color: Color(0xFFB1B1B7),
                                                ),
                                              ),
                                            ),
                                            SizedBox(width: 8.w),
                                            Container(
                                              width: 84.w,
                                              height: 32.h,
                                              alignment: Alignment.center,
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                  BorderRadius.circular(8),
                                                  color: MIXIN_BLACK_5),
                                              child: Text(
                                                '매주 화요일',
                                                style: TextStyle(
                                                  fontFamily: 'SUIT',
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: 14.sp,
                                                  color:
                                                  const Color(0xFFB1B1B7),
                                                ),
                                              ),
                                            )
                                          ],
                                        ),
                                        // 모임 인원
                                        Row(
                                          children: [
                                            const Icon(
                                              Icons.person,
                                              color: Color(0xFFCED0D5),
                                            ),
                                            SizedBox(width: 4.w),
                                            Text(
                                              '6',
                                              style: TextStyle(
                                                fontFamily: 'SUIT',
                                                fontWeight: FontWeight.w500,
                                                fontSize: 14.0.sp,
                                                color: const Color(0xFFCED0D5),
                                              ),
                                            ),
                                          ],
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                        SizedBox(height: 12.h),

                        SizedBox(
                          width: 342.w,
                          height: 314.h,
                          child: Column(
                            children: [
                              // 썸네일
                              Stack(
                                children: [
                                  Container(
                                    height: 192.h,
                                    decoration: const BoxDecoration(
                                      borderRadius: BorderRadius.only(
                                        topRight: Radius.circular(8),
                                        topLeft: Radius.circular(8),
                                      ),
                                      color: Colors.orange,
                                    ),
                                  ),
                                  Positioned(
                                    top: 16,
                                    right: 16.3,
                                    child: Container(
                                      width: 62,
                                      height: 32,
                                      alignment: Alignment.center,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(8),
                                        color: MIXIN_BLACK_5,
                                      ),
                                      child: Text(
                                        '동아리',
                                        style: TextStyle(
                                          fontFamily: 'SUIT',
                                          fontWeight: FontWeight.w600,
                                          fontSize: 14.sp,
                                          color: MIXIN_POINT_COLOR,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    right: 16.w,
                                    bottom: 8.h,
                                    child: IconButton(
                                      onPressed: () {
                                        setState(() {
                                          _isBellSelect[3] = !_isBellSelect[3];
                                        });
                                      },
                                      icon: Image.asset(
                                        'assets/images/icons/bell.png',
                                        color: _isBellSelect[3] ? null : MIXIN_BLACK_4,
                                      ),
                                    ),
                                  )
                                ],
                              ),
                              Container(
                                height: 122.h,
                                padding: EdgeInsets.only(
                                    top: 8.h, left: 16.w, right: 16.w),
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: const BorderRadius.only(
                                      bottomLeft: Radius.circular(8),
                                      bottomRight: Radius.circular(8),
                                    ),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey.withOpacity(0.6),
                                        spreadRadius: 0.2,
                                        blurRadius: 3,
                                        offset: const Offset(1, 1),
                                      ),
                                    ]),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    // 모임 카테고리
                                    Row(
                                      children: [
                                        Image.asset(
                                          'assets/images/category_images/culture.png',
                                          width: 24.w,
                                        ),
                                        SizedBox(width: 8.w),
                                        Text(
                                          '문화활동',
                                          style: TextStyle(
                                            fontFamily: 'SUIT',
                                            fontWeight: FontWeight.w500,
                                            fontSize: 14.sp,
                                            color: MIXIN_BLACK_2,
                                          ),
                                        )
                                      ],
                                    ),
                                    SizedBox(height: 4.h),
                                    // 모임 이름
                                    Text(
                                      '필름감아',
                                      style: TextStyle(
                                        fontFamily: 'SUIT',
                                        fontWeight: FontWeight.w600,
                                        fontSize: 22.0.sp,
                                        color: MIXIN_BLACK_2,
                                      ),
                                    ),
                                    SizedBox(height: 12.h),
                                    Row(
                                      mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                      CrossAxisAlignment.start,
                                      children: [
                                        // 모임 주기
                                        Row(
                                          children: [
                                            Container(
                                              width: 61.w,
                                              height: 32.h,
                                              alignment: Alignment.center,
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                  BorderRadius.circular(8),
                                                  color: MIXIN_BLACK_5),
                                              child: Text(
                                                '여기저기',
                                                style: TextStyle(
                                                  fontFamily: 'SUIT',
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: 14.sp,
                                                  color: Color(0xFFB1B1B7),
                                                ),
                                              ),
                                            ),
                                            SizedBox(width: 8.w),
                                            Container(
                                              width: 84.w,
                                              height: 32.h,
                                              alignment: Alignment.center,
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                  BorderRadius.circular(8),
                                                  color: MIXIN_BLACK_5),
                                              child: Text(
                                                '매주 화요일',
                                                style: TextStyle(
                                                  fontFamily: 'SUIT',
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: 14.sp,
                                                  color:
                                                  const Color(0xFFB1B1B7),
                                                ),
                                              ),
                                            )
                                          ],
                                        ),
                                        // 모임 인원
                                        Row(
                                          children: [
                                            const Icon(
                                              Icons.person,
                                              color: Color(0xFFCED0D5),
                                            ),
                                            SizedBox(width: 4.w),
                                            Text(
                                              '6',
                                              style: TextStyle(
                                                fontFamily: 'SUIT',
                                                fontWeight: FontWeight.w500,
                                                fontSize: 14.0.sp,
                                                color: const Color(0xFFCED0D5),
                                              ),
                                            ),
                                          ],
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                        SizedBox(height: 12.h),

                        SizedBox(
                          width: 342.w,
                          height: 314.h,
                          child: Column(
                            children: [
                              // 썸네일
                              Stack(
                                children: [
                                  Container(
                                    height: 192.h,
                                    decoration: const BoxDecoration(
                                      borderRadius: BorderRadius.only(
                                        topRight: Radius.circular(8),
                                        topLeft: Radius.circular(8),
                                      ),
                                      color: Colors.orange,
                                    ),
                                  ),
                                  Positioned(
                                    top: 16,
                                    right: 16.3,
                                    child: Container(
                                      width: 62,
                                      height: 32,
                                      alignment: Alignment.center,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(8),
                                        color: MIXIN_BLACK_5,
                                      ),
                                      child: Text(
                                        '동아리',
                                        style: TextStyle(
                                          fontFamily: 'SUIT',
                                          fontWeight: FontWeight.w600,
                                          fontSize: 14.sp,
                                          color: MIXIN_POINT_COLOR,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    right: 16.w,
                                    bottom: 8.h,
                                    child: IconButton(
                                      onPressed: () {
                                        setState(() {
                                          _isBellSelect[4] = !_isBellSelect[4];
                                        });
                                      },
                                      icon: Image.asset(
                                        'assets/images/icons/bell.png',
                                        color: _isBellSelect[4] ? null : MIXIN_BLACK_4,
                                      ),
                                    ),
                                  )
                                ],
                              ),
                              Container(
                                height: 122.h,
                                padding: EdgeInsets.only(
                                    top: 8.h, left: 16.w, right: 16.w),
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: const BorderRadius.only(
                                      bottomLeft: Radius.circular(8),
                                      bottomRight: Radius.circular(8),
                                    ),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey.withOpacity(0.6),
                                        spreadRadius: 0.2,
                                        blurRadius: 3,
                                        offset: const Offset(1, 1),
                                      ),
                                    ]),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    // 모임 카테고리
                                    Row(
                                      children: [
                                        Image.asset(
                                          'assets/images/category_images/culture.png',
                                          width: 24.w,
                                        ),
                                        SizedBox(width: 8.w),
                                        Text(
                                          '문화활동',
                                          style: TextStyle(
                                            fontFamily: 'SUIT',
                                            fontWeight: FontWeight.w500,
                                            fontSize: 14.sp,
                                            color: MIXIN_BLACK_2,
                                          ),
                                        )
                                      ],
                                    ),
                                    SizedBox(height: 4.h),
                                    // 모임 이름
                                    Text(
                                      '필름감아',
                                      style: TextStyle(
                                        fontFamily: 'SUIT',
                                        fontWeight: FontWeight.w600,
                                        fontSize: 22.0.sp,
                                        color: MIXIN_BLACK_2,
                                      ),
                                    ),
                                    SizedBox(height: 12.h),
                                    Row(
                                      mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                      CrossAxisAlignment.start,
                                      children: [
                                        // 모임 주기
                                        Row(
                                          children: [
                                            Container(
                                              width: 61.w,
                                              height: 32.h,
                                              alignment: Alignment.center,
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                  BorderRadius.circular(8),
                                                  color: MIXIN_BLACK_5),
                                              child: Text(
                                                '여기저기',
                                                style: TextStyle(
                                                  fontFamily: 'SUIT',
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: 14.sp,
                                                  color: Color(0xFFB1B1B7),
                                                ),
                                              ),
                                            ),
                                            SizedBox(width: 8.w),
                                            Container(
                                              width: 84.w,
                                              height: 32.h,
                                              alignment: Alignment.center,
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                  BorderRadius.circular(8),
                                                  color: MIXIN_BLACK_5),
                                              child: Text(
                                                '매주 화요일',
                                                style: TextStyle(
                                                  fontFamily: 'SUIT',
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: 14.sp,
                                                  color:
                                                  const Color(0xFFB1B1B7),
                                                ),
                                              ),
                                            )
                                          ],
                                        ),
                                        // 모임 인원
                                        Row(
                                          children: [
                                            const Icon(
                                              Icons.person,
                                              color: Color(0xFFCED0D5),
                                            ),
                                            SizedBox(width: 4.w),
                                            Text(
                                              '6',
                                              style: TextStyle(
                                                fontFamily: 'SUIT',
                                                fontWeight: FontWeight.w500,
                                                fontSize: 14.0.sp,
                                                color: const Color(0xFFCED0D5),
                                              ),
                                            ),
                                          ],
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                        SizedBox(height: 12.h),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
