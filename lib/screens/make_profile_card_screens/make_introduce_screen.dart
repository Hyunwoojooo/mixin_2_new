import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:image_picker/image_picker.dart';
import 'package:mixin_2/const/data.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';

import '../../const/colors.dart';
import '../complete_profile_card_screen/complete_profile_card_screen.dart';

class MakeIntroduceScreen extends StatefulWidget {
  const MakeIntroduceScreen({Key? key}) : super(key: key);

  @override
  State<MakeIntroduceScreen> createState() => _MakeIntroduceScreenState();
}

class _MakeIntroduceScreenState extends State<MakeIntroduceScreen> {
  XFile? _pickedFile;
  final storage = FlutterSecureStorage();
  final String serverUrl = '$ip/api/user/profile';
  final String serverCategory = '$ip/api/category';

  final _userNickNameTextEditController = TextEditingController();
  final _userIntroduceTextEditController = TextEditingController();

  Future<String> hintText() async {
    return storage.read(key: 'userName').toString();
  }
  String except(String text){
    text = text.replaceAll('[', '').replaceAll(']', '');
    return text;
  }

  String userNickName = '';
  String userIntroduceText = '';
  String userNickNameLength = '0';
  String userIntroduceTextLength = '0';

  @override
  Widget build(BuildContext context) {

    void fetchData() async {
      final dio = Dio();
      String? userPosition = await storage.read(key: 'userPosition');
      String? userPersonality = await storage.read(key: 'userPersonality');
      String? userValues = await storage.read(key: 'userValues');
      String? refreshToken = await storage.read(key: REFRESH_TOKEN_KEY);
      String? categorys = await storage.read(key: 'categorys');
      List<String> userPersonalityList = [];
      List<String> categoryList = [];

      userPosition = userPosition!
          .substring(1, userPosition!.length - 1) // 대괄호 제거
          .replaceAll("\"", ''); // 쉼표로 분리하여 List<String> 생성

      userPersonalityList = userPersonality!
          .substring(1, userPersonality!.length - 1) // 대괄호 제거
          .replaceAll("\"", '')
          .split(','); // 쉼표로 분리하여 List<String> 생성

      userValues = userValues!
          .substring(1, userValues!.length - 1) // 대괄호 제거
          .replaceAll("\"", ''); // 쉼표로 분리하여 List<String> 생성

      categoryList = categorys!
          .substring(1, categorys!.length - 1) // 대괄호 제거
          .replaceAll("\"", '')
          .split(','); // 쉼표로 분리하여 List<String> 생성

      except(refreshToken!);

      int userSmileDegree = 50;
      print('refreshToken : $refreshToken');
      print(jsonDecode(refreshToken)[0]);


      final Response resp = await dio.post(serverUrl,
          options: Options(
              headers: {
                "Authorization": jsonDecode(refreshToken)[0],
              }
          ),
          data: {
            "userPosition": userPosition,
            "userPersonalitys": userPersonalityList,
            "userValues": userValues,
            "userSmileDegree": userSmileDegree,
            "userIntroduceText": userIntroduceText,
            "userNickName": userNickName,
          });


      final Response respCategory = await dio.post(serverCategory,
          options: Options(
              headers: {
                "Authorization": jsonDecode(refreshToken)[0],
              }
          ),
          data: {
            "categorys": categoryList,
          });

      print('userPosition : $userPosition');
      print(userPosition.runtimeType);
      print('userPersonality : $userPersonality');
      print(userPersonality.runtimeType);
      print('userPersonalityList : $userPersonalityList');
      print(userPersonalityList.runtimeType);
      print('userValues : $userValues');
      print(userValues.runtimeType);
      print('categorys : $categorys');
      print(categorys.runtimeType);
      print('categorysList : $categoryList');
      print(categoryList.runtimeType);

      print(respCategory);
      print(resp);
    }

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
      body: SingleChildScrollView(
        keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.0.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 29.0.h),
                Text(
                  '자신을 표현할 수 있는\n별명, 한마디를 적어주세요',
                  style: TextStyle(
                    fontFamily: 'SUIT',
                    fontWeight: FontWeight.w600,
                    fontSize: 24.0.sp,
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 12.0.h),
                Container(
                  alignment: Alignment.center,
                  width: 203.w,
                  height: 36.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(18.0.r),
                    color: MIXIN_BLACK_5,
                  ),
                  child: Text(
                    '나중에 작성해주셔도 괜찮아요!',
                    style: TextStyle(
                      fontFamily: 'SUIT',
                      fontWeight: FontWeight.w500,
                      fontSize: 14.0.sp,
                      color: const Color(0xFF51B49F),
                    ),
                  ),
                ),
                SizedBox(height: 47.h),
                Container(
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.grey,
                  ),
                  height: 90.h,
                  width: 90.w,
                  child: SfRadialGauge(
                    animationDuration: 2000,
                    axes: <RadialAxis>[
                      RadialAxis(
                        startAngle: 90,
                        endAngle: 90,
                        radiusFactor: 1,
                        isInversed: true,
                        canScaleToFit: true,
                        minimum: 0,
                        maximum: 100,
                        showLabels: false,
                        showTicks: false,
                        axisLineStyle: const AxisLineStyle(
                          thickness: 5,
                          cornerStyle: CornerStyle.bothFlat,
                          color: Colors.white,
                        ),
                        pointers: const <GaugePointer>[
                          RangePointer(
                            value: 50,
                            width: 0.11,
                            sizeUnit: GaugeSizeUnit.factor,
                            cornerStyle: CornerStyle.bothCurve,
                            gradient: SweepGradient(
                              colors: <Color>[
                                MIXIN_,
                                Color(0xFF51B49F),
                              ],
                              stops: <double>[
                                0.25,
                                0.75,
                              ],
                            ),
                          ),
                          MarkerPointer(
                            value: 50,
                            markerHeight: 15,
                            markerWidth: 15,
                            markerType: MarkerType.circle,
                            color: Color(0xFF32A086),
                          )
                        ],
                      )
                    ],
                  ),
                ),
                SizedBox(height: 35.h),
                // 닉네임
                SizedBox(
                  width: 222.w,
                  height: 56.h,
                  child: TextFormField(
                    textAlign: TextAlign.center,
                    scrollPadding: EdgeInsets.zero,
                    cursorColor: Colors.grey,
                    autofocus: false,
                    controller: _userNickNameTextEditController,
                    onChanged: (String value) async {
                      // print(value);
                      setState(() {
                        userNickName = value;
                      });
                      await storage.write(key: 'userNickName', value: userNickName);
                      print(userNickName);
                    },
                    style: TextStyle(
                      fontSize: 16.0.sp,
                      fontFamily: 'SUIT',
                      fontWeight: FontWeight.w500,
                      color: MIXIN_BLACK_1,
                    ),
                    decoration: InputDecoration(
                      hintText: '닉네임',
                      hintStyle: TextStyle(
                        color: MIXIN_BLACK_4,
                        fontSize: 18.0.sp,
                        fontFamily: 'SUIT',
                        fontWeight: FontWeight.w500,
                      ),
                      fillColor: Colors.grey,
                      filled: false,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8.0.r),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8.0.r),
                        borderSide:
                        BorderSide(color: MIXIN_BLACK_5, width: 1.5.w),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8.0.r),
                        borderSide:
                        BorderSide(color: MIXIN_BLACK_5, width: 1.5.w),
                      ).copyWith(
                          borderSide: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8.0.r),
                              borderSide: BorderSide(
                                  color: MIXIN_BLACK_5, width: 1.5.w),)
                              .borderSide),
                    ),
                  ),
                ),

                // 0/8
                Padding(
                  padding: EdgeInsets.only(left: 200.0.w, top: 4.h),
                  child: Text(
                    '$userNickNameLength/8',
                    style: TextStyle(
                      fontFamily: 'SUIT',
                      fontWeight: FontWeight.w500,
                      fontSize: 12.sp,
                      color: MIXIN_BLACK_4,
                    ),
                  ),
                ),
                SizedBox(height: 33.h),
                // 자기소개
                Container(
                  width: 342.w,
                  height: 160.h,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.0.r),
                      border: Border.all(color: MIXIN_BLACK_5, width: 1.5.w)),
                  child: TextFormField(
                    textAlign: TextAlign.start,
                    scrollPadding: EdgeInsets.zero,
                    cursorColor: Colors.grey,
                    obscureText: false,
                    autofocus: false,
                    controller: _userIntroduceTextEditController,
                    onChanged: (String value) async {
                      userIntroduceText = value;
                      setState(() {
                        userIntroduceText = value;
                      });
                      await storage.write(key: 'userIntroduceText', value: userIntroduceText);
                      print(userIntroduceText);
                    },
                    maxLines: 5,
                    style: TextStyle(
                      fontSize: 16.0.sp,
                      fontFamily: 'SUIT',
                      fontWeight: FontWeight.w500,
                      color: MIXIN_BLACK_1,
                    ),
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.symmetric(
                          horizontal: 16.w, vertical: 24.h),
                      hintText: '자기 소개를 작성해주세요.',
                      hintStyle: TextStyle(
                        color: MIXIN_BLACK_4,
                        fontSize: 18.0.sp,
                        fontFamily: 'SUIT',
                        fontWeight: FontWeight.w500,
                      ),
                      fillColor: Colors.grey,
                      filled: false,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8.0.r),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8.0.r),
                        borderSide: const BorderSide(
                          color: Colors.transparent,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8.0.r),
                        borderSide: const BorderSide(
                          color: Colors.transparent,
                        ),
                      ).copyWith(
                          borderSide: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8.0.r),
                            borderSide: const BorderSide(
                              color: Colors.transparent,
                            ),
                          ).borderSide
                        // .copyWith(color: Colors.red)),
                      ),
                    ),
                  ),
                ),
                // 0/80
                Padding(
                  padding: EdgeInsets.only(left: 300.0.w, top: 10.h),
                  child: Text(
                    '$userIntroduceTextLength/80',
                    style: TextStyle(
                      fontFamily: 'SUIT',
                      fontWeight: FontWeight.w500,
                      fontSize: 12.sp,
                      color: MIXIN_BLACK_4,
                    ),
                  ),
                ),
                SizedBox(height: 63.h),
                // 버튼
                Center(
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: MIXIN_POINT_COLOR,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8.0.r)),
                        elevation: 0.0),
                    onPressed: () async {
                      print('userNickName : $userNickName');
                      print('userIntroduceText: $userIntroduceText');
                      fetchData();
                      if (!mounted) return;
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) =>
                          const CompleteProfileCardScreen(),
                        ),
                      );
                    },
                    child: SizedBox(
                      width: 342.w,
                      height: 56.h,
                      child: Center(
                        child: Text(
                          '다음',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18.sp,
                            fontFamily: 'SUIT',
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
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
