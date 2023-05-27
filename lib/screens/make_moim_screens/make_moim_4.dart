import 'package:flutter/material.dart';

import '../../const/colors.dart';


class MakeMoim4 extends StatelessWidget {
  const MakeMoim4({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF2F2F2),
      appBar: AppBar(
        backgroundColor: Color(0xFFF2F2F2),
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(24, 0, 24, 0),
        child: Column(
          children: [
            SizedBox(
              height: 450 + 149 + 24,
              child: Column(
                children: [
                  SizedBox(
                    height: 100,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        '모임이 완성되었습니다!',
                        style: TextStyle(
                            fontFamily: 'SUIT',
                            fontSize: 24,
                            fontWeight: FontWeight.w600,
                            color: MIXIN_BLACK_1),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 45,
                  ),
                  Container(
                    width: 300,
                    height: 300,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/images/_MoimFinish.png'),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton(
                  child: Text(
                    '완료하기',
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 18,
                        fontFamily: 'SUIT'),
                  ),
                  style: TextButton.styleFrom(
                    fixedSize: Size(165, 56),
                    elevation: 0,
                    backgroundColor: Color(0xFF51B49F),
                    foregroundColor: Color(0xFFFFFFFF),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  onPressed: () {},
                ),
                ElevatedButton(
                  child: Text(
                    '완료하기',
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 18,
                        fontFamily: 'SUIT'),
                  ),
                  style: TextButton.styleFrom(
                    fixedSize: Size(165, 56),
                    elevation: 0,
                    backgroundColor: MIXIN_BLACK_4,
                    foregroundColor: Color(0xFFFFFFFF),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  onPressed: () {},
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}