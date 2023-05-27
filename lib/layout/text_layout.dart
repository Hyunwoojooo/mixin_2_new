import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../const/colors.dart';

class HeadlineText extends StatelessWidget {
  final String? text;
  const HeadlineText({
    required this.text,
    Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      '$text',
      style: TextStyle(
        fontSize: 28.sp,
        fontWeight: FontWeight.w600,
        fontFamily: 'SUIT',
      ),
    );
  }
}

class InfoText extends StatelessWidget {
  final String? text;
  const InfoText({
    required this.text,
    Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      '$text',
      style:  TextStyle(
        fontFamily: 'SUIT',
        fontWeight: FontWeight.w500,
        fontSize: 12.0.sp,
        color: MIXIN_BLACK_3,
      ),
    );
  }
}
