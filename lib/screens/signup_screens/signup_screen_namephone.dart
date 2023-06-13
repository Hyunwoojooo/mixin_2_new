import 'dart:async';
import 'package:dio/dio.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mixin_2/components/custom_textformfield.dart';
import 'package:mixin_2/layout/text_layout.dart';
import 'package:mixin_2/components/number_formatter.dart';
import 'package:mixin_2/const/colors.dart';
import 'package:mixin_2/screens/signup_screens/signup_screen_school.dart';

/*
  통신사 선택된 것만 색 다른 색으로 하게 O
  인증번호 6개가 입력됐을 경우에만 다음버튼 활성화 O
 */

class SignUpScreenNamePhone extends StatefulWidget {
  SignUpScreenNamePhone({Key? key}) : super(key: key);

  @override
  State<SignUpScreenNamePhone> createState() => _SignUpScreenNamePhoneState();
}

class _SignUpScreenNamePhoneState extends State<SignUpScreenNamePhone> {
  final storage = const FlutterSecureStorage();
  final String serverUrl = 'http://122.37.227.143:8080/api/sms/send';
  final _userNameTextEditController = TextEditingController();
  final _userPhoneNumberTextController = TextEditingController();
  final _userCertificationNumberController = TextEditingController();
  List<bool> isSelected = [false, false];
  List<String> genderList = ['여자', '남자'];
  String userGender = '';
  bool nextButton = false;

  bool onClickSendButton = false;
  String sendText = '인증번호 전송';
  String sendAgainText = '인증번호 재전송';

  String userName = '';
  String userPhoneNumber = '';
  late String userCertificationNumber;

  Timer? countdownTimer;
  Duration myDuration = Duration(minutes: 3);

  void startTimer() {
    countdownTimer =
        Timer.periodic(Duration(seconds: 1), (_) => setCountDown());
  }

  void getGender() {
    if (isSelected[0] == true) {
      userGender == '여자';
    } else if (isSelected[1] == true) {
      userGender == '남자';
    }
  }

