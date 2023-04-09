import 'package:flutter/material.dart';
import 'package:mixin_2/const/term_of_service_text/ad_term_text.dart';
import 'package:mixin_2/const/term_of_service_text/personal_term_text.dart';

import '../const/colors.dart';

class AdIfmTerm extends StatelessWidget {
  AdIfmTerm({Key? key}) : super(key: key);

  final AdTermText serviceTermText = AdTermText();
  final String first = AdTermText().first;

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
                  '광고성 정보 수신 동의 (선택)',
                  style: TextStyle(
                    fontFamily: 'SUIT',
                    fontWeight: FontWeight.w600,
                    fontSize: 24.0,
                  ),
                ),
                const SizedBox(
                  height: 24.0,
                ),
                Text(
                  '$first',
                  style: TextStyle(
                    fontFamily: 'SUIT',
                    fontWeight: FontWeight.w500,
                    fontSize: 12.0,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
