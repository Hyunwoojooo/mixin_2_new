import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mixin_2/const/colors.dart';

class CustomTextFormField extends StatelessWidget {
  final String? hintText;
  final String? errorText;
  final bool obscrueText;
  final bool autoFocus;
  final ValueChanged<String>? onChanged;
  final TextEditingController? controller;

  const CustomTextFormField({
    this.controller,
    required this.onChanged,
    this.hintText,
    this.autoFocus = false,
    this.obscrueText = false,
    this.errorText,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final baseBorder = OutlineInputBorder(
      borderRadius: BorderRadius.circular(8.0.r),
      borderSide: BorderSide(
        color: MIXIN_BLACK_5,
        width: 1.5.w,
      ),
    );
    return TextFormField(
      controller: controller,
      cursorColor: Colors.grey,
      obscureText: obscrueText,
      autofocus: autoFocus,
      onChanged: onChanged,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
        hintText: hintText,
        errorText: errorText,
        hintStyle: TextStyle(
          color: MIXIN_BLACK_4,
          fontSize: 16.0.sp,
          fontFamily: 'SUIT',
          fontWeight: FontWeight.w500,
        ),
        fillColor: Colors.grey,
        // false - 배경색 없음
        // true - 배경색 있음
        filled: false,
        // 모든 Input 상태의 기본 스타일 세팅
        border: baseBorder,
        enabledBorder: baseBorder,
        // focus 일 때 세팅
        focusedBorder: baseBorder.copyWith(
            borderSide: baseBorder.borderSide.copyWith(color: MIXIN_BLACK_5)),
      ),
    );
  }
}
// Clear
