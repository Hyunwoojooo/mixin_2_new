import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../const/colors.dart';

class CartegoryButton extends StatefulWidget {
  const CartegoryButton({Key? key}) : super(key: key);

  @override
  State<CartegoryButton> createState() => _CartegoryButtonState();
}

class _CartegoryButtonState extends State<CartegoryButton> {
  bool _isPressed1 = false;
  bool _isPressed2 = false;
  bool _isPressed3 = false;
  bool _isPressed4 = false;
  String _moim = "모임종류";
  String _cartegory = "카테고리";
  String _cartegoryImage = 'assets/images/category_images/none_space.png';
  double _cartegorysize = 85;
  final _grey = MIXIN_BLACK_5; //MIXIN_BLACK_5의 색이 잘 안보여서 임시대체

  //none은 안되고 'assets/images/_Cartegory01.png'이런 주소는 됨
  //없는 것 처럼 보이는 이미지로 넣어야될듯

  @override
  Widget build(BuildContext context) {
    Color moimcolor = _isPressed1 ? MIXIN_2 : MIXIN_BLACK_4;
    Color cartegorycolor = _isPressed2 ? MIXIN_2 : MIXIN_BLACK_4;

    return Column(
      children: [
        Row(
          children: [
            SizedBox(
              height: 36.h,
              width: 81.w,
              child: ElevatedButton(
                onPressed: () {
                  setState(() {
                    _isPressed1 = !_isPressed1;
                    _isPressed2 = false;
                    _isPressed3 = false;
                    _moim = "모임종류";
                  });
                },
                style: ElevatedButton.styleFrom(
                  side: BorderSide(
                    color: _isPressed3 ? MIXIN_ : moimcolor,
                  ),
                  backgroundColor:
                      _isPressed3 ? MIXIN_ : const Color(0xFFF2F2F2),
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18.r),
                  ),
                ),
                child: Text(
                  _moim,
                  style: TextStyle(
                    height: 1.42.h,
                    fontSize: 14.sp,
                    color: _isPressed3 ? MIXIN_2 : moimcolor,
                    fontFamily: 'SUIT',
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
            SizedBox(width: 12.w),
            SizedBox(
              height: 36.h,
              width: _cartegorysize,
              child: ElevatedButton.icon(
                // child: ElevatedButton(
                onPressed: () {
                  setState(() {
                    _isPressed1 = false;
                    _isPressed2 = !_isPressed2;
                    _isPressed4 = false;
                    _cartegory = "카테고리";
                    _cartegorysize = 85.w;
                  });
                  print(_isPressed1);
                  print(_isPressed2);
                  print(_isPressed3);
                  print(_isPressed4);
                },
                icon: Image.asset(
                  _cartegoryImage,
                  width: _isPressed4 ? 24.w : 0,
                ),
                // child: Text(
                label: Text(
                  _cartegory,
                  style: TextStyle(
                    height: 1.42.h,
                    fontSize: 14.sp,
                    color: _isPressed4 ? Colors.black : cartegorycolor,
                    fontFamily: 'SUIT',
                    fontWeight: FontWeight.w500,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.zero,
                  backgroundColor:
                      _isPressed4 ? _grey : const Color(0xFFF2F2F2),
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                    side: BorderSide(
                      color: _isPressed4 ? _grey : cartegorycolor,
                      width: 1.0.w,
                    ),
                    borderRadius: BorderRadius.circular(18.r),
                  ),
                ),
              ),
            ),
          ],
        ),
        if (_isPressed1)
          Column(
            children: [
              Row(
                children: [
                  TextButton(
                    onPressed: () {
                      setState(() {
                        _isPressed1 = false;
                        _isPressed2 = true;
                        _isPressed3 = true;
                        _moim = "동아리";
                      });
                    },
                    child: Text(
                      '동아리',
                      style: TextStyle(
                        fontSize: 14.sp,
                        color: MIXIN_2,
                        fontWeight: FontWeight.w500,
                        fontFamily: 'SUIT',
                      ),
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      setState(() {
                        _isPressed1 = false;
                        _isPressed2 = true;
                        _isPressed3 = true;
                        _moim = "번개";
                      });
                    },
                    child: Text(
                      '번개',
                      style: TextStyle(
                          fontSize: 14.sp,
                          color: MIXIN_2,
                          fontWeight: FontWeight.w500,
                          fontFamily: 'SUIT'),
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      setState(() {
                        _isPressed1 = false;
                        _isPressed2 = true;
                        _isPressed3 = true;
                        _moim = "스터디";
                      });
                    },
                    child: Text(
                      '스터디',
                      style: TextStyle(
                        fontSize: 14.sp,
                        color: MIXIN_2,
                        fontWeight: FontWeight.w500,
                        fontFamily: 'SUIT',
                      ),
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      setState(() {
                        _isPressed1 = false;
                        _isPressed2 = true;
                        _isPressed3 = true;
                        _moim = "프로젝트";
                      });
                    },
                    child: Text(
                      '프로젝트',
                      style: TextStyle(
                        fontSize: 14.sp,
                        color: MIXIN_2,
                        fontWeight: FontWeight.w500,
                        fontFamily: 'SUIT',
                      ),
                    ),
                  ),
                ],
              ),
              Divider(thickness: 1, height: 1, color: _grey),
            ],
          ),
        SizedBox(height: 12.h),
        if (_isPressed2)
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //1열
              Row(
                children: [
                  SizedBox(
                    width: 110.w,
                    height: 40.h,
                    child: ElevatedButton.icon(
                      onPressed: () {
                        setState(() {
                          _isPressed1 = false;
                          _isPressed2 = false;
                          _isPressed4 = true;
                          _cartegory = "IT/개발";
                          _cartegorysize = 110.w;
                          _cartegoryImage = 'assets/images/category_images/IT.png';
                        });
                      },
                      icon: Image.asset(
                        'assets/images/category_images/IT.png',
                        width: 24.w,
                      ),
                      label: Text(
                        'IT/개발',
                        style: TextStyle(
                            color: MIXIN_BLACK_1,
                            fontSize: 14.sp,
                            fontFamily: 'SUIT',
                            fontWeight: FontWeight.w500),
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: _grey,
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                          side: BorderSide(
                            color: _grey,
                          ),
                          borderRadius: BorderRadius.circular(36.r),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 8.w),
                  SizedBox(
                    width: 97.w,
                    height: 40.h,
                    child: ElevatedButton.icon(
                      onPressed: () {
                        setState(() {
                          _isPressed1 = false;
                          _isPressed2 = false;
                          _isPressed4 = true;
                          _cartegory = "디자인";
                          _cartegorysize = 97.w;
                          _cartegoryImage = 'assets/images/category_images/design.png';
                        });
                      },
                      icon: Image.asset(
                        'assets/images/category_images/design.png',
                        width: 24.w,
                      ),
                      label: Text(
                        '디자인',
                        style: TextStyle(
                            color: MIXIN_BLACK_1,
                            fontSize: 14.sp,
                            fontFamily: 'SUIT',
                            fontWeight: FontWeight.w500),
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: _grey,
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                          side: BorderSide(
                            color: _grey,
                          ),
                          borderRadius: BorderRadius.circular(36.r),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 8.w),
                  SizedBox(
                    width: 110.w,
                    height: 40.h,
                    child: ElevatedButton.icon(
                      onPressed: () {
                        setState(() {
                          _isPressed1 = false;
                          _isPressed2 = false;
                          _isPressed4 = true;
                          _cartegory = "문화활동";
                          _cartegorysize = 110.w;
                          _cartegoryImage = 'assets/images/category_images/culture.png';
                        });
                      },
                      icon: Image.asset(
                        'assets/images/category_images/culture.png',
                        width: 24.w,
                      ),
                      label: Text(
                        '문화활동',
                        style: TextStyle(
                          color: MIXIN_BLACK_1,
                          fontSize: 14.sp,
                          fontFamily: 'SUIT',
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: _grey,
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                          side: BorderSide(
                            color: _grey,
                          ),
                          borderRadius: BorderRadius.circular(36.r),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 12.h),
              Row(
                children: [
                  SizedBox(
                    width: 89.w,
                    height: 40.h,
                    child: ElevatedButton.icon(
                      onPressed: () {
                        setState(() {
                          _isPressed1 = false;
                          _isPressed2 = false;
                          _isPressed4 = true;
                          _cartegory = "음악";
                          _cartegorysize = 92.w;
                          _cartegoryImage = 'assets/images/category_images/music.png';
                        });
                      },
                      icon: Image.asset(
                        'assets/images/category_images/music.png',
                        width: 24.w,
                      ),
                      label: Text(
                        '음악',
                        style: TextStyle(
                          color: MIXIN_BLACK_1,
                          fontSize: 14.sp,
                          fontFamily: 'SUIT',
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: _grey,
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                          side: BorderSide(
                            color: _grey,
                          ),
                          borderRadius: BorderRadius.circular(36.r),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 8.w),
                  SizedBox(
                    width: 89.w,
                    height: 40.h,
                    child: ElevatedButton.icon(
                      onPressed: () {
                        setState(() {
                          _isPressed1 = false;
                          _isPressed2 = false;
                          _isPressed4 = true;
                          _cartegory = "여행";
                          _cartegorysize = 92.w;
                          _cartegoryImage = 'assets/images/category_images/trip.png';
                        });
                      },
                      icon: Image.asset(
                        'assets/images/category_images/trip.png',
                        width: 24.w,
                      ),
                      label: Text(
                        '여행',
                        style: TextStyle(
                            color: MIXIN_BLACK_1,
                            fontSize: 14.sp,
                            fontFamily: 'SUIT',
                            fontWeight: FontWeight.w500),
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: _grey,
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                          side: BorderSide(
                            color: _grey,
                          ),
                          borderRadius: BorderRadius.circular(36.r),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 8.w),
                  SizedBox(
                    width: 110.w,
                    height: 40.h,
                    child: ElevatedButton.icon(
                      onPressed: () {
                        setState(() {
                          _isPressed1 = false;
                          _isPressed2 = false;
                          _isPressed4 = true;
                          _cartegory = "봉사활동";
                          _cartegorysize = 110.w;
                          _cartegoryImage = 'assets/images/category_images/bongsa.png';
                        });
                      },
                      icon: Image.asset(
                        'assets/images/category_images/bongsa.png',
                        width: 24.w,
                      ),
                      label: Text(
                        '봉사활동',
                        style: TextStyle(
                          color: MIXIN_BLACK_1,
                          fontSize: 14.sp,
                          fontFamily: 'SUIT',
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: _grey,
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                          side: BorderSide(
                            color: _grey,
                          ),
                          borderRadius: BorderRadius.circular(36.r),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 12.h),
              Row(
                children: [
                  SizedBox(
                    width: 89.w,
                    height: 40.h,
                    child: ElevatedButton.icon(
                      onPressed: () {
                        setState(() {
                          _isPressed1 = false;
                          _isPressed2 = false;
                          _isPressed4 = true;
                          _cartegory = "운동";
                          _cartegorysize = 92.w;
                          _cartegoryImage =  'assets/images/category_images/health.png';

                        });
                      },
                      icon: Image.asset(
                        'assets/images/category_images/health.png',
                        width: 24.w,
                      ),
                      label: Text(
                        '운동',
                        style: TextStyle(
                          color: MIXIN_BLACK_1,
                          fontSize: 14.sp,
                          fontFamily: 'SUIT',
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: _grey,
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                          side: BorderSide(
                            color: _grey,
                          ),
                          borderRadius: BorderRadius.circular(36.r),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 8.w),
                  SizedBox(
                    width: 110.w,
                    height: 40.h,
                    child: ElevatedButton.icon(
                      onPressed: () {
                        setState(() {
                          _isPressed1 = false;
                          _isPressed2 = false;
                          _isPressed4 = true;
                          _cartegory = "반려동물";
                          _cartegorysize = 110.w;
                          _cartegoryImage = 'assets/images/category_images/animal.png';
                        });
                      },
                      icon: Image.asset(
                        'assets/images/category_images/animal.png',
                        width: 24.w,
                      ),
                      label: Text(
                        '반려동물',
                        style: TextStyle(
                          color: MIXIN_BLACK_1,
                          fontSize: 14.sp,
                          fontFamily: 'SUIT',
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: _grey,
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                          side: BorderSide(
                            color: _grey,
                          ),
                          borderRadius: BorderRadius.circular(36.r),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 8.w),
                  SizedBox(
                    width: 89.w,
                    height: 40.h,
                    child: ElevatedButton.icon(
                      onPressed: () {
                        setState(() {
                          _isPressed1 = false;
                          _isPressed2 = false;
                          _isPressed4 = true;
                          _cartegory = "사교";
                          _cartegorysize = 92.w;
                          _cartegoryImage = 'assets/images/category_images/sagyo.png';
                        });
                      },
                      icon: Image.asset(
                        'assets/images/category_images/sagyo.png',
                        width: 24.w,
                      ),
                      label: Text(
                        '사교',
                        style: TextStyle(
                          color: MIXIN_BLACK_1,
                          fontSize: 14.sp,
                          fontFamily: 'SUIT',
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: _grey,
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                          side: BorderSide(
                            color: _grey,
                          ),
                          borderRadius: BorderRadius.circular(36.r),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 12.h),
              Row(
                children: [
                  SizedBox(
                    width: 89.w,
                    height: 40.h,
                    child: ElevatedButton.icon(
                      onPressed: () {
                        setState(() {
                          _isPressed1 = false;
                          _isPressed2 = false;
                          _isPressed4 = true;
                          _cartegory = "수업";
                          _cartegorysize = 92.w;
                          _cartegoryImage = 'assets/images/category_images/class.png';
                        });
                      },
                      icon: Image.asset(
                        'assets/images/category_images/class.png',
                        width: 24.w,
                      ),
                      label: Text(
                        '수업',
                        style: TextStyle(
                            color: MIXIN_BLACK_1,
                            fontSize: 14.sp,
                            fontFamily: 'SUIT',
                            fontWeight: FontWeight.w500),
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: _grey,
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                          side: BorderSide(
                            color: _grey,
                          ),
                          borderRadius: BorderRadius.circular(36.r),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 8.w),
                  SizedBox(
                    width: 100.w,
                    height: 40.h,
                    child: ElevatedButton.icon(
                      onPressed: () {
                        setState(() {
                          _isPressed1 = false;
                          _isPressed2 = false;
                          _isPressed4 = true;
                          _cartegory = "외국어";
                          _cartegorysize = 97.w;
                          _cartegoryImage = 'assets/images/category_images/language.png';
                        });
                      },
                      icon: Image.asset(
                        'assets/images/category_images/language.png',
                        width: 24.w,
                      ),
                      label: Text(
                        '외국어',
                        style: TextStyle(
                            color: MIXIN_BLACK_1,
                            fontSize: 14.sp,
                            fontFamily: 'SUIT',
                            fontWeight: FontWeight.w500),
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: _grey,
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                          side: BorderSide(
                            color: _grey,
                          ),
                          borderRadius: BorderRadius.circular(36.r),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 8.w),
                  SizedBox(
                    width: 89.w,
                    height: 40,
                    child: ElevatedButton.icon(
                      onPressed: () {
                        setState(() {
                          _isPressed1 = false;
                          _isPressed2 = false;
                          _isPressed4 = true;
                          _cartegory = "맛집";
                          _cartegorysize = 92.w;
                          _cartegoryImage = 'assets/images/category_images/restuarant.png';
                        });
                      },
                      icon: Image.asset(
                        'assets/images/category_images/restuarant.png',
                        width: 24.w,
                      ),
                      label: Text(
                        '맛집',
                        style: TextStyle(
                          color: MIXIN_BLACK_1,
                          fontSize: 14.sp,
                          fontFamily: 'SUIT',
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: _grey,
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                          side: BorderSide(
                            color: _grey,
                          ),
                          borderRadius: BorderRadius.circular(36.r),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 12.h),
              Row(
                children: [
                  SizedBox(
                    width: 89.w,
                    height: 40.h,
                    child: ElevatedButton.icon(
                      onPressed: () {
                        setState(() {
                          _isPressed1 = false;
                          _isPressed2 = false;
                          _isPressed4 = true;
                          _cartegory = "요리";
                          _cartegorysize = 92.w;
                          _cartegoryImage = 'assets/images/category_images/cook.png';
                        });
                      },
                      icon: Image.asset(
                        'assets/images/category_images/cook.png',
                        width: 24.w,
                      ),
                      label: Text(
                        '요리',
                        style: TextStyle(
                          color: MIXIN_BLACK_1,
                          fontSize: 14.sp,
                          fontFamily: 'SUIT',
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: _grey,
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                          side: BorderSide(
                            color: _grey,
                          ),
                          borderRadius: BorderRadius.circular(36.r),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 8.w),
                  SizedBox(
                    width: 89.w,
                    height: 40.h,
                    child: ElevatedButton.icon(
                      onPressed: () {
                        setState(() {
                          _isPressed1 = false;
                          _isPressed2 = false;
                          _isPressed4 = true;
                          _cartegory = "금융";
                          _cartegorysize = 92.w;
                          _cartegoryImage = 'assets/images/category_images/finance.png';
                        });
                      },
                      icon: Image.asset(
                        'assets/images/category_images/finance.png',
                        width: 24,
                      ),
                      label: Text(
                        '금융',
                        style: TextStyle(
                          color: MIXIN_BLACK_1,
                          fontSize: 14.sp,
                          fontFamily: 'SUIT',
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: _grey,
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                          side: BorderSide(
                            color: _grey,
                          ),
                          borderRadius: BorderRadius.circular(36.r),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 16.h),
              Divider(thickness: 1, height: 1, color: _grey),
            ],
          ),
      ],
    );
  }
}
