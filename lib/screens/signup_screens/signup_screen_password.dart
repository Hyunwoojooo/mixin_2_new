import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:dio/dio.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:mixin_2/layout/text_layout.dart';
import 'package:mixin_2/screens/login_screen.dart';
import '../../components/custom_textformfield.dart';
import '../../const/colors.dart';

class SignUpScreenPassword extends StatefulWidget {
  const SignUpScreenPassword({Key? key}) : super(key: key);

  @override
  State<SignUpScreenPassword> createState() => _SignUpScreenPasswordState();
}

class _SignUpScreenPasswordState extends State<SignUpScreenPassword> {
  final storage = FlutterSecureStorage();
  final String serverUrl = 'http://122.37.227.143:8080/api/join';

  String userPassword = '';
  String userPasswordCheck = '';

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
      body: SingleChildScrollView(
        keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.0.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 29.0.h),
                const HeadlineText(text: '이제 마지막이에요!\n비밀번호를 설정해주세요.'),
                SizedBox(height: 50.0.h),
                const InfoText(text: '비밀번호'),
                SizedBox(height: 12.0.h),
                CustomTextFormField(
                  hintText: '비밀번호를 입력해주세요',
                  obscrueText: false,
                  onChanged: (String value) {
                    userPassword = value;
                    setState(() {});
                  },
                ),
                SizedBox(height: 24.0.h),
                const InfoText(text: '비밀번호 확인'),
                SizedBox(height: 12.0.h),
                CustomTextFormField(
                  hintText: '비밀번호를 입력해주세요',
                  obscrueText: false,
                  onChanged: (String value) async {
                    userPasswordCheck = value;
                    setState(() {});
                  },
                ),
                SizedBox(height: 24.0.h),
                Row(
                  children: [
                    Icon(
                      Icons.check_rounded,
                      size: 18.0.w,
                      color:
                          userPassword.length >= 8 && userPassword.length <= 16
                              ? MIXIN_POINT_COLOR
                              : MIXIN_BLACK_4,
                    ),
                    SizedBox(width: 10.w),
                    Text(
                      '8~16자리 사이의 비밀번호를 구성',
                      style: TextStyle(
                        fontFamily: 'SUIT',
                        fontWeight: FontWeight.w500,
                        fontSize: 12.0.sp,
                        color: userPassword.length >= 8 &&
                                userPassword.length <= 16
                            ? MIXIN_POINT_COLOR
                            : MIXIN_BLACK_4,
                      ),
                    )
                  ],
                ),
                SizedBox(height: 8.0.w),
                Row(
                  children: [
                    Icon(Icons.check_rounded,
                        size: 18.0.w,
                        color: _hasUpperCaseAndNumber(userPassword)
                            ? MIXIN_POINT_COLOR
                            : MIXIN_BLACK_4),
                    SizedBox(width: 10.w),
                    Text(
                      '영문 대문자/숫자 포함',
                      style: TextStyle(
                        fontFamily: 'SUIT',
                        fontWeight: FontWeight.w500,
                        fontSize: 12.0.sp,
                        color: _hasUpperCaseAndNumber(userPassword)
                            ? MIXIN_POINT_COLOR
                            : MIXIN_BLACK_4,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 8.0.h),
                Row(
                  children: [
                    Icon(Icons.check_rounded,
                        size: 18.0,
                        color: userPassword == userPasswordCheck &&
                                userPassword.isNotEmpty &&
                                userPasswordCheck.isNotEmpty
                            ? MIXIN_POINT_COLOR
                            : MIXIN_BLACK_4),
                    SizedBox(width: 10.w),
                    Text(
                      '비밀번호 일치',
                      style: TextStyle(
                          fontFamily: 'SUIT',
                          fontWeight: FontWeight.w500,
                          fontSize: 12.0,
                          color: userPassword == userPasswordCheck &&
                                  userPassword.isNotEmpty &&
                                  userPasswordCheck.isNotEmpty
                              ? MIXIN_POINT_COLOR
                              : MIXIN_BLACK_4),
                    )
                  ],
                ),
                SizedBox(height: 220.h),
                Center(
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: nextButtonColor(),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8.0.r)),
                        elevation: 0.0),
                    onPressed: () async {
                      // if ((userPassword == userPasswordCheck &&
                      //         userPassword.isNotEmpty &&
                      //         userPasswordCheck.isNotEmpty) &&
                      //     _hasUpperCaseAndNumber(userPassword) &&
                      //     userPassword.length >= 8 &&
                      //     userPassword.length <= 16) {
                      //   Dio dio = Dio();
                      //   String? agradInfrm =
                      //   await storage.read(key: 'isAdIfmChecked');
                      //   print('광고성 : $agradInfrm');
                      //   String? userName = await storage.read(key: 'userName');
                      //   print('이름 : $userName');
                      //   String? userGender =
                      //   await storage.read(key: 'userGender');
                      //   print('성별 : $userGender');
                      //   String? userPhoneNumber =
                      //   await storage.read(key: 'userPhoneNumber');
                      //   print('휴대폰 번호 : $userPhoneNumber');
                      //   String? userCarrier =
                      //   await storage.read(key: 'userAgent');
                      //   print('통신사 : $userCarrier');
                      //   String? userStudentId =
                      //   await storage.read(key: 'userStudentId');
                      //   print('학번 : $userStudentId');
                      //   String? userUniversity =
                      //   await storage.read(key: 'userUniversity');
                      //   print('대학교 : $userUniversity');
                      //   String? userDepartment =
                      //   await storage.read(key: 'userDepartment');
                      //   print('학과 : $userDepartment');
                      //   String? userEmail = await storage.read(key: 'userEmail');
                      //   print('이메일 : $userEmail');
                      //   await storage.write(
                      //       key: 'userPassword', value: userPassword);
                      //   print('비밀번호 : $userPassword');
                      //
                      //   final Response resp = await dio.post(serverUrl, data: {
                      //     "agradInfrm": agradInfrm,
                      //     "userName": userName,
                      //     "userGender": userGender,
                      //     "userPhoneNumber": userPhoneNumber,
                      //     "userCarrier": userCarrier,
                      //     "userStudentId": userStudentId,
                      //     "userUniversity": userUniversity,
                      //     "userDepartment": userDepartment,
                      //     "userEmail": userEmail,
                      //     "userPassword": userPassword,
                      //   });
                      //   print(resp);
                      //
                      //   Navigator.of(context).push(
                      //       MaterialPageRoute(
                      //           builder: (context) => const LoginScreen()),
                      //   );
                      // } else{null;}

                      Navigator.of(context).push(
                        MaterialPageRoute(
                            builder: (context) => const LoginScreen()),
                      );
                    },
                    child: SizedBox(
                      width: 342.w,
                      height: 56.h,
                      child: Center(
                        child: Text(
                          '완료',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 18.sp,
                              fontFamily: 'SUIT',
                              fontWeight: FontWeight.w600),
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

  Color nextButtonColor(){
    if ((userPassword == userPasswordCheck &&
        userPassword.isNotEmpty &&
        userPasswordCheck.isNotEmpty) &&
        _hasUpperCaseAndNumber(userPassword) &&
        userPassword.length >= 8 &&
        userPassword.length <= 16) return MIXIN_POINT_COLOR;
    return MIXIN_BLACK_4;
  }

  bool _hasUpperCaseAndNumber(String text) {
    bool hasUpperCase = false;
    bool hasNumber = false;

    for (int i = 0; i < text.length; i++) {
      if (text[i].toUpperCase() == text[i] &&
          text[i].toLowerCase() != text[i]) {
        hasUpperCase = true;
      }
      if (int.tryParse(text[i]) != null) {
        hasNumber = true;
      }
    }

    return hasUpperCase && hasNumber;
  }
}
