import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:mixin_2/layout/category_layout.dart';
import 'package:mixin_2/layout/text_layout.dart';
import 'package:mixin_2/const/colors.dart';
import 'package:mixin_2/layout/custom_floating_action_button.dart';

import 'make_1_screen.dart';

class MakeCategoryScreen extends StatefulWidget {
  const MakeCategoryScreen({Key? key}) : super(key: key);

  @override
  State<MakeCategoryScreen> createState() => _MakeCategoryScreenState();
}

class _MakeCategoryScreenState extends State<MakeCategoryScreen> {
  final storage = FlutterSecureStorage();
  List<bool> categoryList = List.filled(14, false);
  List<String> selectedOptions = [];

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
      floatingActionButton: CustomFloatingActionButton(
        text: '다음',
        fillColor: categoryList.where((element) => element).length >= 3 ? MIXIN_POINT_COLOR : MIXIN_BLACK_4,
        onPressed: () async {
            if (categoryList.where((element) => element).length >= 3) {
              Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => const MakePositionScreen()),
              );
              await storage.write(key: 'userKeyword', value: jsonEncode(categoryList));
            } else {null;}
          },
      ),
      body: SingleChildScrollView(
        keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 29.0),
                const HeadlineText(text: '요즘 관심가는 주제가\n무엇인가요?'),
                const SizedBox(height: 12.0),
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
                const SizedBox(height: 54),
                Row(
                  children: [
                    CategoryLayout(
                      mainSizedBoxWidth: 101,
                      borderSideColor: categoryList[0] == true ? MIXIN_2 : MIXIN_BLACK_5,
                      backgroundColor: categoryList[0] == true ? MIXIN_ : MIXIN_BLACK_5,
                      onPressed: () {
                        setState(() {
                          categoryList[0] = !categoryList[0];
                        });
                      },
                      containerColor: categoryList[0] == true ? MIXIN_ : MIXIN_BLACK_5,
                      imageAsset: 'assets/images/IT.png',
                      imageWidth: 24,
                      imageHeight: 21.47,
                      sizedBoxWidth: 8.0,
                      text: 'IT/개발',
                    ),
                    const SizedBox(width: 12.0),
                    CategoryLayout(
                      mainSizedBoxWidth: 92,
                      borderSideColor: categoryList[1] == true ? MIXIN_2 : MIXIN_BLACK_5,
                      backgroundColor: categoryList[1] == true ? MIXIN_ : MIXIN_BLACK_5,
                      onPressed: () {
                        setState(() {
                          categoryList[1] = !categoryList[1];
                        });
                      },
                      containerColor: categoryList[1] == true ? MIXIN_ : MIXIN_BLACK_5,
                      imageAsset: 'assets/images/design.png',
                      imageWidth: 18,
                      imageHeight: 18,
                      sizedBoxWidth: 9.0,
                      text: '디자인',
                    ),
                    const SizedBox(width: 12.0),
                    CategoryLayout(
                      mainSizedBoxWidth: 108,
                      borderSideColor: categoryList[2] == true ? MIXIN_2 : MIXIN_BLACK_5,
                      backgroundColor: categoryList[2] == true ? MIXIN_ : MIXIN_BLACK_5,
                      onPressed: () {
                        setState(() {
                          categoryList[2] = !categoryList[2];
                        });
                      },
                      containerColor: categoryList[2] == true ? MIXIN_ : MIXIN_BLACK_5,
                      imageAsset: 'assets/images/culture.png',
                      imageWidth: 24,
                      imageHeight: 24,
                      sizedBoxWidth: 8.0,
                      text: '문화활동',
                    ),
                  ],
                ),
                const SizedBox(height: 12.0),
                Row(
                  children: [
                    CategoryLayout(
                      mainSizedBoxWidth: 80,
                      borderSideColor: categoryList[3] == true ? MIXIN_2 : MIXIN_BLACK_5,
                      backgroundColor: categoryList[3] == true ? MIXIN_ : MIXIN_BLACK_5,
                      onPressed: () {
                        setState(() {
                          categoryList[3] = !categoryList[3];
                        });
                      },
                      containerColor: categoryList[3] == true ? MIXIN_ : MIXIN_BLACK_5,
                      imageAsset: 'assets/images/music.png',
                      imageWidth: 24,
                      imageHeight: 24,
                      sizedBoxWidth: 8.0,
                      text: '음악',
                    ),
                    const SizedBox(width: 12.0),
                    CategoryLayout(
                      mainSizedBoxWidth: 80,
                      borderSideColor: categoryList[4] == true ? MIXIN_2 : MIXIN_BLACK_5,
                      backgroundColor: categoryList[4] == true ? MIXIN_ : MIXIN_BLACK_5,
                      onPressed: () {
                        setState(() {
                          categoryList[4] = !categoryList[4];
                        });
                      },
                      containerColor: categoryList[4] == true ? MIXIN_ : MIXIN_BLACK_5,
                      imageAsset: 'assets/images/trip.png',
                      imageWidth: 19.24,
                      imageHeight: 24,
                      sizedBoxWidth: 8.71,
                      text: '여행',
                    ),
                    const SizedBox(width: 12.0),
                    CategoryLayout(
                      mainSizedBoxWidth: 108,
                      borderSideColor: categoryList[5] == true ? MIXIN_2 : MIXIN_BLACK_5,
                      backgroundColor: categoryList[5] == true ? MIXIN_ : MIXIN_BLACK_5,
                      onPressed: () {
                        setState(() {
                          categoryList[5] = !categoryList[5];
                        });
                      },
                      containerColor: categoryList[5] == true ? MIXIN_ : MIXIN_BLACK_5,
                      imageAsset: 'assets/images/bongsa.png',
                      imageWidth: 23,
                      imageHeight: 22,
                      sizedBoxWidth: 6.0,
                      text: '봉사활동',
                    ),
                  ],
                ),
                const SizedBox(height: 12.0),
                Row(
                  children: [
                    CategoryLayout(
                      mainSizedBoxWidth: 80,
                      borderSideColor: categoryList[6] == true ? MIXIN_2 : MIXIN_BLACK_5,
                      backgroundColor: categoryList[6] == true ? MIXIN_ : MIXIN_BLACK_5,
                      onPressed: () {
                        setState(() {
                          categoryList[6] = !categoryList[6];
                        });
                      },
                      containerColor: categoryList[6] == true ? MIXIN_ : MIXIN_BLACK_5,
                      imageAsset: 'assets/images/health.png',
                      imageWidth: 24,
                      imageHeight: 24,
                      sizedBoxWidth: 8.0,
                      text: '운동',
                    ),
                    const SizedBox(width: 12.0),
                    CategoryLayout(
                      mainSizedBoxWidth: 108,
                      borderSideColor: categoryList[7] == true ? MIXIN_2 : MIXIN_BLACK_5,
                      backgroundColor: categoryList[7] == true ? MIXIN_ : MIXIN_BLACK_5,
                      onPressed: () {
                        setState(() {
                          categoryList[7] = !categoryList[7];
                        });
                      },
                      containerColor: categoryList[7] == true ? MIXIN_ : MIXIN_BLACK_5,
                      imageAsset: 'assets/images/animal.png',
                      imageWidth: 21.72,
                      imageHeight: 17.39,
                      sizedBoxWidth: 9.28,
                      text: '반려동물',
                    ),
                    const SizedBox(width: 12.0),
                    CategoryLayout(
                      mainSizedBoxWidth: 80,
                      borderSideColor: categoryList[8] == true ? MIXIN_2 : MIXIN_BLACK_5,
                      backgroundColor: categoryList[8] == true ? MIXIN_ : MIXIN_BLACK_5,
                      onPressed: () {
                        setState(() {
                          categoryList[8] = !categoryList[8];
                        });
                      },
                      containerColor: categoryList[8] == true ? MIXIN_ : MIXIN_BLACK_5,
                      imageAsset: 'assets/images/sagyo.png',
                      imageWidth: 20.0,
                      imageHeight: 23.0,
                      sizedBoxWidth: 7.0,
                      text: '사교',
                    ),
                  ],
                ),
                const SizedBox(height: 12.0),
                Row(
                  children: [
                    CategoryLayout(
                      mainSizedBoxWidth: 80,
                      borderSideColor: categoryList[9] == true ? MIXIN_2 : MIXIN_BLACK_5,
                      backgroundColor: categoryList[9] == true ? MIXIN_ : MIXIN_BLACK_5,
                      onPressed: () {
                        setState(() {
                          categoryList[9] = !categoryList[9];
                        });
                      },
                      containerColor: categoryList[9] == true ? MIXIN_ : MIXIN_BLACK_5,
                      imageAsset: 'assets/images/class.png',
                      imageWidth: 24.0,
                      imageHeight: 22.79,
                      sizedBoxWidth: 6.0,
                      text: '수업',
                    ),
                    const SizedBox(width: 12.0),
                    CategoryLayout(
                      mainSizedBoxWidth: 92,
                      borderSideColor: categoryList[10] == true ? MIXIN_2 : MIXIN_BLACK_5,
                      backgroundColor: categoryList[10] == true ? MIXIN_ : MIXIN_BLACK_5,
                      onPressed: () {
                        setState(() {
                          categoryList[10] = !categoryList[10];
                        });
                      },
                      containerColor: categoryList[10] == true ? MIXIN_ : MIXIN_BLACK_5,
                      imageAsset: 'assets/images/class.png',
                      imageWidth: 24.84,
                      imageHeight: 23.0,
                      sizedBoxWidth: 5.16,
                      text: '외국어',
                    ),
                    const SizedBox(width: 12.0),
                    CategoryLayout(
                      mainSizedBoxWidth: 80,
                      borderSideColor: categoryList[11] == true ? MIXIN_2 : MIXIN_BLACK_5,
                      backgroundColor: categoryList[11] == true ? MIXIN_ : MIXIN_BLACK_5,
                      onPressed: () {
                        setState(() {
                          categoryList[11] = !categoryList[11];
                        });
                      },
                      containerColor: categoryList[11] == true ? MIXIN_ : MIXIN_BLACK_5,
                      imageAsset: 'assets/images/restuarant.png',
                      imageWidth: 18.67,
                      imageHeight: 24.0,
                      sizedBoxWidth: 12.33,
                      text: '맛집',
                    ),
                  ],
                ),
                const SizedBox(height: 12.0),
                Row(
                  children: [
                    CategoryLayout(
                      mainSizedBoxWidth: 80,
                      borderSideColor: categoryList[12] == true ? MIXIN_2 : MIXIN_BLACK_5,
                      backgroundColor: categoryList[12] == true ? MIXIN_ : MIXIN_BLACK_5,
                      onPressed: () {
                        setState(() {
                          categoryList[12] = !categoryList[12];
                        });
                      },
                      containerColor: categoryList[12] == true ? MIXIN_ : MIXIN_BLACK_5,
                      imageAsset: 'assets/images/cook.png',
                      imageWidth: 24,
                      imageHeight: 19.86,
                      sizedBoxWidth: 7.0,
                      text: '요리',
                    ),
                    const SizedBox(width: 12.0),
                    CategoryLayout(
                      mainSizedBoxWidth: 80,
                      borderSideColor: categoryList[13] == true ? MIXIN_2 : MIXIN_BLACK_5,
                      backgroundColor: categoryList[13] == true ? MIXIN_ : MIXIN_BLACK_5,
                      onPressed: () {
                        setState(() {
                          categoryList[13] = !categoryList[13];
                        });
                      },
                      containerColor: categoryList[13] == true ? MIXIN_ : MIXIN_BLACK_5,
                      imageAsset: 'assets/images/finance.png',
                      imageWidth: 24.17,
                      imageHeight: 25.0,
                      sizedBoxWidth: 8.65,
                      text: '금융',
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
