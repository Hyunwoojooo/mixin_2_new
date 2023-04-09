import 'package:flutter/material.dart';
import 'package:mixin_2/const/term_of_service_text/personal_term_text.dart';

import '../const/colors.dart';

class PersonalIfmterm extends StatelessWidget {
  PersonalIfmterm({Key? key}) : super(key: key);

  final PersonalTermText serviceTermText = PersonalTermText();
  final String first = PersonalTermText().first;
  final String second = PersonalTermText().second;
  final String third = PersonalTermText().third;
  final String fourth = PersonalTermText().fourth;

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
        decoration: const BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.white,
              spreadRadius: 30.0,
              blurRadius: 20.0,
            ),
          ],
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
          child: const Text(
            '확인하고 전체동의',
            style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontFamily: 'SUIT',
                fontWeight: FontWeight.w600),
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
                  '개인정보 수집 및 이용 동의 (필수)',
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
                  '수집하는 개인정보의 항목',
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
                  '수집한 개인정보의 처리 목적',
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
                  '수집한 개인정보의 보관 및 파기',
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
                  '기타',
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
                  height: 100.0,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
