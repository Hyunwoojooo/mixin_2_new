import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mixin_2/const/colors.dart';

class MoimNoticeboardScreen extends StatefulWidget {
  const MoimNoticeboardScreen({Key? key}) : super(key: key);

  @override
  State<MoimNoticeboardScreen> createState() => _MoimNoticeboardScreenState();
}

class _MoimNoticeboardScreenState extends State<MoimNoticeboardScreen> {
  final List<String> name = ['먼지이잉', '현우우우우', '다비디이이인', '지워너너넌'];
  final List<String> ttext = [
    '오픈데이터 항목인데, 여기 들어가면 다전공 학생들의 통계랑 졸업자수, 개설된 강의들이 어떤 교재 쓰는지 다나와!!! 대박인데? ...더보기',
    '오픈데이터 항목인데, 여기 들어가면 다전공 학생들의 통계랑 졸업자수, 개설된 강의들이 어떤 교재 쓰는지 다나와!!! 대박인데? ...더보기',
    '오픈데이터 항목인데, 여기 들어가면 다전공 학생들의 통계랑 졸업자수, 개설된 강의들이 어떤 교재 쓰는지 다나와!!! 대박인데? ...더보기',
    '오픈데이터 항목인데, 여기 들어가면 다전공 학생들의 통계랑 졸업자수, 개설된 강의들이 어떤 교재 쓰는지 다나와!!! 대박인데? ...더보기',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Padding(
            padding: EdgeInsets.all(24.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Image.asset(
                          'assets/images/icons/bell.png',
                          width: 26,
                          height: 26,
                        ),
                        const SizedBox(width: 8),
                        const Text(
                          '공지사항',
                          style: TextStyle(
                            fontFamily: 'SUIT',
                            fontWeight: FontWeight.w600,
                            fontSize: 18,
                          ),
                        ),
                      ],
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        elevation: 0,
                      ),
                      child: const Row(
                        children: [
                          Text(
                            'All',
                            style: TextStyle(
                              fontFamily: 'SUIT',
                              fontWeight: FontWeight.w600,
                              fontSize: 14.0,
                              color: MIXIN_BLACK_4,
                            ),
                          ),
                          Icon(
                            Icons.arrow_forward_ios_sharp,
                            size: 14,
                            color: MIXIN_BLACK_4,
                          ),
                        ],
                      ),
                      onPressed: () {},
                    )
                  ],
                ),
                Container(
                  height: 135.h,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    border: Border.all(color: MIXIN_BLACK_5),
                  ),
                  padding: EdgeInsets.only(left: 20, top: 12),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(children: [
                        Container(
                          width: 45,
                          height: 20,
                          padding: EdgeInsets.only(left: 2),
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              color: Color(0xFF3D77DB).withOpacity(0.3),
                              shape: BoxShape.rectangle,
                              borderRadius: BorderRadius.circular(16)),
                          child: Row(
                            children: [
                              Container(
                                width: 16,
                                height: 16,
                                padding: EdgeInsets.all(3),
                                decoration: BoxDecoration(
                                  color: Color(0xFF3D77DB),
                                  shape: BoxShape.circle,
                                ),
                                child: Image.asset(
                                  'assets/images/icons/check_icon.png',
                                  fit: BoxFit.contain,
                                  height: 8,
                                  width: 11,
                                ),
                              ),
                              const SizedBox(
                                width: 6,
                              ),
                              Text(
                                '18',
                                style: TextStyle(
                                    fontFamily: 'SUIT',
                                    fontWeight: FontWeight.w500,
                                    fontSize: 12,
                                    color: Color(0xFF3D77DB)),
                              )
                            ],
                          ),
                        ),
                        const SizedBox(
                          width: 8,
                        ),
                        Container(
                          width: 45,
                          height: 20,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              color: MIXIN_,
                              shape: BoxShape.rectangle,
                              borderRadius: BorderRadius.circular(16)),
                          child: Row(
                            children: [
                              Container(
                                width: 16,
                                height: 16,
                                padding: EdgeInsets.all(2),
                                decoration: BoxDecoration(
                                  color: MIXIN_POINT_COLOR,
                                  shape: BoxShape.circle,
                                ),
                                child: Image.asset(
                                  'assets/images/icons/talk.png',
                                  fit: BoxFit.contain,
                                  height: 13,
                                  width: 12,
                                ),
                              ),
                              const SizedBox(
                                width: 6,
                              ),
                              Text(
                                '3',
                                style: TextStyle(
                                    fontFamily: 'SUIT',
                                    fontWeight: FontWeight.w500,
                                    fontSize: 12,
                                    color: MIXIN_POINT_COLOR),
                              )
                            ],
                          ),
                        ),
                      ]),
                      SizedBox(
                        height: 21,
                      ),
                      Text(
                        '졸전 인스타 아카이빙 투표관련 공지',
                        style: TextStyle(
                          fontFamily: 'SUIT',
                          fontWeight: FontWeight.w600,
                          fontSize: 20,
                          color: MIXIN_BLACK_2,
                        ),
                      ),
                      SizedBox(height: 10),
                      Row(
                        children: [
                          Text(
                            '2023년 4월 1일 15:12',
                            style: TextStyle(
                                fontFamily: 'SUIT',
                                fontWeight: FontWeight.w500,
                                fontSize: 12.0,
                                color: MIXIN_BLACK_4),
                          ),
                          SizedBox(width: 13),
                          Text(
                            '미확인',
                            style: TextStyle(
                              fontFamily: 'SUIT',
                              fontWeight: FontWeight.w500,
                              fontSize: 12.0,
                              color: MIXIN_POINT_COLOR,
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const Divider(thickness: 6),
          Padding(
            padding: EdgeInsets.all(24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Image.asset(
                      'assets/images/icons/notice_board.png',
                      height: 26,
                      width: 26,
                    ),
                    const SizedBox(width: 8),
                    const Text(
                      '게시판',
                      style: TextStyle(
                          fontFamily: 'SUIT',
                          fontWeight: FontWeight.w600,
                          fontSize: 18,
                          color: MIXIN_BLACK_2),
                    )
                  ],
                ),
                SizedBox(height: 24.h),
                SizedBox(
                  height: 171.h,
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              CircleAvatar(
                                radius: 18,
                                backgroundColor: Colors.grey,
                              ),
                              SizedBox(width: 12.w),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    '먼지이이잉',
                                    style: TextStyle(
                                      fontFamily: 'SUIT',
                                      fontWeight: FontWeight.w600,
                                      fontSize: 16,
                                      color: MIXIN_BLACK_1,
                                    ),
                                  ),
                                  Text(
                                    '7분 전',
                                    style: TextStyle(
                                        fontFamily: 'SUIT',
                                        fontWeight: FontWeight.w500,
                                        fontSize: 11,
                                        color: MIXIN_BLACK_4),
                                  )
                                ],
                              ),
                            ],
                          ),
                          IconButton(
                            padding: EdgeInsets.zero,
                            constraints:
                                BoxConstraints(maxHeight: 18, maxWidth: 18),
                            onPressed: () {},
                            icon: Image.asset(
                              'assets/images/more_vert.png',
                              width: 18,
                              height: 18,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 16.h),
                      // 텍스트
                      Padding(
                        padding: EdgeInsets.only(left: 48.0.w),
                        child: Text(
                          '오픈데이터 항목인데, 여기 들어가면 다전공 학생들의 통계랑 졸업자수, 개설된 강의들이 어떤 교재 쓰는지 다나와!!! 대박인데? ...더보기',
                          style: TextStyle(
                            fontFamily: 'SUIT',
                            fontWeight: FontWeight.w500,
                            fontSize: 16.sp,
                            color: MIXIN_BLACK_2,
                          ),
                        ),
                      ),
                      SizedBox(height: 16.h),
                      Padding(
                        padding: EdgeInsets.only(left: 48.0.w),
                        child: Row(
                          children: [
                            // 좋아요 아이콘
                            Container(
                              width: 45.w,
                              height: 20.h,
                              padding: EdgeInsets.only(left: 2.w),
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                  color:
                                      const Color(0xFFE55E74).withOpacity(0.3),
                                  shape: BoxShape.rectangle,
                                  borderRadius: BorderRadius.circular(16)),
                              child: Row(
                                children: [
                                  Container(
                                      width: 16.w,
                                      height: 16.h,
                                      padding: const EdgeInsets.all(4),
                                      decoration: const BoxDecoration(
                                        color: Color(0xFFE55E74),
                                        shape: BoxShape.circle,
                                      ),
                                      child: Image.asset(
                                        'assets/images/icons/heart.png',
                                      )),
                                  const SizedBox(width: 6),
                                  Text(
                                    '18',
                                    style: TextStyle(
                                        fontFamily: 'SUIT',
                                        fontWeight: FontWeight.w500,
                                        fontSize: 12.sp,
                                        color: const Color(0xFFE55E74)),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(width: 8.w),
                            // 댓글 아이콘
                            Container(
                              width: 45.w,
                              height: 20.h,
                              padding: EdgeInsets.only(left: 2.w),
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                  color: MIXIN_,
                                  shape: BoxShape.rectangle,
                                  borderRadius: BorderRadius.circular(16)),
                              child: Row(
                                children: [
                                  Container(
                                    width: 16,
                                    height: 16,
                                    padding: const EdgeInsets.all(2),
                                    decoration: const BoxDecoration(
                                      color: MIXIN_POINT_COLOR,
                                      shape: BoxShape.circle,
                                    ),
                                    child: Image.asset(
                                      'assets/images/icons/talk.png',
                                      fit: BoxFit.contain,
                                      height: 13,
                                      width: 12,
                                    ),
                                  ),
                                  const SizedBox(width: 6),
                                  Text(
                                    '3',
                                    style: TextStyle(
                                        fontFamily: 'SUIT',
                                        fontWeight: FontWeight.w500,
                                        fontSize: 12.sp,
                                        color: MIXIN_POINT_COLOR),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
