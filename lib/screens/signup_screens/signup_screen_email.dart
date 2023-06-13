import 'dart:async';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:mixin_2/layout/text_layout.dart';
import 'package:mixin_2/screens/signup_screens/signup_screen_password.dart';

import '../../components/custom_textformfield.dart';
import '../../const/colors.dart';

class SignUpScreenEmail extends StatefulWidget {
  const SignUpScreenEmail({Key? key}) : super(key: key);

  @override
  State<SignUpScreenEmail> createState() => _SignUpScreenEmailState();
}

class _SignUpScreenEmailState extends State<SignUpScreenEmail> {
  final storage = FlutterSecureStorage();
  final String serverUrl = 'http://122.37.227.143:8080/api/email/send';

  List<int> studentNumber = List<int>.generate(24, (index) => index + 1);
  final _userEmailTextEditController = TextEditingController();
  final _userCertificationNumberController = TextEditingController();

  String userStudentId = '';
  bool onClickSendButton = false;
  late String userCertificationNumber;
  String userEmail = '';
  bool nextButton = false;

  String sendText = '인증번호 전송';
  String sendAgainText = '인증번호 재전송';

  Timer? countdownTimer;
  Duration myDuration = Duration(minutes: 3);

  void startTimer() {
    countdownTimer =
        Timer.periodic(Duration(seconds: 1), (_) => setCountDown());
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

  @override
  void dispose() {
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
                SizedBox(height: 29.0.h),
                const HeadlineText(text: '학교 이메일에서\n인증번호를 입력해주세요!'),
                SizedBox(height: 50.0.h),
                const InfoText(text: '학교 이메일'),
                SizedBox(height: 12.0.h),
                CustomTextFormField(
                  controller: _userEmailTextEditController,
                  hintText: '학교 이메일을 작성해주세요',
                  onChanged: (String value) {
                    userEmail = value;
                    setState(() {});
                  },
                ),
                SizedBox(height: 14.0.h),
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
                          borderRadius: BorderRadius.circular(8.0),
                          border: Border.all(
                            color: MIXIN_BLACK_5,
                            width: 1.5,
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
                                  hintStyle: const TextStyle(
                                    color: MIXIN_BLACK_4,
                                    fontSize: 16.0,
                                    fontFamily: 'SUIT',
                                    fontWeight: FontWeight.w500,
                                  ),
                                  fillColor: Colors.grey,
                                  filled: false,
                                  // 모든 Input 상태의 기본 스타일 세팅
                                  border: const OutlineInputBorder(
                                      borderSide: BorderSide(
                                          color: Colors.transparent)),
                                  enabledBorder: const OutlineInputBorder(
                                      borderSide: BorderSide(
                                          color: Colors.transparent)),
                                  // focus 일 때 세팅
                                  focusedBorder: const OutlineInputBorder(
                                          borderSide: BorderSide(
                                              color: Colors.transparent))
                                      .copyWith(
                                          borderSide: const OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                      color: Colors.transparent,
                                                      width: 1.5))
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
                                fontSize: 14.0.sp,
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
                      width: 110.w,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            padding: EdgeInsets.zero,
                            backgroundColor: userEmail.isNotEmpty
                                ? MIXIN_POINT_COLOR
                                : MIXIN_BLACK_4,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8.0.r)),
                            elevation: 0.0),
                        onPressed: () async {
                          if(userEmail.isNotEmpty){
                            setState(() {
                              onClickSendButton = true;
                            });
                            startTimer();
                            Dio dio = Dio();
                            final Response resp =
                            await dio.post(serverUrl, data: {
                              "userEmail": userEmail,
                            });
                            print(resp);
                          } else{
                            null;
                          }
                        },
                        child: Container(
                          alignment: Alignment.center,
                          child: Text(
                            onClickSendButton == false
                                ? sendText
                                : sendAgainText,
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
                SizedBox(height: 355.h),
                Center(
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: userCertificationNumber.length == 6
                            ? MIXIN_POINT_COLOR
                            : MIXIN_BLACK_4,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8.0.r)),
                        elevation: 0.0),
                    onPressed: () async {
                      if(nextButton == true){
                        Navigator.of(context).push(
                          MaterialPageRoute(
                              builder: (context) => const SignUpScreenPassword()),
                        );
                        await storage.write(key: 'userEmail', value: userEmail);
                      } else{null;}
                      // Navigator.of(context).push(
                      //   MaterialPageRoute(
                      //       builder: (context) => const SignUpScreenPassword()),
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
          ),
        ),
      ),
    );
  }
}
