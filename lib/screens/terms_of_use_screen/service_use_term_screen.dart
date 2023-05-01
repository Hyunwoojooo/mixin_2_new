import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:mixin_2/const/colors.dart';
import 'package:mixin_2/const/term_of_service_text/service_term_text.dart';
import 'package:mixin_2/screens/signup_screens/signup_screen_tos.dart';

class ServiceUseTerm extends StatelessWidget {
  ServiceUseTerm({Key? key}) : super(key: key);

  final ServiceTermText serviceTermText = ServiceTermText();
  final String first = ServiceTermText().first;
  final String second = ServiceTermText().second;
  final String third = ServiceTermText().third;
  final String fourth = ServiceTermText().fourth;
  final String fifth = ServiceTermText().fifth;
  final String sixth = ServiceTermText().sixth;
  final String seventh = ServiceTermText().seventh;
  final String eighth = ServiceTermText().eighth;
  final String ninth = ServiceTermText().ninth;
  final String tenth = ServiceTermText().tenth;
  final String eleventh = ServiceTermText().eleventh;
  final String twelfth = ServiceTermText().twelfth;
  final String thirteenth = ServiceTermText().thirteenth;
  final String fourteenth = ServiceTermText().fourteenth;
  final String fifteenth = ServiceTermText().fifteenth;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 0.3,
        leading: GestureDetector(
          child: Image.asset('assets/images/close.png'),
          onTap: () {
            Navigator.pop(context);
          },
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Container(
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.white,
              spreadRadius: 30.0,
              blurRadius: 20.0,
            ),
          ]
        ),
        width: 342,
        height: 56,
        child: RawMaterialButton(
          fillColor: MIXIN_POINT_COLOR,
          elevation: 30.0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8.0),
          ),
          onPressed: () {
            Navigator.pop(context);

          },
          child: Text(
              '확인하고 전체동의',
            style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontFamily: 'SUIT',
                fontWeight: FontWeight.w600
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(24.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  '서비스이용약관 (필수)',
                  style: TextStyle(
                    fontFamily: 'SUIT',
                    fontWeight: FontWeight.w600,
                    fontSize: 24.0,
                  ),
                ),
                const SizedBox(
                  height: 24.0,
                ),
                const Text(
                  '제 1조(목적)',
                  style: TextStyle(
                    fontFamily: 'SUIT',
                    fontWeight: FontWeight.w600,
                    fontSize: 18.0,
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                Text(
                  '$first',
                  style: TextStyle(
                    fontFamily: 'SUIT',
                    fontWeight: FontWeight.w500,
                    fontSize: 12.0,
                  ),
                ),
                const SizedBox(
                  height: 24.0,
                ),
                const Text(
                  '제 2조(정의)',
                  style: TextStyle(
                    fontFamily: 'SUIT',
                    fontWeight: FontWeight.w600,
                    fontSize: 18.0,
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                Text(
                  '$second',
                  style: TextStyle(
                    fontFamily: 'SUIT',
                    fontWeight: FontWeight.w500,
                    fontSize: 11.0,
                  ),
                ),
                const SizedBox(
                  height: 24.0,
                ),
                const Text(
                  '제 3조(약관 등의 명시와 설명 및 개정)',
                  style: TextStyle(
                    fontFamily: 'SUIT',
                    fontWeight: FontWeight.w600,
                    fontSize: 18.0,
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                Text(
                  '$third',
                  style: TextStyle(
                    fontFamily: 'SUIT',
                    fontWeight: FontWeight.w500,
                    fontSize: 11.0,
                  ),
                ),
                const SizedBox(
                  height: 24.0,
                ),
                const Text(
                  '제 4조(서비스의 제공)',
                  style: TextStyle(
                    fontFamily: 'SUIT',
                    fontWeight: FontWeight.w600,
                    fontSize: 18.0,
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                Text(
                  '$fourth',
                  style: TextStyle(
                    fontFamily: 'SUIT',
                    fontWeight: FontWeight.w500,
                    fontSize: 11.0,
                  ),
                ),
                const SizedBox(
                  height: 24.0,
                ),
                const Text(
                  '제 5조(서비스 이용계약의 성립)',
                  style: TextStyle(
                    fontFamily: 'SUIT',
                    fontWeight: FontWeight.w600,
                    fontSize: 18.0,
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                Text(
                  '$fifth',
                  style: TextStyle(
                    fontFamily: 'SUIT',
                    fontWeight: FontWeight.w500,
                    fontSize: 11.0,
                  ),
                ),
                const SizedBox(
                  height: 24.0,
                ),
                const Text(
                  '제 6조(개인정보의 관리 및 보호)',
                  style: TextStyle(
                    fontFamily: 'SUIT',
                    fontWeight: FontWeight.w600,
                    fontSize: 18.0,
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                Text(
                  '$sixth',
                  style: TextStyle(
                    fontFamily: 'SUIT',
                    fontWeight: FontWeight.w500,
                    fontSize: 11.0,
                  ),
                ),
                const SizedBox(
                  height: 24.0,
                ),
                const Text(
                  '제 7조(서비스 이용계약의 종료)',
                  style: TextStyle(
                    fontFamily: 'SUIT',
                    fontWeight: FontWeight.w600,
                    fontSize: 18.0,
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                Text(
                  '$seventh',
                  style: TextStyle(
                    fontFamily: 'SUIT',
                    fontWeight: FontWeight.w500,
                    fontSize: 11.0,
                  ),
                ),
                const SizedBox(
                  height: 24.0,
                ),
                const Text(
                  '제 8조(회원에 대한 통지)',
                  style: TextStyle(
                    fontFamily: 'SUIT',
                    fontWeight: FontWeight.w600,
                    fontSize: 18.0,
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                Text(
                  '$eighth',
                  style: TextStyle(
                    fontFamily: 'SUIT',
                    fontWeight: FontWeight.w500,
                    fontSize: 11.0,
                  ),
                ),
                const SizedBox(
                  height: 24.0,
                ),
                const Text(
                  '제 9조(저작권의 귀속)',
                  style: TextStyle(
                    fontFamily: 'SUIT',
                    fontWeight: FontWeight.w600,
                    fontSize: 18.0,
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                Text(
                  '$ninth',
                  style: TextStyle(
                    fontFamily: 'SUIT',
                    fontWeight: FontWeight.w500,
                    fontSize: 11.0,
                  ),
                ),
                const SizedBox(
                  height: 24.0,
                ),
                const Text(
                  '제 10조(게시물의 삭제 및 접근 차단)',
                  style: TextStyle(
                    fontFamily: 'SUIT',
                    fontWeight: FontWeight.w600,
                    fontSize: 18.0,
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                Text(
                  '$tenth',
                  style: TextStyle(
                    fontFamily: 'SUIT',
                    fontWeight: FontWeight.w500,
                    fontSize: 11.0,
                  ),
                ),
                const SizedBox(
                  height: 24.0,
                ),
                const Text(
                  '제 11조(광고의 게재 및 발신)',
                  style: TextStyle(
                    fontFamily: 'SUIT',
                    fontWeight: FontWeight.w600,
                    fontSize: 18.0,
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                Text(
                  '$eleventh',
                  style: TextStyle(
                    fontFamily: 'SUIT',
                    fontWeight: FontWeight.w500,
                    fontSize: 11.0,
                  ),
                ),
                const SizedBox(
                  height: 24.0,
                ),
                const Text(
                  '제 12조(금지행위)',
                  style: TextStyle(
                    fontFamily: 'SUIT',
                    fontWeight: FontWeight.w600,
                    fontSize: 18.0,
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                Text(
                  '$twelfth',
                  style: TextStyle(
                    fontFamily: 'SUIT',
                    fontWeight: FontWeight.w500,
                    fontSize: 11.0,
                  ),
                ),
                const SizedBox(
                  height: 24.0,
                ),
                const Text(
                  '제 13조(서비스 제공의 중단 및 서비스 이용계약의 해지)',
                  style: TextStyle(
                    fontFamily: 'SUIT',
                    fontWeight: FontWeight.w600,
                    fontSize: 18.0,
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                Text(
                  '$thirteenth',
                  style: TextStyle(
                    fontFamily: 'SUIT',
                    fontWeight: FontWeight.w500,
                    fontSize: 11.0,
                  ),
                ),
                const SizedBox(
                  height: 24.0,
                ),
                const Text(
                  '제 14조(재판권 및 준거법)',
                  style: TextStyle(
                    fontFamily: 'SUIT',
                    fontWeight: FontWeight.w600,
                    fontSize: 18.0,
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                Text(
                  '$fourteenth',
                  style: TextStyle(
                    fontFamily: 'SUIT',
                    fontWeight: FontWeight.w500,
                    fontSize: 11.0,
                  ),
                ),
                const SizedBox(
                  height: 24.0,
                ),
                const Text(
                  '제 15조(기타)',
                  style: TextStyle(
                    fontFamily: 'SUIT',
                    fontWeight: FontWeight.w600,
                    fontSize: 18.0,
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                Text(
                  '$fifteenth',
                  style: TextStyle(
                    fontFamily: 'SUIT',
                    fontWeight: FontWeight.w500,
                    fontSize: 11.0,
                  ),
                ),
                const SizedBox(
                  height: 100,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
