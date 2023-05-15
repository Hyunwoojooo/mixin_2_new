import 'package:flutter/material.dart';
import 'package:mixin_2/const/colors.dart';

import 'moim_info_screen.dart';

class MoimMainScreen extends StatefulWidget {
  const MoimMainScreen({Key? key}) : super(key: key);

  @override
  State<MoimMainScreen> createState() => _MoimMainScreenState();
}

class _MoimMainScreenState extends State<MoimMainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  width: 390,
                  height: 215,
                  decoration: BoxDecoration(
                      boxShadow: [BoxShadow(color: Colors.grey.withOpacity(0.7))]),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 75,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                IconButton(
                                  onPressed: () {},
                                  icon: Image.asset(
                                    'assets/images/back_icon.png',
                                    color: Colors.white,
                                  ),
                                ),
                                SizedBox(
                                  width: 10.0,
                                ),
                                Text(
                                  '필름감아',
                                  style: TextStyle(
                                      fontFamily: 'SUIT',
                                      fontWeight: FontWeight.w600,
                                      fontSize: 24.0,
                                      color: Colors.white),
                                ),
                              ],
                            ),
                            IconButton(
                              onPressed: () {},
                              icon: Image.asset(
                                'assets/images/more_vert.png',
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 67),
                        child: Row(
                          children: [
                            Container(
                              width: 80,
                              height: 36,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(18),
                                  color: MIXIN_),
                              child: Text(
                                '동아리',
                                style: TextStyle(
                                  fontFamily: 'SUIT',
                                  fontWeight: FontWeight.w500,
                                  fontSize: 14.0,
                                  color: MIXIN_POINT_COLOR,
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 12.0,
                            ),
                            Container(
                              width: 80,
                              height: 36,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(18),
                                  color: Colors.white),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset('assets/images/health.png'),
                                  SizedBox(
                                    width: 8.0,
                                  ),
                                  Text(
                                    '운동',
                                    style: TextStyle(
                                      fontFamily: 'SUIT',
                                      fontWeight: FontWeight.w500,
                                      fontSize: 14.0,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  top: 175,
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: 59,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(24),
                      color: Colors.white,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        TextButton(
                          onPressed: () {},
                          child: Text(
                            '정보',
                            style: TextStyle(
                                fontFamily: 'SUIT',
                                fontWeight: FontWeight.w600,
                                fontSize: 20.0,
                                color: Colors.black),
                          ),
                        ),
                        TextButton(
                          onPressed: () {},
                          child: Text(
                            '게시판',
                            style: TextStyle(
                                fontFamily: 'SUIT',
                                fontWeight: FontWeight.w600,
                                fontSize: 20.0,
                                color: Colors.black),
                          ),
                        ),
                        TextButton(
                          onPressed: () {},
                          child: Text(
                            '활동',
                            style: TextStyle(
                                fontFamily: 'SUIT',
                                fontWeight: FontWeight.w600,
                                fontSize: 20.0,
                                color: Colors.black),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 12),
              child: Divider(
                thickness: 1,
                color: Color(0xFFF2F3F7),
              ),
            ),
            Expanded(
              child: PageView(
                scrollDirection: Axis.horizontal,
                children: [
                  MoimInfoScreen(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
