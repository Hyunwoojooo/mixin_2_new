import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:mixin_2/layout/category_layout_square.dart';
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
  final storage = const FlutterSecureStorage();
  List<bool> categoryList = List.filled(14, false);
  List<String> selectedOptions = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60.h),
        child: AppBar(
          backgroundColor: Colors.white,
          elevation: 0.0,
          titleSpacing: -35.w,
          title: GestureDetector(
            child: Column(
              children: [
                SizedBox(
                  height: 20.h,
                ),
                Image.asset(
                  'assets/images/icons/back_icon_black_4x.png',
                  width: 26.w,
                  height: 26.h,
                  fit: BoxFit.contain,
                ),
              ],
            ),
            onTap: () {
              Navigator.pop(context);
            },
          ),
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
              print('categoryList : $selectedOptions');
              await storage.write(key: 'userKeyword', value: jsonEncode(selectedOptions));
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
                SizedBox(height: 29.0.h),
                const HeadlineText(text: '요즘 관심가는 주제가\n무엇인가요?'),
                SizedBox(height: 12.0.h),
                Container(
                  width: 201.w,
                  height: 36.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(18.0.r),
                    color: MIXIN_BLACK_5,
                  ),
                  child: Center(
                    child: Text(
                      '최소 3가지 이상 선택해주세요.',
                      style: TextStyle(
                        fontFamily: 'SUIT',
                        fontWeight: FontWeight.w500,
                        fontSize: 14.0.sp,
                        color: const Color(0xFF51B49F),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 54.h),
                Row(
                  children: [
                    CategoryLayout(
                      mainSizedBoxWidth: 101.w,
                      borderSideColor: categoryList[0] == true ? MIXIN_2 : MIXIN_BLACK_5,
                      backgroundColor: categoryList[0] == true ? MIXIN_ : WHITE,
                      onPressed: () {
                        setState(() {
                          categoryList[0] = !categoryList[0];
                          if(categoryList[0] == true){
                            selectedOptions.add('IT/개발');
                          } else if(categoryList[0] == false){
                            selectedOptions.remove('IT/개발');
                          }
                        });
                        print(selectedOptions);
                      },
                      containerColor: categoryList[0] == true ? MIXIN_ : WHITE,
                      imageAsset: 'assets/images/category_images/IT.png',
                      imageWidth: 24.w,
                      imageHeight: 21.47.h,
                      sizedBoxWidth: 8.0.w,
                      text: 'IT/개발',
                    ),
                    SizedBox(width: 12.0.w),
                    CategoryLayout(
                      mainSizedBoxWidth: 92.w,
                      borderSideColor: categoryList[1] == true ? MIXIN_2 : MIXIN_BLACK_5,
                      backgroundColor: categoryList[1] == true ? MIXIN_ : WHITE,
                      onPressed: () {
                        setState(() {
                          categoryList[1] = !categoryList[1];
                          if(categoryList[1] == true){
                            selectedOptions.add('디자인');
                          } else if(categoryList[1] == false){
                            selectedOptions.remove('디자인');
                          }
                        });
                        print(selectedOptions);
                      },
                      containerColor: categoryList[1] == true ? MIXIN_ : WHITE,
                      imageAsset: 'assets/images/category_images/design.png',
                      imageWidth: 18.w,
                      imageHeight: 18.h,
                      sizedBoxWidth: 9.0.w,
                      text: '디자인',
                    ),
                    SizedBox(width: 12.0.w),
                    CategoryLayout(
                      mainSizedBoxWidth: 108.w,
                      borderSideColor: categoryList[2] == true ? MIXIN_2 : MIXIN_BLACK_5,
                      backgroundColor: categoryList[2] == true ? MIXIN_ : WHITE,
                      onPressed: () {
                        setState(() {
                          categoryList[2] = !categoryList[2];
                          if(categoryList[2] == true){
                            selectedOptions.add('문화활동');
                          } else if(categoryList[2] == false){
                            selectedOptions.remove('문화활동');
                          }
                        });
                        print(selectedOptions);
                      },
                      containerColor: categoryList[2] == true ? MIXIN_ : WHITE,
                      imageAsset: 'assets/images/category_images/culture.png',
                      imageWidth: 24.w,
                      imageHeight: 24.h,
                      sizedBoxWidth: 8.0.w,
                      text: '문화활동',
                    ),
                  ],
                ),
                SizedBox(height: 12.0.h),
                Row(
                  children: [
                    CategoryLayout(
                      mainSizedBoxWidth: 80.w,
                      borderSideColor: categoryList[3] == true ? MIXIN_2 : MIXIN_BLACK_5,
                      backgroundColor: categoryList[3] == true ? MIXIN_ : WHITE,
                      onPressed: () {
                        setState(() {
                          categoryList[3] = !categoryList[3];
                          if(categoryList[3] == true){
                            selectedOptions.add('음악');
                          } else if(categoryList[3] == false){
                            selectedOptions.remove('음악');
                          }
                        });
                        print(selectedOptions);
                      },
                      containerColor: categoryList[3] == true ? MIXIN_ : WHITE,
                      imageAsset: 'assets/images/category_images/music.png',
                      imageWidth: 24.w,
                      imageHeight: 24.h,
                      sizedBoxWidth: 8.0.w,
                      text: '음악',
                    ),
                    SizedBox(width: 12.0.w),
                    CategoryLayout(
                      mainSizedBoxWidth: 80.w,
                      borderSideColor: categoryList[4] == true ? MIXIN_2 : MIXIN_BLACK_5,
                      backgroundColor: categoryList[4] == true ? MIXIN_ : WHITE,
                      onPressed: () {
                        setState(() {
                          categoryList[4] = !categoryList[4];
                          if(categoryList[4] == true){
                            selectedOptions.add('여행');
                          } else if(categoryList[4] == false){
                            selectedOptions.remove('여행');
                          }
                        });
                        print(selectedOptions);
                      },
                      containerColor: categoryList[4] == true ? MIXIN_ : WHITE,
                      imageAsset: 'assets/images/category_images/trip.png',
                      imageWidth: 19.24.w,
                      imageHeight: 24.h,
                      sizedBoxWidth: 8.71.w,
                      text: '여행',
                    ),
                    SizedBox(width: 12.0.w),
                    CategoryLayout(
                      mainSizedBoxWidth: 108.w,
                      borderSideColor: categoryList[5] == true ? MIXIN_2 : MIXIN_BLACK_5,
                      backgroundColor: categoryList[5] == true ? MIXIN_ : WHITE,
                      onPressed: () {
                        setState(() {
                          categoryList[5] = !categoryList[5];
                          if(categoryList[5] == true){
                            selectedOptions.add('봉사활동');
                          } else if(categoryList[5] == false){
                            selectedOptions.remove('봉사활동');
                          }
                        });
                        print(selectedOptions);
                      },
                      containerColor: categoryList[5] == true ? MIXIN_ : WHITE,
                      imageAsset: 'assets/images/category_images/bongsa.png',
                      imageWidth: 23.w,
                      imageHeight: 22.h,
                      sizedBoxWidth: 6.0.w,
                      text: '봉사활동',
                    ),
                  ],
                ),
                SizedBox(height: 12.0.h),
                Row(
                  children: [
                    CategoryLayout(
                      mainSizedBoxWidth: 80.w,
                      borderSideColor: categoryList[6] == true ? MIXIN_2 : MIXIN_BLACK_5,
                      backgroundColor: categoryList[6] == true ? MIXIN_ : WHITE,
                      onPressed: () {
                        setState(() {
                          categoryList[6] = !categoryList[6];
                          if(categoryList[6] == true){
                            selectedOptions.add('운동');
                          } else if(categoryList[6] == false){
                            selectedOptions.remove('운동');
                          }
                        });
                        print(selectedOptions);
                      },
                      containerColor: categoryList[6] == true ? MIXIN_ : WHITE,
                      imageAsset: 'assets/images/category_images/health.png',
                      imageWidth: 24.w,
                      imageHeight: 24.h,
                      sizedBoxWidth: 8.0.w,
                      text: '운동',
                    ),
                    SizedBox(width: 12.0.w),
                    CategoryLayout(
                      mainSizedBoxWidth: 108.w,
                      borderSideColor: categoryList[7] == true ? MIXIN_2 : MIXIN_BLACK_5,
                      backgroundColor: categoryList[7] == true ? MIXIN_ : WHITE,
                      onPressed: () {
                        setState(() {
                          categoryList[7] = !categoryList[7];
                          if(categoryList[7] == true){
                            selectedOptions.add('반려동물');
                          } else if(categoryList[7] == false){
                            selectedOptions.remove('반려동물');
                          }
                        });
                        print(selectedOptions);
                      },
                      containerColor: categoryList[7] == true ? MIXIN_ : WHITE,
                      imageAsset: 'assets/images/category_images/animal.png',
                      imageWidth: 21.72.w,
                      imageHeight: 17.39.h,
                      sizedBoxWidth: 9.28.w,
                      text: '반려동물',
                    ),
                    SizedBox(width: 12.0.w),
                    CategoryLayout(
                      mainSizedBoxWidth: 80.w,
                      borderSideColor: categoryList[8] == true ? MIXIN_2 : MIXIN_BLACK_5,
                      backgroundColor: categoryList[8] == true ? MIXIN_ : WHITE,
                      onPressed: () {
                        setState(() {
                          categoryList[8] = !categoryList[8];
                          if(categoryList[8] == true){
                            selectedOptions.add('사교');
                          } else if(categoryList[8] == false){
                            selectedOptions.remove('사교');
                          }
                        });
                        print(selectedOptions);
                      },
                      containerColor: categoryList[8] == true ? MIXIN_ : WHITE,
                      imageAsset: 'assets/images/category_images/sagyo.png',
                      imageWidth: 20.0.w,
                      imageHeight: 23.0.h,
                      sizedBoxWidth: 7.0.w,
                      text: '사교',
                    ),
                  ],
                ),
                SizedBox(height: 12.0.h),
                Row(
                  children: [
                    CategoryLayout(
                      mainSizedBoxWidth: 80.w,
                      borderSideColor: categoryList[9] == true ? MIXIN_2 : MIXIN_BLACK_5,
                      backgroundColor: categoryList[9] == true ? MIXIN_ : WHITE,
                      onPressed: () {
                        setState(() {
                          categoryList[9] = !categoryList[9];
                          if(categoryList[9] == true){
                            selectedOptions.add('수업');
                          } else if(categoryList[9] == false){
                            selectedOptions.remove('수업');
                          }
                        });
                        print(selectedOptions);
                      },
                      containerColor: categoryList[9] == true ? MIXIN_ : WHITE,
                      imageAsset: 'assets/images/category_images/class.png',
                      imageWidth: 24.0.w,
                      imageHeight: 22.79.h,
                      sizedBoxWidth: 6.0.w,
                      text: '수업',
                    ),
                    SizedBox(width: 12.0.w),
                    CategoryLayout(
                      mainSizedBoxWidth: 92.w,
                      borderSideColor: categoryList[10] == true ? MIXIN_2 : MIXIN_BLACK_5,
                      backgroundColor: categoryList[10] == true ? MIXIN_ : WHITE,
                      onPressed: () {
                        setState(() {
                          categoryList[10] = !categoryList[10];
                          if(categoryList[10] == true){
                            selectedOptions.add('외국어');
                          } else if(categoryList[10] == false){
                            selectedOptions.remove('외국어');
                          }
                        });
                        print(selectedOptions);
                      },
                      containerColor: categoryList[10] == true ? MIXIN_ : WHITE,
                      imageAsset: 'assets/images/category_images/class.png',
                      imageWidth: 24.84.w,
                      imageHeight: 23.0.h,
                      sizedBoxWidth: 5.16.w,
                      text: '외국어',
                    ),
                    SizedBox(width: 12.0.w),
                    CategoryLayout(
                      mainSizedBoxWidth: 80.w,
                      borderSideColor: categoryList[11] == true ? MIXIN_2 : MIXIN_BLACK_5,
                      backgroundColor: categoryList[11] == true ? MIXIN_ : WHITE,
                      onPressed: () {
                        setState(() {
                          categoryList[11] = !categoryList[11];
                          if(categoryList[11] == true){
                            selectedOptions.add('맛집');
                          } else if(categoryList[11] == false){
                            selectedOptions.remove('맛집');
                          }
                        });
                        print(selectedOptions);
                      },
                      containerColor: categoryList[11] == true ? MIXIN_ : WHITE,
                      imageAsset: 'assets/images/category_images/restuarant.png',
                      imageWidth: 18.67.w,
                      imageHeight: 24.0.h,
                      sizedBoxWidth: 12.33.w,
                      text: '맛집',
                    ),
                  ],
                ),
                SizedBox(height: 12.0.h),
                Row(
                  children: [
                    CategoryLayout(
                      mainSizedBoxWidth: 80.w,
                      borderSideColor: categoryList[12] == true ? MIXIN_2 : MIXIN_BLACK_5,
                      backgroundColor: categoryList[12] == true ? MIXIN_ : WHITE,
                      onPressed: () {
                        setState(() {
                          categoryList[12] = !categoryList[12];
                          if(categoryList[12] == true){
                            selectedOptions.add('요리');
                          } else if(categoryList[12] == false){
                            selectedOptions.remove('요리');
                          }
                        });
                        print(selectedOptions);
                      },
                      containerColor: categoryList[12] == true ? MIXIN_ : WHITE,
                      imageAsset: 'assets/images/category_images/cook.png',
                      imageWidth: 24.w,
                      imageHeight: 19.86.h,
                      sizedBoxWidth: 7.0.w,
                      text: '요리',
                    ),
                    SizedBox(width: 12.0.w),
                    CategoryLayout(
                      mainSizedBoxWidth: 80.w,
                      borderSideColor: categoryList[13] == true ? MIXIN_2 : MIXIN_BLACK_5,
                      backgroundColor: categoryList[13] == true ? MIXIN_ : WHITE,
                      onPressed: () {
                        setState(() {
                          categoryList[13] = !categoryList[13];
                          if(categoryList[13] == true){
                            selectedOptions.add('금융');
                          } else if(categoryList[13] == false){
                            selectedOptions.remove('금융');
                          }
                        });
                        print(selectedOptions);
                      },
                      containerColor: categoryList[13] == true ? MIXIN_ : WHITE,
                      imageAsset: 'assets/images/category_images/finance.png',
                      imageWidth: 24.17.w,
                      imageHeight: 25.0.h,
                      sizedBoxWidth: 8.65.w,
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
