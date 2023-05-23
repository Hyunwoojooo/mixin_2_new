import 'package:flutter/material.dart';
import '../../const/colors.dart';
import '../../layout/category_layout_round.dart';

class MainHomeScreen extends StatefulWidget {
  const MainHomeScreen({Key? key}) : super(key: key);

  @override
  State<MainHomeScreen> createState() => _MainHomeScreenState();
}

class _MainHomeScreenState extends State<MainHomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          //배너
          SizedBox(
            height: 251,
            child: Stack(
              children: [
                Container(
                    width: MediaQuery.of(context).size.width,
                    height: 176,
                    color: const Color(0xFF495FE7),
                    alignment: Alignment.center,
                    child: const Column(
                      children: [
                        SizedBox(height: 24.0),
                        Text(
                          '우리들의 놀이터, 믹스인',
                          style: TextStyle(
                              fontFamily: 'SUIT',
                              fontWeight: FontWeight.w500,
                              fontSize: 14.0,
                              color: Colors.white),
                        ),
                        SizedBox(height: 4),
                        Text(
                          '더 잘 활용하는 방법은?',
                          style: TextStyle(
                              fontFamily: 'SUIT',
                              fontWeight: FontWeight.w600,
                              fontSize: 24.0,
                              color: Colors.white),
                        ),
                      ],
                    )),
                Positioned(
                    top: 91,
                    left: 24,
                    child: SizedBox(
                      width: 342,
                      height: 160,
                      child: Image.asset('assets/images/maskgroup.png'),
                    ))
              ],
            ),
          ),
          //카테고리
          Padding(
            padding: EdgeInsets.only(left: 24, top: 12),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 8),
                    child: CategoryLayoutRound(
                      mainSizedBoxWidth: 103,
                      borderSideColor: MIXIN_BLACK_5,
                      backgroundColor: MIXIN_BLACK_5,
                      onPressed: () {},
                      containerColor: MIXIN_BLACK_5,
                      imageAsset:
                          'assets/images/category_images/category_all.png',
                      imageWidth: 24,
                      imageHeight: 21.47,
                      sizedBoxWidth: 8.0,
                      text: '전체보기',
                    ),
                  ),
                  CategoryLayoutRound(
                    mainSizedBoxWidth: 103,
                    borderSideColor: MIXIN_BLACK_5,
                    backgroundColor: MIXIN_BLACK_5,
                    onPressed: () {},
                    containerColor: MIXIN_BLACK_5,
                    imageAsset: 'assets/images/category_images/IT.png',
                    imageWidth: 24,
                    imageHeight: 21.47,
                    sizedBoxWidth: 8.0,
                    text: 'IT/개발',
                  ),
                  const SizedBox(width: 8),
                  CategoryLayoutRound(
                    mainSizedBoxWidth: 103,
                    borderSideColor: MIXIN_BLACK_5,
                    backgroundColor: MIXIN_BLACK_5,
                    onPressed: () {},
                    containerColor: MIXIN_BLACK_5,
                    imageAsset: 'assets/images/category_images/music.png',
                    imageWidth: 24,
                    imageHeight: 24,
                    sizedBoxWidth: 8.0,
                    text: '음악',
                  ),
                  const SizedBox(width: 8),
                  CategoryLayoutRound(
                    mainSizedBoxWidth: 103,
                    borderSideColor: MIXIN_BLACK_5,
                    backgroundColor: MIXIN_BLACK_5,
                    onPressed: () {},
                    containerColor: MIXIN_BLACK_5,
                    imageAsset: 'assets/images/category_images/music.png',
                    imageWidth: 24,
                    imageHeight: 24,
                    sizedBoxWidth: 8.0,
                    text: '음악',
                  ),
                  const SizedBox(width: 8),
                  CategoryLayoutRound(
                    mainSizedBoxWidth: 103,
                    borderSideColor: MIXIN_BLACK_5,
                    backgroundColor: MIXIN_BLACK_5,
                    onPressed: () {},
                    containerColor: MIXIN_BLACK_5,
                    imageAsset: 'assets/images/category_images/music.png',
                    imageWidth: 24,
                    imageHeight: 24,
                    sizedBoxWidth: 8.0,
                    text: '음악',
                  ),
                ],
              ),
            ),
          ),
          // 정규모임 카드
          Padding(
            padding: EdgeInsets.only(left: 24, top: 12),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  SizedBox(
                    width: 283,
                    height: 270,
                    child: Column(
                      children: [
                        Stack(
                          children: [
                            Container(
                              height: 158,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(8),
                                  topLeft: Radius.circular(8),
                                ),
                                color: Colors.orange,
                              ),
                            ),
                            Positioned(
                              top: 16,
                              left: 124.7,
                              child: Container(
                                width: 72,
                                height: 32,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(24),
                                  color: MIXIN_,
                                ),
                                child: Text(
                                  '동아리',
                                  style: TextStyle(
                                    fontFamily: 'SUIT',
                                    fontWeight: FontWeight.w500,
                                    fontSize: 14,
                                    color: MIXIN_POINT_COLOR,
                                  ),
                                ),
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
                                  borderRadius: BorderRadius.circular(24),
                                  color: MIXIN_BLACK_5,
                                ),
                                child: Text(
                                  'D-7',
                                  style: TextStyle(
                                    fontFamily: 'SUIT',
                                    fontWeight: FontWeight.w500,
                                    fontSize: 14,
                                    color: MIXIN_POINT_COLOR,
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                        Container(
                          height: 101,
                          padding:
                              EdgeInsets.only(top: 8, left: 16, right: 16),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(8),
                                bottomRight: Radius.circular(8),
                              ),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.2),
                                spreadRadius: 1,
                                blurRadius: 10,
                                offset: Offset(1, 1),
                              ),
                            ]
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    '필름감아',
                                    style: TextStyle(
                                      fontFamily: 'SUIT',
                                      fontWeight: FontWeight.w600,
                                      fontSize: 18.0,
                                      color: MIXIN_BLACK_1,
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.person,
                                        color: Color(0xFFCED0D5),
                                      ),
                                      SizedBox(width: 4),
                                      Text(
                                        '1/6',
                                        style: TextStyle(
                                          fontFamily: 'SUIT',
                                          fontWeight: FontWeight.w500,
                                          fontSize: 12.0,
                                          color: Color(0xFFCED0D5),
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                              SizedBox(height: 4),
                              Text(
                                '주 2회',
                                style: TextStyle(
                                  fontFamily: 'SUIT',
                                  fontWeight: FontWeight.w500,
                                  fontSize: 14,
                                  color: MIXIN_BLACK_4,
                                ),
                              ),
                              SizedBox(height: 9),
                              Row(
                                children: [
                                  Container(
                                    width: 56,
                                    height: 28,
                                    alignment: Alignment.center,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(8),
                                      color: MIXIN_
                                    ),
                                    child: Text(
                                      '#필카',
                                      style: TextStyle(
                                        fontFamily: 'SUIT',
                                      fontWeight: FontWeight.w500,
                                        fontSize: 12.0,
                                        color: MIXIN_POINT_COLOR,
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: 4),
                                  Container(
                                    width: 56,
                                    height: 28,
                                    alignment: Alignment.center,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(8),
                                        color: MIXIN_
                                    ),
                                    child: Text(
                                      '#필카',
                                      style: TextStyle(
                                        fontFamily: 'SUIT',
                                        fontWeight: FontWeight.w500,
                                        fontSize: 12.0,
                                        color: MIXIN_POINT_COLOR,
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: 4),
                                  Container(
                                    width: 56,
                                    height: 28,
                                    alignment: Alignment.center,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(8),
                                        color: MIXIN_
                                    ),
                                    child: Text(
                                      '#필카',
                                      style: TextStyle(
                                        fontFamily: 'SUIT',
                                        fontWeight: FontWeight.w500,
                                        fontSize: 12.0,
                                        color: MIXIN_POINT_COLOR,
                                      ),
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(width: 12),
                  SizedBox(
                    width: 283,
                    height: 270,
                    child: Column(
                      children: [
                        Stack(
                          children: [
                            Container(
                              height: 158,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(8),
                                  topLeft: Radius.circular(8),
                                ),
                                color: Colors.orange,
                              ),
                            ),
                            Positioned(
                              top: 16,
                              left: 124.7,
                              child: Container(
                                width: 72,
                                height: 32,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(24),
                                  color: MIXIN_,
                                ),
                                child: Text(
                                  '동아리',
                                  style: TextStyle(
                                    fontFamily: 'SUIT',
                                    fontWeight: FontWeight.w500,
                                    fontSize: 14,
                                    color: MIXIN_POINT_COLOR,
                                  ),
                                ),
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
                                  borderRadius: BorderRadius.circular(24),
                                  color: MIXIN_BLACK_5,
                                ),
                                child: Text(
                                  'D-7',
                                  style: TextStyle(
                                    fontFamily: 'SUIT',
                                    fontWeight: FontWeight.w500,
                                    fontSize: 14,
                                    color: MIXIN_POINT_COLOR,
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                        Container(
                          height: 101,
                          padding:
                          EdgeInsets.only(top: 8, left: 16, right: 16),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(8),
                                bottomRight: Radius.circular(8),
                              ),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.2),
                                  spreadRadius: 1,
                                  blurRadius: 10,
                                  offset: Offset(1, 1),
                                ),
                              ]
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment:
                                MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    '필름감아',
                                    style: TextStyle(
                                      fontFamily: 'SUIT',
                                      fontWeight: FontWeight.w600,
                                      fontSize: 18.0,
                                      color: MIXIN_BLACK_1,
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.person,
                                        color: Color(0xFFCED0D5),
                                      ),
                                      SizedBox(width: 4),
                                      Text(
                                        '1/6',
                                        style: TextStyle(
                                          fontFamily: 'SUIT',
                                          fontWeight: FontWeight.w500,
                                          fontSize: 12.0,
                                          color: Color(0xFFCED0D5),
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                              SizedBox(height: 4),
                              Text(
                                '주 2회',
                                style: TextStyle(
                                  fontFamily: 'SUIT',
                                  fontWeight: FontWeight.w500,
                                  fontSize: 14,
                                  color: MIXIN_BLACK_4,
                                ),
                              ),
                              SizedBox(height: 9),
                              Row(
                                children: [
                                  Container(
                                    width: 56,
                                    height: 28,
                                    alignment: Alignment.center,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(8),
                                        color: MIXIN_
                                    ),
                                    child: Text(
                                      '#필카',
                                      style: TextStyle(
                                        fontFamily: 'SUIT',
                                        fontWeight: FontWeight.w500,
                                        fontSize: 12.0,
                                        color: MIXIN_POINT_COLOR,
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: 4),
                                  Container(
                                    width: 56,
                                    height: 28,
                                    alignment: Alignment.center,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(8),
                                        color: MIXIN_
                                    ),
                                    child: Text(
                                      '#필카',
                                      style: TextStyle(
                                        fontFamily: 'SUIT',
                                        fontWeight: FontWeight.w500,
                                        fontSize: 12.0,
                                        color: MIXIN_POINT_COLOR,
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: 4),
                                  Container(
                                    width: 56,
                                    height: 28,
                                    alignment: Alignment.center,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(8),
                                        color: MIXIN_
                                    ),
                                    child: Text(
                                      '#필카',
                                      style: TextStyle(
                                        fontFamily: 'SUIT',
                                        fontWeight: FontWeight.w500,
                                        fontSize: 12.0,
                                        color: MIXIN_POINT_COLOR,
                                      ),
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(width: 12),
                  SizedBox(
                    width: 283,
                    height: 270,
                    child: Column(
                      children: [
                        Stack(
                          children: [
                            Container(
                              height: 158,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(8),
                                  topLeft: Radius.circular(8),
                                ),
                                color: Colors.orange,
                              ),
                            ),
                            Positioned(
                              top: 16,
                              left: 124.7,
                              child: Container(
                                width: 72,
                                height: 32,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(24),
                                  color: MIXIN_,
                                ),
                                child: Text(
                                  '동아리',
                                  style: TextStyle(
                                    fontFamily: 'SUIT',
                                    fontWeight: FontWeight.w500,
                                    fontSize: 14,
                                    color: MIXIN_POINT_COLOR,
                                  ),
                                ),
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
                                  borderRadius: BorderRadius.circular(24),
                                  color: MIXIN_BLACK_5,
                                ),
                                child: Text(
                                  'D-7',
                                  style: TextStyle(
                                    fontFamily: 'SUIT',
                                    fontWeight: FontWeight.w500,
                                    fontSize: 14,
                                    color: MIXIN_POINT_COLOR,
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                        Container(
                          height: 101,
                          padding:
                          EdgeInsets.only(top: 8, left: 16, right: 16),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(8),
                                bottomRight: Radius.circular(8),
                              ),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.2),
                                  spreadRadius: 1,
                                  blurRadius: 10,
                                  offset: Offset(1, 1),
                                ),
                              ]
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment:
                                MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    '필름감아',
                                    style: TextStyle(
                                      fontFamily: 'SUIT',
                                      fontWeight: FontWeight.w600,
                                      fontSize: 18.0,
                                      color: MIXIN_BLACK_1,
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.person,
                                        color: Color(0xFFCED0D5),
                                      ),
                                      SizedBox(width: 4),
                                      Text(
                                        '1/6',
                                        style: TextStyle(
                                          fontFamily: 'SUIT',
                                          fontWeight: FontWeight.w500,
                                          fontSize: 12.0,
                                          color: Color(0xFFCED0D5),
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                              SizedBox(height: 4),
                              Text(
                                '주 2회',
                                style: TextStyle(
                                  fontFamily: 'SUIT',
                                  fontWeight: FontWeight.w500,
                                  fontSize: 14,
                                  color: MIXIN_BLACK_4,
                                ),
                              ),
                              SizedBox(height: 9),
                              Row(
                                children: [
                                  Container(
                                    width: 56,
                                    height: 28,
                                    alignment: Alignment.center,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(8),
                                        color: MIXIN_
                                    ),
                                    child: Text(
                                      '#필카',
                                      style: TextStyle(
                                        fontFamily: 'SUIT',
                                        fontWeight: FontWeight.w500,
                                        fontSize: 12.0,
                                        color: MIXIN_POINT_COLOR,
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: 4),
                                  Container(
                                    width: 56,
                                    height: 28,
                                    alignment: Alignment.center,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(8),
                                        color: MIXIN_
                                    ),
                                    child: Text(
                                      '#필카',
                                      style: TextStyle(
                                        fontFamily: 'SUIT',
                                        fontWeight: FontWeight.w500,
                                        fontSize: 12.0,
                                        color: MIXIN_POINT_COLOR,
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: 4),
                                  Container(
                                    width: 56,
                                    height: 28,
                                    alignment: Alignment.center,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(8),
                                        color: MIXIN_
                                    ),
                                    child: Text(
                                      '#필카',
                                      style: TextStyle(
                                        fontFamily: 'SUIT',
                                        fontWeight: FontWeight.w500,
                                        fontSize: 12.0,
                                        color: MIXIN_POINT_COLOR,
                                      ),
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(width: 12),
                  SizedBox(
                    width: 283,
                    height: 270,
                    child: Column(
                      children: [
                        Stack(
                          children: [
                            Container(
                              height: 158,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(8),
                                  topLeft: Radius.circular(8),
                                ),
                                color: Colors.orange,
                              ),
                            ),
                            Positioned(
                              top: 16,
                              left: 124.7,
                              child: Container(
                                width: 72,
                                height: 32,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(24),
                                  color: MIXIN_,
                                ),
                                child: Text(
                                  '동아리',
                                  style: TextStyle(
                                    fontFamily: 'SUIT',
                                    fontWeight: FontWeight.w500,
                                    fontSize: 14,
                                    color: MIXIN_POINT_COLOR,
                                  ),
                                ),
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
                                  borderRadius: BorderRadius.circular(24),
                                  color: MIXIN_BLACK_5,
                                ),
                                child: Text(
                                  'D-7',
                                  style: TextStyle(
                                    fontFamily: 'SUIT',
                                    fontWeight: FontWeight.w500,
                                    fontSize: 14,
                                    color: MIXIN_POINT_COLOR,
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                        Container(
                          height: 101,
                          padding:
                          EdgeInsets.only(top: 8, left: 16, right: 16),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(8),
                                bottomRight: Radius.circular(8),
                              ),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.2),
                                  spreadRadius: 1,
                                  blurRadius: 10,
                                  offset: Offset(1, 1),
                                ),
                              ]
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment:
                                MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    '필름감아',
                                    style: TextStyle(
                                      fontFamily: 'SUIT',
                                      fontWeight: FontWeight.w600,
                                      fontSize: 18.0,
                                      color: MIXIN_BLACK_1,
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.person,
                                        color: Color(0xFFCED0D5),
                                      ),
                                      SizedBox(width: 4),
                                      Text(
                                        '1/6',
                                        style: TextStyle(
                                          fontFamily: 'SUIT',
                                          fontWeight: FontWeight.w500,
                                          fontSize: 12.0,
                                          color: Color(0xFFCED0D5),
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                              SizedBox(height: 4),
                              Text(
                                '주 2회',
                                style: TextStyle(
                                  fontFamily: 'SUIT',
                                  fontWeight: FontWeight.w500,
                                  fontSize: 14,
                                  color: MIXIN_BLACK_4,
                                ),
                              ),
                              SizedBox(height: 9),
                              Row(
                                children: [
                                  Container(
                                    width: 56,
                                    height: 28,
                                    alignment: Alignment.center,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(8),
                                        color: MIXIN_
                                    ),
                                    child: Text(
                                      '#필카',
                                      style: TextStyle(
                                        fontFamily: 'SUIT',
                                        fontWeight: FontWeight.w500,
                                        fontSize: 12.0,
                                        color: MIXIN_POINT_COLOR,
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: 4),
                                  Container(
                                    width: 56,
                                    height: 28,
                                    alignment: Alignment.center,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(8),
                                        color: MIXIN_
                                    ),
                                    child: Text(
                                      '#필카',
                                      style: TextStyle(
                                        fontFamily: 'SUIT',
                                        fontWeight: FontWeight.w500,
                                        fontSize: 12.0,
                                        color: MIXIN_POINT_COLOR,
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: 4),
                                  Container(
                                    width: 56,
                                    height: 28,
                                    alignment: Alignment.center,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(8),
                                        color: MIXIN_
                                    ),
                                    child: Text(
                                      '#필카',
                                      style: TextStyle(
                                        fontFamily: 'SUIT',
                                        fontWeight: FontWeight.w500,
                                        fontSize: 12.0,
                                        color: MIXIN_POINT_COLOR,
                                      ),
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(width: 12),
                  SizedBox(
                    width: 283,
                    height: 270,
                    child: Column(
                      children: [
                        Stack(
                          children: [
                            Container(
                              height: 158,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(8),
                                  topLeft: Radius.circular(8),
                                ),
                                color: Colors.orange,
                              ),
                            ),
                            Positioned(
                              top: 16,
                              left: 124.7,
                              child: Container(
                                width: 72,
                                height: 32,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(24),
                                  color: MIXIN_,
                                ),
                                child: Text(
                                  '동아리',
                                  style: TextStyle(
                                    fontFamily: 'SUIT',
                                    fontWeight: FontWeight.w500,
                                    fontSize: 14,
                                    color: MIXIN_POINT_COLOR,
                                  ),
                                ),
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
                                  borderRadius: BorderRadius.circular(24),
                                  color: MIXIN_BLACK_5,
                                ),
                                child: Text(
                                  'D-7',
                                  style: TextStyle(
                                    fontFamily: 'SUIT',
                                    fontWeight: FontWeight.w500,
                                    fontSize: 14,
                                    color: MIXIN_POINT_COLOR,
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                        Container(
                          height: 101,
                          padding:
                          EdgeInsets.only(top: 8, left: 16, right: 16),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(8),
                                bottomRight: Radius.circular(8),
                              ),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.2),
                                  spreadRadius: 1,
                                  blurRadius: 10,
                                  offset: Offset(1, 1),
                                ),
                              ]
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment:
                                MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    '필름감아',
                                    style: TextStyle(
                                      fontFamily: 'SUIT',
                                      fontWeight: FontWeight.w600,
                                      fontSize: 18.0,
                                      color: MIXIN_BLACK_1,
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.person,
                                        color: Color(0xFFCED0D5),
                                      ),
                                      SizedBox(width: 4),
                                      Text(
                                        '1/6',
                                        style: TextStyle(
                                          fontFamily: 'SUIT',
                                          fontWeight: FontWeight.w500,
                                          fontSize: 12.0,
                                          color: Color(0xFFCED0D5),
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                              SizedBox(height: 4),
                              Text(
                                '주 2회',
                                style: TextStyle(
                                  fontFamily: 'SUIT',
                                  fontWeight: FontWeight.w500,
                                  fontSize: 14,
                                  color: MIXIN_BLACK_4,
                                ),
                              ),
                              SizedBox(height: 9),
                              Row(
                                children: [
                                  Container(
                                    width: 56,
                                    height: 28,
                                    alignment: Alignment.center,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(8),
                                        color: MIXIN_
                                    ),
                                    child: Text(
                                      '#필카',
                                      style: TextStyle(
                                        fontFamily: 'SUIT',
                                        fontWeight: FontWeight.w500,
                                        fontSize: 12.0,
                                        color: MIXIN_POINT_COLOR,
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: 4),
                                  Container(
                                    width: 56,
                                    height: 28,
                                    alignment: Alignment.center,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(8),
                                        color: MIXIN_
                                    ),
                                    child: Text(
                                      '#필카',
                                      style: TextStyle(
                                        fontFamily: 'SUIT',
                                        fontWeight: FontWeight.w500,
                                        fontSize: 12.0,
                                        color: MIXIN_POINT_COLOR,
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: 4),
                                  Container(
                                    width: 56,
                                    height: 28,
                                    alignment: Alignment.center,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(8),
                                        color: MIXIN_
                                    ),
                                    child: Text(
                                      '#필카',
                                      style: TextStyle(
                                        fontFamily: 'SUIT',
                                        fontWeight: FontWeight.w500,
                                        fontSize: 12.0,
                                        color: MIXIN_POINT_COLOR,
                                      ),
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Divider(
            thickness: 8,
            color: MIXIN_BLACK_5,
          ),
          Text('asdf'),
        ],
      ),
    );
  }
}
