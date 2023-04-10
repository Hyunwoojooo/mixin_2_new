import 'package:chips_choice/chips_choice.dart';
import 'package:flutter/material.dart';
import 'package:mixin_2/const/colors.dart';

import 'make_position_screen.dart';

class MakeCategoryScreen extends StatefulWidget {
  const MakeCategoryScreen({Key? key}) : super(key: key);

  @override
  State<MakeCategoryScreen> createState() => _MakeCategoryScreenState();
}

class _MakeCategoryScreenState extends State<MakeCategoryScreen> {

  bool nextButtonColor = false;
  bool it = false;
  bool design = false;
  bool culture = false;
  bool mucis = false;
  bool trip = false;
  bool bongsa = false;
  bool health = false;
  bool animal = false;
  bool sagyo = false;
  bool classes = false;
  bool language = false;
  bool restuarant = false;
  bool cook = false;
  bool finance = false;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 0.0,
        leading: GestureDetector(
          child: Image.asset('assets/images/back_icon.png'),
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
                spreadRadius: 0.0,
                blurRadius: 0.0,
              ),
            ]
        ),
        width: 342,
        height: 56,
        child: RawMaterialButton(
          fillColor: nextButtonColor == true ? MIXIN_POINT_COLOR : MIXIN_BLACK_4,
          elevation: 0.0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8.0),
          ),
          onPressed: () {
            if (nextButtonColor == false){
              Navigator.of(context).push(
                MaterialPageRoute(
                    builder: (context) => MakePositionScreen()),
              );
            } else {}
          },
          child: Text(
            '다음',
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
        keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 29.0,
                ),
                Container(
                  color: Colors.transparent,
                  child: const Text(
                    '요즘 관심가는 주제가\n무엇인가요?',
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.w600,
                      fontFamily: 'SUIT',
                    ),
                  ),
                ),
                const SizedBox(
                  height: 12.0,
                ),
                Container(
                  width: 201,
                  height: 36,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(18.0),
                    color: MIXIN_BLACK_5,
                  ),
                  child: const Center(
                    child: Text(
                      '최소 3가지 이상 선택해주세요.',
                      style: TextStyle(
                        fontFamily: 'SUIT',
                        fontWeight: FontWeight.w500,
                        fontSize: 14.0,
                        color: Color(0xFF51B49F),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 54,
                ),
                Row(
                  children: [
                    // IT
                    SizedBox(
                      width: 101,
                      height: 48,
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            side: BorderSide(
                              color: it == true ? MIXIN_2 : MIXIN_BLACK_5
                            ),
                              padding: EdgeInsets.zero,
                              elevation: 0.0,
                            backgroundColor: it == true ? MIXIN_ : MIXIN_BLACK_5
                          ),
                          onPressed: (){
                            setState(() {
                              it = !it;
                            });
                          },
                          child: Container(
                            color: it == true ? MIXIN_ : MIXIN_BLACK_5,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset(
                                  'assets/images/IT.png',
                                  width: 24,
                                  height: 21.47,
                                ),
                                const SizedBox(
                                  width: 8.0,
                                ),
                                const Text(
                                  'IT/개발',
                                  style: TextStyle(
                                      fontFamily: 'SUIT',
                                      fontSize: 16.0,
                                      fontWeight: FontWeight.w500,
                                      color: MIXIN_BLACK_1
                                  ),
                                ),
                              ],
                            ),
                          )
                      ),
                    ),

                    SizedBox(
                      width: 12.0,
                    ),
                    // Design
                    SizedBox(
                      width: 92,
                      height: 48,
                      child: Container(
                        color: MIXIN_BLACK_5,
                        child: Row(
                          children: [
                            Image.asset(
                              'assets/images/design.png',
                              width: 18,
                              height: 18,
                            ),
                            const SizedBox(
                              width: 9.0,
                            ),
                            const Text(
                              '디자인',
                              style: TextStyle(
                                  fontFamily: 'SUIT',
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.w500,
                                  color: MIXIN_BLACK_1
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 12.0,
                    ),
                    Container(
                      margin: EdgeInsets.zero,
                      padding: const EdgeInsets.fromLTRB(10, 12, 10, 12),
                      height: 48,
                      width: 108,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8.0),
                          color: MIXIN_BLACK_5
                      ),
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            padding: EdgeInsets.zero,
                          ),
                          onPressed: null,
                          child: Container(
                            color: MIXIN_BLACK_5,
                            child: Row(
                              children: [
                                Image.asset(
                                  'assets/images/culture.png',
                                  width: 24,
                                  height: 24,
                                ),
                                const SizedBox(
                                  width: 8.0,
                                ),
                                const Text(
                                  '문화활동',
                                  style: TextStyle(
                                      fontFamily: 'SUIT',
                                      fontSize: 16.0,
                                      fontWeight: FontWeight.w500,
                                      color: MIXIN_BLACK_1
                                  ),
                                ),
                              ],
                            ),
                          )
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 12.0,
                ),
                Row(
                  children: [
                    // 음악
                    Container(
                      margin: EdgeInsets.zero,
                      padding: const EdgeInsets.fromLTRB(10, 12, 10, 12),
                      height: 48,
                      width: 80,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8.0),
                          color: MIXIN_BLACK_5
                      ),
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            padding: EdgeInsets.zero,
                          ),
                          onPressed: null,
                          child: Container(
                            color: MIXIN_BLACK_5,
                            child: Row(
                              children: [
                                Image.asset(
                                  'assets/images/music.png',
                                  width: 24,
                                  height: 24,
                                ),
                                const SizedBox(
                                  width: 8.0,
                                ),
                                const Text(
                                  '음악',
                                  style: TextStyle(
                                      fontFamily: 'SUIT',
                                      fontSize: 16.0,
                                      fontWeight: FontWeight.w500,
                                      color: MIXIN_BLACK_1
                                  ),
                                ),
                              ],
                            ),
                          )
                      ),
                    ),
                    SizedBox(
                      width: 12.0,
                    ),
                    // trip
                    Container(
                      margin: EdgeInsets.zero,
                      padding: const EdgeInsets.fromLTRB(13, 12, 11, 12),
                      height: 48,
                      width: 80,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8.0),
                          color: MIXIN_BLACK_5
                      ),
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            padding: EdgeInsets.zero,
                          ),
                          onPressed: null,
                          child: Container(
                            color: MIXIN_BLACK_5,
                            child: Row(
                              children: [
                                Image.asset(
                                  'assets/images/trip.png',
                                  width: 19.24,
                                  height: 24,
                                ),
                                const SizedBox(
                                  width: 8.71,
                                ),
                                const Text(
                                  '여행',
                                  style: TextStyle(
                                      fontFamily: 'SUIT',
                                      fontSize: 16.0,
                                      fontWeight: FontWeight.w500,
                                      color: MIXIN_BLACK_1
                                  ),
                                ),
                              ],
                            ),
                          )
                      ),
                    ),
                    SizedBox(
                      width: 12.0,
                    ),
                    // 봉사활동
                    Container(
                      margin: EdgeInsets.zero,
                      padding: const EdgeInsets.fromLTRB(13, 13, 10, 13),
                      height: 48,
                      width: 108,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8.0),
                          color: MIXIN_BLACK_5
                      ),
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            padding: EdgeInsets.zero,
                          ),
                          onPressed: null,
                          child: Container(
                            color: MIXIN_BLACK_5,
                            child: Row(
                              children: [
                                Image.asset(
                                  'assets/images/bongsa.png',
                                  width: 23,
                                  height: 22,
                                ),
                                const SizedBox(
                                  width: 6.0,
                                ),
                                const Text(
                                  '봉사활동',
                                  style: TextStyle(
                                      fontFamily: 'SUIT',
                                      fontSize: 16.0,
                                      fontWeight: FontWeight.w500,
                                      color: MIXIN_BLACK_1
                                  ),
                                ),
                              ],
                            ),
                          )
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 12.0,
                ),
                Row(
                  children: [
                    // 운동
                    Container(
                      margin: EdgeInsets.zero,
                      padding: const EdgeInsets.fromLTRB(10, 12, 10, 12),
                      height: 48,
                      width: 80,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8.0),
                          color: MIXIN_BLACK_5
                      ),
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            padding: EdgeInsets.zero,
                          ),
                          onPressed: null,
                          child: Container(
                            color: MIXIN_BLACK_5,
                            child: Row(
                              children: [
                                Image.asset(
                                  'assets/images/health.png',
                                  width: 24,
                                  height: 24,
                                ),
                                const SizedBox(
                                  width: 8.0,
                                ),
                                const Text(
                                  '운동',
                                  style: TextStyle(
                                      fontFamily: 'SUIT',
                                      fontSize: 16.0,
                                      fontWeight: FontWeight.w500,
                                      color: MIXIN_BLACK_1
                                  ),
                                ),
                              ],
                            ),
                          )
                      ),
                    ),
                    SizedBox(
                      width: 12.0,
                    ),
                    // 반려동물
                    Container(
                      margin: EdgeInsets.zero,
                      padding: const EdgeInsets.fromLTRB(11, 15, 10, 15.61),
                      height: 48,
                      width: 108,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8.0),
                          color: MIXIN_BLACK_5
                      ),
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            padding: EdgeInsets.zero,
                          ),
                          onPressed: null,
                          child: Container(
                            color: MIXIN_BLACK_5,
                            child: Row(
                              children: [
                                Image.asset(
                                  'assets/images/animal.png',
                                  width: 21.72,
                                  height: 17.39,
                                ),
                                const SizedBox(
                                  width: 9.28,
                                ),
                                const Text(
                                  '반려동물',
                                  style: TextStyle(
                                      fontFamily: 'SUIT',
                                      fontSize: 16.0,
                                      fontWeight: FontWeight.w500,
                                      color: MIXIN_BLACK_1
                                  ),
                                ),
                              ],
                            ),
                          )
                      ),
                    ),
                    SizedBox(
                      width: 12.0,
                    ),
                    // 사교
                    Container(
                      margin: EdgeInsets.zero,
                      padding: const EdgeInsets.fromLTRB(15, 12, 10, 13),
                      height: 48,
                      width: 80,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8.0),
                          color: MIXIN_BLACK_5
                      ),
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            padding: EdgeInsets.zero,
                          ),
                          onPressed: null,
                          child: Container(
                            color: MIXIN_BLACK_5,
                            child: Row(
                              children: [
                                Image.asset(
                                  'assets/images/sagyo.png',
                                  width: 20,
                                  height: 23,
                                ),
                                const SizedBox(
                                  width: 7.0,
                                ),
                                const Text(
                                  '사교',
                                  style: TextStyle(
                                      fontFamily: 'SUIT',
                                      fontSize: 16.0,
                                      fontWeight: FontWeight.w500,
                                      color: MIXIN_BLACK_1
                                  ),
                                ),
                              ],
                            ),
                          )
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 12.0,
                ),
                Row(
                  children: [
                    // 수업
                    Container(
                      margin: EdgeInsets.zero,
                      padding: const EdgeInsets.fromLTRB(12, 12.42, 10, 12.78),
                      height: 48,
                      width: 80,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8.0),
                          color: MIXIN_BLACK_5
                      ),
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            padding: EdgeInsets.zero,
                          ),
                          onPressed: null,
                          child: Container(
                            color: MIXIN_BLACK_5,
                            child: Row(
                              children: [
                                Image.asset(
                                  'assets/images/class.png',
                                  width: 24,
                                  height: 22.79,
                                ),
                                const SizedBox(
                                  width: 6.0,
                                ),
                                const Text(
                                  '수업',
                                  style: TextStyle(
                                      fontFamily: 'SUIT',
                                      fontSize: 16.0,
                                      fontWeight: FontWeight.w500,
                                      color: MIXIN_BLACK_1
                                  ),
                                ),
                              ],
                            ),
                          )
                      ),
                    ),
                    SizedBox(
                      width: 12.0,
                    ),
                    // 외국어
                    Container(
                      margin: EdgeInsets.zero,
                      padding: const EdgeInsets.fromLTRB(10, 12, 10, 13),
                      height: 48,
                      width: 92,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8.0),
                          color: MIXIN_BLACK_5
                      ),
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            padding: EdgeInsets.zero,
                          ),
                          onPressed: null,
                          child: Container(
                            color: MIXIN_BLACK_5,
                            child: Row(
                              children: [
                                Image.asset(
                                  'assets/images/language.png',
                                  width: 24.84,
                                  height: 23,
                                ),
                                const SizedBox(
                                  width: 5.16,
                                ),
                                const Text(
                                  '외국어',
                                  style: TextStyle(
                                      fontFamily: 'SUIT',
                                      fontSize: 16.0,
                                      fontWeight: FontWeight.w500,
                                      color: MIXIN_BLACK_1
                                  ),
                                ),
                              ],
                            ),
                          )
                      ),
                    ),
                    SizedBox(
                      width: 12.0,
                    ),
                    // 맛집
                    Container(
                      margin: EdgeInsets.zero,
                      padding: const EdgeInsets.fromLTRB(11, 12, 10, 12),
                      height: 48,
                      width: 80,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8.0),
                          color: MIXIN_BLACK_5
                      ),
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            padding: EdgeInsets.zero,
                          ),
                          onPressed: null,
                          child: Container(
                            color: MIXIN_BLACK_5,
                            child: Row(
                              children: [
                                Image.asset(
                                  'assets/images/restuarant.png',
                                  width: 18.67,
                                  height: 24,
                                ),
                                const SizedBox(
                                  width: 12.33,
                                ),
                                const Text(
                                  '맛집',
                                  style: TextStyle(
                                      fontFamily: 'SUIT',
                                      fontSize: 16.0,
                                      fontWeight: FontWeight.w500,
                                      color: MIXIN_BLACK_1
                                  ),
                                ),
                              ],
                            ),
                          )
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 12.0,
                ),
                Row(
                  children: [
                    // 요리
                    Container(
                      margin: EdgeInsets.zero,
                      padding: const EdgeInsets.fromLTRB(11, 14, 10, 14),
                      height: 48,
                      width: 80,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8.0),
                          color: MIXIN_BLACK_5
                      ),
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            padding: EdgeInsets.zero,
                          ),
                          onPressed: null,
                          child: Container(
                            color: MIXIN_BLACK_5,
                            child: Row(
                              children: [
                                Image.asset(
                                  'assets/images/cook.png',
                                  width: 24,
                                  height: 19.86,
                                ),
                                const SizedBox(
                                  width: 7.0,
                                ),
                                const Text(
                                  '요리',
                                  style: TextStyle(
                                      fontFamily: 'SUIT',
                                      fontSize: 16.0,
                                      fontWeight: FontWeight.w500,
                                      color: MIXIN_BLACK_1
                                  ),
                                ),
                              ],
                            ),
                          )
                      ),
                    ),
                    SizedBox(
                      width: 12.0,
                    ),
                    // 금융
                    Container(
                      margin: EdgeInsets.zero,
                      padding: const EdgeInsets.fromLTRB(9.18, 10, 10, 13),
                      height: 48,
                      width: 80,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8.0),
                          color: MIXIN_BLACK_5
                      ),
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            padding: EdgeInsets.zero,
                          ),
                          onPressed: null,
                          child: Container(
                            color: MIXIN_BLACK_5,
                            child: Row(
                              children: [
                                Image.asset(
                                  'assets/images/finance.png',
                                  width: 24.17,
                                  height: 25,
                                ),
                                const SizedBox(
                                  width: 8.65,
                                ),
                                const Text(
                                  '금융',
                                  style: TextStyle(
                                      fontFamily: 'SUIT',
                                      fontSize: 16.0,
                                      fontWeight: FontWeight.w500,
                                      color: MIXIN_BLACK_1
                                  ),
                                ),
                              ],
                            ),
                          )
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