  void setCountDown() {
    final reduceSecondsBy = 1;
    setState(() {
      final seconds = myDuration.inSeconds - reduceSecondsBy;
      if (seconds < 0) {
        countdownTimer!.cancel();
      } else {
        myDuration = Duration(seconds: seconds);
      }
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    userCertificationNumber = '';
  }

  int? newsAgency;
  String selectAgency = '통신사';
  String kt = 'KT';
  String skt = 'SKT';
  String lg = 'LG';
  String akt = 'KT 알뜰폰';
  String askt = 'SKT 알뜰폰';
  String alg = 'LG 알뜰폰';

  void changeAgency() {
    if (newsAgency == 0) {
      selectAgency = kt;
    }
    if (newsAgency == 1) {
      selectAgency = skt;
    }
    if (newsAgency == 2) {
      selectAgency = lg;
    }
    if (newsAgency == 3) {
      selectAgency = akt;
    }
    if (newsAgency == 4) {
      selectAgency = askt;
    }
    if (newsAgency == 5) {
      selectAgency = alg;
    }
  }

  List<Widget> items = [
    Text(
      'KT',
      style: TextStyle(
          fontFamily: 'SUIT', fontWeight: FontWeight.w600, fontSize: 24.0.sp),
    ),
    const Text(
      'SKT',
      style: TextStyle(
          fontFamily: 'SUIT', fontWeight: FontWeight.w600, fontSize: 24.0),
    ),
    const Text(
      'LG',
      style: TextStyle(
          fontFamily: 'SUIT', fontWeight: FontWeight.w600, fontSize: 24.0),
    ),
    const Text(
      'KT 알뜰폰',
      style: TextStyle(
          fontFamily: 'SUIT', fontWeight: FontWeight.w600, fontSize: 24.0),
    ),
    const Text(
      'SKT 알뜰폰',
      style: TextStyle(
          fontFamily: 'SUIT', fontWeight: FontWeight.w600, fontSize: 24.0),
    ),
    const Text(
      'LG 알뜰폰',
      style: TextStyle(
          fontFamily: 'SUIT', fontWeight: FontWeight.w600, fontSize: 24.0),
    ),
  ];

  @override
  void dispose() {
    _userNameTextEditController.dispose();
    _userPhoneNumberTextController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    String strDigits(int n) => n.toString().padLeft(2, '0');
    final minutes = strDigits(myDuration.inMinutes.remainder(60));
    final seconds = strDigits(myDuration.inSeconds.remainder(60));
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
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 29.h),
              const HeadlineText(text: '이름과 전화번호로\n본인인증을 해주세요'),
              SizedBox(height: 50.0.h),
              const InfoText(text: '이름'),
              SizedBox(height: 12.0.h),
              CustomTextFormField(
                controller: _userNameTextEditController,
                hintText: '이름을 작성해주세요',
                onChanged: (String value) async {
                  userName = value;
                },
              ),
              SizedBox(height: 24.0.h),
              const InfoText(text: '성별'),
              SizedBox(height: 12.0.h),
              Ink(
                width: 342.w,
                height: 56.h,
                color: Colors.white,
                child: GridView.count(
                  primary: true,
                  crossAxisCount: 2,
                  crossAxisSpacing: 12.w,
                  childAspectRatio: 342 / 112,
                  children: List.generate(
                    isSelected.length,
                    (index) {
                      //using Inkwell widget to create a button
                      return InkWell(
                        // splashColor: MIXIN_POINT_COLOR,
                        //the default splashColor is grey
                        onTap: () {
                          //set the toggle logic
                          setState(() {
                            for (int indexBtn = 0;
                                indexBtn < isSelected.length;
                                indexBtn++) {
                              if (indexBtn == index) {
                                isSelected[indexBtn] = true;
                              } else {
                                isSelected[indexBtn] = false;
                              }
                            }
                          });
                          print(isSelected);
                          if (isSelected[0] == true) {
                            userGender = '여자';
                          } else if (isSelected[1] == true) {
                            userGender = '남자';
                          }
                          print(userGender);
                        },
                        child: Ink(
                          decoration: BoxDecoration(
                            color: isSelected[index] ? MIXIN_ : Colors.white,
                            borderRadius: BorderRadius.circular(8.r),
                            border: isSelected[index]
                                ? Border.all(color: MIXIN_CLICK)
                                : Border.all(color: MIXIN_BLACK_5),
                          ),
                          child: Center(
                            child: Text(
                              genderList[index],
                              style: TextStyle(
                                color:
                                    isSelected[index] ? MIXIN_2 : MIXIN_BLACK_4,
                                fontFamily: 'SUIT',
                                fontSize: 16.sp,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ),
              SizedBox(height: 24.0.h),
              const InfoText(text: '전화번호'),
              SizedBox(height: 12.0.h),
              Row(
                children: [
                  Row(
                    children: [
                      SizedBox(
                        width: 113.w,
                        height: 56.h,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white,
                            side: BorderSide(
                              color: MIXIN_BLACK_5,
                              width: 1.5.w,
                            ),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8.0.r)),
                            elevation: 0.0,
                          ),
                          onPressed: () {
                            showModalBottomSheet(
                              backgroundColor: Colors.transparent,
                              context: context,
                              builder: (BuildContext context) {
                                return Container(
                                  height: 370.h,
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(24.r),
                                          topRight: Radius.circular(24.r)),
                                      color: Colors.white),
                                  child: Column(
                                    children: [
                                      Container(
                                        height: 280.h,
                                        width: double.infinity,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(24.r),
                                            color: Colors.white),
                                        child: Center(
                                          child: ListWheelScrollView(
                                            squeeze: 1,
                                            overAndUnderCenterOpacity: 0.2,
                                            useMagnifier: true,
                                            magnification: 1.3,
                                            itemExtent: 75,
                                            diameterRatio: 2,
                                            physics:
                                                const FixedExtentScrollPhysics(),
                                            onSelectedItemChanged: (index) =>
                                                {newsAgency = index},
                                            children: items,
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        child: Center(
                                          child: ElevatedButton(
                                            style: ElevatedButton.styleFrom(
                                              backgroundColor:
                                                  MIXIN_POINT_COLOR,
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(
                                                  8.0.r,
                                                ),
                                              ),
                                              elevation: 8.0,
                                            ),
                                            onPressed: () async {
                                              Navigator.of(context).pop();
                                              changeAgency();
                                              setState(() {});
                                              print(newsAgency);
                                            },
                                            child: SizedBox(
                                              width: 342.w,
                                              height: 56.h,
                                              child: Center(
                                                child: Text(
                                                  '확인',
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 18.sp,
                                                      fontFamily: 'SUIT',
                                                      fontWeight:
                                                          FontWeight.w600),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                );
                              },
                            );
                          },
                          child: Row(
                            children: [
                              Text(
                                selectAgency,
                                style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontFamily: 'SUIT',
                                    fontSize: 16.0.sp,
                                    color: selectAgency == '통신사'
                                        ? MIXIN_BLACK_4
                                        : MIXIN_BLACK_1),
                              ),
                              SizedBox(width: 15.0.w),
                              const Icon(
                                Icons.arrow_drop_down_rounded,
                                color: MIXIN_BLACK_4,
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(width: 12.0.w),
                      SizedBox(
                        width: 217.w,
                        height: 56.h,
                        child: TextFormField(
                          scrollPadding: EdgeInsets.zero,
                          keyboardType: TextInputType.number,
                          controller: _userPhoneNumberTextController,
                          inputFormatters: [
                            FilteringTextInputFormatter.digitsOnly,
                            NumberFormatter(),
                            LengthLimitingTextInputFormatter(13),
                          ],
                          cursorColor: Colors.grey,
                          obscureText: false,
                          autofocus: false,
                          onChanged: (String value) {
                            userPhoneNumber = value.replaceAll('-', '');
                            if (userPhoneNumber.length == 11) {
                              setState(() {});
                              // 키보드 자동으로 없애기
                              FocusScope.of(context).unfocus();
                            } else {
                              setState(() {});
                            }
                          },
                          decoration: InputDecoration(
                            contentPadding: const EdgeInsets.all(20.0),
                            hintText: '010-0000-0000',
                            hintStyle: TextStyle(
                              color: MIXIN_BLACK_4,
                              fontSize: 16.0.sp,
                              fontFamily: 'SUIT',
                              fontWeight: FontWeight.w500,
                            ),
                            fillColor: Colors.grey,
                            filled: false,
                            // 모든 Input 상태의 기본 스타일 세팅
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8.0.r),
                                borderSide: const BorderSide(
                                    color: MIXIN_BLACK_5, width: 1.5)),
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8.0.r),
                                borderSide: const BorderSide(
                                    color: MIXIN_BLACK_5, width: 1.5)),
                            // focus 일 때 세팅
                            focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(8.0.r),
                                    borderSide: BorderSide(
                                        color: MIXIN_BLACK_5, width: 1.5.w))
                                .copyWith(
                              borderSide: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8.0.r),
                                borderSide:  BorderSide(
                                  color: MIXIN_BLACK_5,
                                  width: 1.5.w,
                                ),
                              ).borderSide,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 12.0.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Visibility(
                    maintainSize: true,
                    maintainAnimation: true,
                    maintainState: true,
                    visible: onClickSendButton == true ? true : false,
                    child: Container(
                      width: 216.w,
                      height: 56.h,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.0.r),
                        border: Border.all(
                          color: MIXIN_BLACK_5,
                          width: 1.5.w,
                        ),
                        color: Colors.transparent,
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            padding: EdgeInsets.only(top: 8.0.h),
                            width: 140.w,
                            height: 56.h,
                            child: TextFormField(
                              keyboardType: TextInputType.number,
                              scrollPadding: EdgeInsets.zero,
                              controller: _userCertificationNumberController,
                              inputFormatters: [
                                FilteringTextInputFormatter.digitsOnly,
                                LengthLimitingTextInputFormatter(6),
                              ],
                              cursorColor: Colors.grey,
                              obscureText: false,
                              autofocus: false,
                              onChanged: (String value) {
                                userCertificationNumber = value;
                                if (userCertificationNumber.length == 6) {
                                  setState(() {
                                    nextButton = true;
                                  });
                                  FocusScope.of(context).unfocus();
                                } else {
                                  setState(() {});
                                }
                              },
                              decoration: InputDecoration(
                                contentPadding: const EdgeInsets.all(20),
                                hintText: '인증번호 입력',
                                hintStyle: TextStyle(
                                  color: MIXIN_BLACK_4,
                                  fontSize: 16.0.sp,
                                  fontFamily: 'SUIT',
                                  fontWeight: FontWeight.w500,
                                ),
                                fillColor: Colors.grey,
                                filled: false,
                                // 모든 Input 상태의 기본 스타일 세팅
                                border: const OutlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Colors.transparent)),
                                enabledBorder: const OutlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Colors.transparent)),
                                // focus 일 때 세팅
                                focusedBorder: const OutlineInputBorder(
                                        borderSide: BorderSide(
                                            color: Colors.transparent))
                                    .copyWith(
                                        borderSide: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                    color: Colors.transparent,
                                                    width: 1.5.w))
                                            .borderSide
                                        // .copyWith(color: Colors.red)),
                                        ),
                              ),
                            ),
                          ),
                          Text(
                            '$minutes:$seconds',
                            style: TextStyle(
                              fontFamily: 'SUIT',
                              fontWeight: FontWeight.w500,
                              fontSize: 14.sp,
                              color: MIXIN_POINT_COLOR,
                            ),
                          ),
                          SizedBox(width: 8.w),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 32.h,
                    width: 105.w,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          padding: EdgeInsets.zero,
                          backgroundColor: userPhoneNumber.length == 11
                              ? MIXIN_POINT_COLOR
                              : MIXIN_BLACK_4,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8.0)),
                          elevation: 0.0),
                      onPressed: () async {
                        if(userPhoneNumber.isNotEmpty){
                          setState(() {
                            onClickSendButton = true;
                          });
                          startTimer();
                          Dio dio = Dio();
                          final Response resp = await dio.post(serverUrl, data: {
                            "to": userPhoneNumber,
                          });
                          print(resp);
                        } else{
                          null;
                        }
                      },
                      child: Container(
                        alignment: Alignment.center,
                        child: Text(
                          onClickSendButton == false ? sendText : sendAgainText,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14.sp,
                            fontFamily: 'SUIT',
                            fontWeight: FontWeight.w500,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 147.h),
              Center(
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: userCertificationNumber.length == 6
                          ? MIXIN_POINT_COLOR
                          : MIXIN_BLACK_4,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8.0)),
                      elevation: 0.0),
                  onPressed: () async {
                    if(nextButton == true){
                      Navigator.of(context).push(
                        MaterialPageRoute(
                            builder: (context) => const SignUpScreenSchool()),
                      );
                      await storage.write(key: 'userName', value: userName);
                      await storage.write(key: 'userGender', value: userGender);
                      await storage.write(key: 'userAgent', value: selectAgency);
                      await storage.write(
                          key: 'userPhoneNumber', value: userPhoneNumber);
                      print('이름 : $userName');
                      print('통신사 : $selectAgency');
                      print('성별 : $userGender');
                      print('전화번호 : $userPhoneNumber');
                    } else{
                      null;
                    }
                    // Navigator.of(context).push(
                    //   MaterialPageRoute(
                    //       builder: (context) => const SignUpScreenSchool()),
                    // );
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
        )),
      ),
    );
  }
}
