import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';

import '../const/colors.dart';

class MoimCardBig extends StatelessWidget {
  String moimType;
  int dDay;
  String imageAsset;
  String categoryName;
  int memberGender;
  int totalMember;
  int currentMember;
  void Function() onPressed;
  Color heartColor;
  String moimName;
  List<String> tagText;

  MoimCardBig(
      {required this.moimType,
      required this.dDay,
      required this.imageAsset,
      required this.categoryName,
      required this.memberGender,
      required this.totalMember,
      required this.currentMember,
      required this.onPressed,
      required this.heartColor,
      required this.moimName,
      required this.tagText,
      Key? key})
      : super(key: key);

  Color genderColor(int memberGender) {
    if (memberGender == 1) {
      return const Color(0xFF495FE7);
    } else if (memberGender == 2) {
      return const Color(0xFFE55E74);
    }
    return MIXIN_BLACK_4;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 12.h, left: 24.w, right: 24.w),
      width: 342.w,
      height: 321.h,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            minimumSize: Size.zero,
            padding: EdgeInsets.zero,
            tapTargetSize: MaterialTapTargetSize.shrinkWrap,
            backgroundColor: Colors.transparent,
            elevation: 0.0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            )),
        onPressed: () {},
        child: Column(
          children: [
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
                  top: 16.h,
                  left: 188.w,
                  child: Container(
                    width: 72.w,
                    height: 32.h,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(24),
                      color: MIXIN_,
                    ),
                    child: Text(
                      moimType,
                      style: TextStyle(
                        fontFamily: 'SUIT',
                        fontWeight: FontWeight.w500,
                        fontSize: 14.sp,
                        color: MIXIN_POINT_COLOR,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: 16.h,
                  right: 12.w,
                  child: Container(
                    width: 62.w,
                    height: 32.h,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(24),
                      color: MIXIN_BLACK_5,
                    ),
                    child: Text(
                      'D-$dDay',
                      style: TextStyle(
                        fontFamily: 'SUIT',
                        fontWeight: FontWeight.w500,
                        fontSize: 14.sp,
                        color: MIXIN_POINT_COLOR,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  right: 16.w,
                  bottom: 12.h,
                  child: IconButton(
                    onPressed: () {
                      onPressed;
                    },
                    icon: Image.asset(
                      'assets/images/icons/heart_pink_icon.png',
                      width: 26.w,
                      color: heartColor,
                    ),
                  ),
                ),
              ],
            ),
            Container(
              height: 129.h,
              padding: EdgeInsets.only(top: 8.h, left: 16.w, right: 16.w),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(8),
                  bottomRight: Radius.circular(8),
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.3),
                    spreadRadius: 1,
                    blurRadius: 5,
                    offset: const Offset(1, 1),
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Row(
                        children: [
                          Image.asset(
                            imageAsset,
                            width: 26.w,
                          ),
                          SizedBox(width: 8.w),
                          Text(
                            categoryName,
                            style: TextStyle(
                              fontFamily: 'SUIT',
                              fontWeight: FontWeight.w500,
                              fontSize: 16.sp,
                              color: MIXIN_BLACK_2,
                            ),
                          )
                        ],
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.person,
                            color: genderColor(memberGender),
                            size: 18.w,
                          ),
                          SizedBox(width: 8.w),
                          Text(
                            '$currentMember/$totalMember',
                            style: TextStyle(
                              fontFamily: 'SUIT',
                              fontWeight: FontWeight.w500,
                              fontSize: 14.0.sp,
                              color: MIXIN_BLACK_4,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                  SizedBox(height: 8.h),
                  SizedBox(
                    width: 288.w,
                    child: Text(
                      moimName,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.start,
                      maxLines: 1,
                      style: TextStyle(
                        fontFamily: 'SUIT',
                        fontWeight: FontWeight.w600,
                        fontSize: 22.sp,
                        color: MIXIN_BLACK_1,
                      ),
                    ),
                  ),
                  SizedBox(height: 12.h),
                  Row(
                    children: [
                      Visibility(
                        visible: tagText[0].isEmpty ? false : true,
                        child: Container(
                          width: 60.w,
                          height: 32.h,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: MIXIN_),
                          child: Text(
                            '#${tagText[0]}',
                            style: TextStyle(
                              fontFamily: 'SUIT',
                              fontWeight: FontWeight.w500,
                              fontSize: 14.0.sp,
                              color: MIXIN_POINT_COLOR,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 8.w),
                      Visibility(
                        visible: tagText[1].isEmpty ? false : true,
                        child: Container(
                          width: 60.w,
                          height: 32.h,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: MIXIN_),
                          child: Text(
                            '#${tagText[1]}',
                            style: TextStyle(
                              fontFamily: 'SUIT',
                              fontWeight: FontWeight.w500,
                              fontSize: 14.0.sp,
                              color: MIXIN_POINT_COLOR,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 6.w),
                      Visibility(
                        visible: tagText[2].isEmpty ? false : true,
                        child: Container(
                          width: 60.w,
                          height: 32.h,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: MIXIN_),
                          child: Text(
                            '#${tagText[2]}',
                            style: TextStyle(
                              fontFamily: 'SUIT',
                              fontWeight: FontWeight.w500,
                              fontSize: 14.0.sp,
                              color: MIXIN_POINT_COLOR,
                            ),
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
    );
  }
}

class MoimCardSmall extends StatelessWidget {
  String moimType;
  int dDay;
  String imageAsset;
  String categoryName;
  int memberGender;
  int totalMember;
  int currentMember;
  void Function() onPressed;
  Color heartColor;
  String moimName;
  List<String> tagText;

  MoimCardSmall(
      {required this.moimType,
      required this.dDay,
      required this.imageAsset,
      required this.categoryName,
      required this.memberGender,
      required this.totalMember,
      required this.currentMember,
      required this.onPressed,
      required this.heartColor,
      required this.moimName,
      required this.tagText,
      Key? key})
      : super(key: key);

  Color genderColor(int memberGender) {
    if (memberGender == 1) {
      return const Color(0xFF495FE7);
    } else if (memberGender == 2) {
      return const Color(0xFFE55E74);
    }
    return MIXIN_BLACK_4;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 24.h),
      width: 283.w,
      height: 265.h,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            minimumSize: Size.zero,
            padding: EdgeInsets.zero,
            tapTargetSize: MaterialTapTargetSize.shrinkWrap,
            backgroundColor: Colors.transparent,
            elevation: 0.0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            )),
        onPressed: () {},
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: 158.h,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(8),
                      topLeft: Radius.circular(8),
                    ),
                    color: Colors.orange,
                  ),
                ),
                Positioned(
                  top: 12.h,
                  left: 129.w,
                  child: Container(
                    width: 72.w,
                    height: 32.h,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(24),
                      color: MIXIN_,
                    ),
                    child: Text(
                      moimType,
                      style: TextStyle(
                        fontFamily: 'SUIT',
                        fontWeight: FontWeight.w500,
                        fontSize: 14.sp,
                        color: MIXIN_POINT_COLOR,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: 12.h,
                  right: 12.w,
                  child: Container(
                    width: 62.w,
                    height: 32.h,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(24),
                      color: MIXIN_BLACK_5,
                    ),
                    child: Text(
                      'D-$dDay',
                      style: TextStyle(
                        fontFamily: 'SUIT',
                        fontWeight: FontWeight.w500,
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
                      onPressed;
                    },
                    icon: Image.asset(
                      'assets/images/icons/heart_pink_icon.png',
                      width: 26.w,
                      color: heartColor,
                    ),
                  ),
                ),
              ],
            ),
            Container(
              height: 107.h,
              padding: EdgeInsets.only(top: 8.h, left: 16.w, right: 16.w),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(8),
                    bottomRight: Radius.circular(8),
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.3),
                      spreadRadius: 1,
                      blurRadius: 5,
                      offset: const Offset(1, 1),
                    ),
                  ]),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Row(
                        children: [
                          Image.asset(
                            imageAsset,
                            width: 20.w,
                          ),
                          SizedBox(width: 8.w),
                          Text(
                            categoryName,
                            style: TextStyle(
                              fontFamily: 'SUIT',
                              fontWeight: FontWeight.w500,
                              fontSize: 14.sp,
                              color: MIXIN_BLACK_2,
                            ),
                          )
                        ],
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.person,
                            color: genderColor(memberGender),
                            size: 18.w,
                          ),
                          SizedBox(width: 4.w),
                          Text(
                            '$currentMember/$totalMember',
                            style: TextStyle(
                              fontFamily: 'SUIT',
                              fontWeight: FontWeight.w500,
                              fontSize: 12.0.sp,
                              color: MIXIN_BLACK_4,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                  SizedBox(height: 4.h),
                  SizedBox(
                    width: 236.w,
                    child: Text(
                      moimName,
                      maxLines: 1,
                      style: TextStyle(
                        fontFamily: 'SUIT',
                        fontWeight: FontWeight.w600,
                        fontSize: 18.sp,
                        color: MIXIN_BLACK_1,
                      ),
                    ),
                  ),
                  SizedBox(height: 10.h),
                  Row(
                    children: [
                      Visibility(
                        visible: tagText[0].isEmpty ? false : true,
                        child: Container(
                          width: 52.w,
                          height: 28.h,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: MIXIN_),
                          child: Text(
                            '#${tagText[0]}',
                            style: TextStyle(
                              fontFamily: 'SUIT',
                              fontWeight: FontWeight.w500,
                              fontSize: 12.0.sp,
                              color: MIXIN_POINT_COLOR,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 6.w),
                      Visibility(
                        visible: tagText[1].isEmpty ? false : true,
                        child: Container(
                          width: 56.w,
                          height: 28.h,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: MIXIN_),
                          child: Text(
                            '#${tagText[1]}',
                            style: TextStyle(
                              fontFamily: 'SUIT',
                              fontWeight: FontWeight.w500,
                              fontSize: 12.0.sp,
                              color: MIXIN_POINT_COLOR,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 6.w),
                      Visibility(
                        visible: tagText[2].isEmpty ? false : true,
                        child: Container(
                          width: 56.w,
                          height: 28.h,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: MIXIN_),
                          child: Text(
                            '#${tagText[2]}',
                            style: TextStyle(
                              fontFamily: 'SUIT',
                              fontWeight: FontWeight.w500,
                              fontSize: 12.0.sp,
                              color: MIXIN_POINT_COLOR,
                            ),
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
    );
  }
}

class MoimThunder extends StatelessWidget {
  String imageAsset;
  String categoryName;
  int memberGender;
  int totalMember;
  int currentMember;
  void Function() onPressed;
  String moimName;
  String moimDate;
  String moimPlace;

  MoimThunder(
      {required this.imageAsset,
      required this.categoryName,
      required this.memberGender,
      required this.totalMember,
      required this.currentMember,
      required this.onPressed,
      required this.moimName,
      required this.moimDate,
      required this.moimPlace,
      Key? key})
      : super(key: key);

  Color genderColor(int memberGender) {
    if (memberGender == 1) {
      return const Color(0xFF495FE7);
    } else if (memberGender == 2) {
      return const Color(0xFFE55E74);
    }
    return MIXIN_BLACK_4;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 342.w,
      height: 137.h,
      padding: EdgeInsets.only(left: 12.w, right: 12.w, top: 16.h),
      margin: EdgeInsets.only(bottom: 12.h, left: 24.w, right: 24.w),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: WHITE,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.3),
            spreadRadius: 1,
            blurRadius: 5,
            offset: const Offset(1, 1),
          ),
        ],
      ),
      child: Column(
        // mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 4.0.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Image.asset(
                      imageAsset,
                      width: 26.w,
                    ),
                    SizedBox(width: 8.w),
                    Text(
                      categoryName,
                      style: TextStyle(
                        fontFamily: 'SUIT',
                        fontWeight: FontWeight.w500,
                        fontSize: 16.sp,
                        color: MIXIN_BLACK_2,
                      ),
                    )
                  ],
                ),
                Container(
                  width: 72.w,
                  height: 32.h,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(24),
                    color: MIXIN_,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/images/icons/moim_thunder.png',
                        width: 11.w,
                      ),
                      SizedBox(width: 4.w),
                      Text(
                        '번개',
                        style: TextStyle(
                          fontFamily: 'SUIT',
                          fontWeight: FontWeight.w500,
                          fontSize: 14.sp,
                          color: MIXIN_POINT_COLOR,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 8.h),
          Padding(
            padding: EdgeInsets.only(left: 4.0.w),
            child: SizedBox(
              width: 288.w,
              child: Text(
                moimName,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.start,
                maxLines: 1,
                style: TextStyle(
                  fontFamily: 'SUIT',
                  fontWeight: FontWeight.w600,
                  fontSize: 22.sp,
                  color: MIXIN_BLACK_1,
                ),
              ),
            ),
          ),
          SizedBox(height: 12.h),
          Container(
            width: 198.w,
            height: 32.h,
            padding: EdgeInsets.only(left: 12.w),
            // alignment: Alignment.center,
            decoration: BoxDecoration(
              color: MIXIN_BLACK_5,
              borderRadius: BorderRadius.circular(16),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  moimDate,
                  style: TextStyle(
                    fontFamily: 'SUIT',
                    fontWeight: FontWeight.w500,
                    fontSize: 14.sp,
                    color: MIXIN_BLACK_2,
                  ),
                ),
                VerticalDivider(
                  width: 16.w,
                  thickness: 1,
                  indent: 8,
                  endIndent: 8,
                  color: MIXIN_BLACK_4,
                ),
                SizedBox(
                  width: 117.w,
                  child: Text(
                    moimPlace,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.start,
                    maxLines: 1,
                    style: TextStyle(
                      fontFamily: 'SUIT',
                      fontWeight: FontWeight.w500,
                      fontSize: 14.sp,
                      color: MIXIN_BLACK_2,
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
