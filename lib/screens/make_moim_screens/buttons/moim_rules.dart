import 'package:flutter/material.dart';

import '../../../const/colors.dart';

class MoimRules extends StatefulWidget {
  const MoimRules({Key? key}) : super(key: key);

  @override
  State<MoimRules> createState() => _MoimRulesState();
}

class _MoimRulesState extends State<MoimRules> {

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 65,
      child: TextFormField(
        style: TextStyle(
          fontSize: 16,
          fontFamily: 'SUIT',
          fontWeight: FontWeight.w600,
        ),
        decoration: InputDecoration(
          hintText: '가입 조건을 작성해주세요',
          hintStyle: TextStyle(
            fontSize: 16,
            fontFamily: 'SUIT',
            fontWeight: FontWeight.w500,
            color: MIXIN_BLACK_4,
          ),
          counterStyle: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w500,
            fontFamily: 'SUIT',
            color: Color(0xFFCED0D5),
          ),
          border: InputBorder.none,
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(8)),
            borderSide: BorderSide(
              color: MIXIN_BLACK_4,
            ),
          ),
          // counterText: '',
          // filled: true,
          // fillColor: MIXIN_WHITE,
          contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 14),
        ),
        maxLength: 80,
        maxLines:null,
      ),
    );
  }
}
