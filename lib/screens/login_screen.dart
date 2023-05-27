import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:mixin_2/components/default_layout.dart';
import 'package:mixin_2/const/colors.dart';
import 'package:mixin_2/const/data.dart';
import 'package:mixin_2/screens/signup_screens/signup_screen_tos.dart';

import '../components/custom_textformfield.dart';
import 'make_profile_card_screens/make_category_screen.dart';


/*
  버튼 눌렀을 때 파란색 활성화 애니메이션 제거
  토큰 있을 때 없을 때
  아이디 찾기 페이지 구현
  비밀번호 찾기 페이지 구현
 */

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final String serverUrl = 'http://122.37.227.143:8080/api/login';
  final storage = const FlutterSecureStorage();

  final _idTextEditController = TextEditingController();
  final _passwordTextController = TextEditingController();

  String username = '';
  String password = '';

  @override
  void dispose() {
    _idTextEditController.dispose();
    _passwordTextController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final dio = Dio();

    return DefaultLayout(
      child: SingleChildScrollView(
        keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
        child: SafeArea(
          top: true,
          bottom: false,
          child: Center(
            child: Column(
              children: [
                SizedBox(height: 162.h),
                Image.asset(
                  'assets/images/mixin_logo.png',
                  width: 124.w,
                  height: 34.h,
                ),
                SizedBox(height: 16.0.h),
                Text(
                  'Everyone\'s playground',
                  style: TextStyle(
                      fontFamily: 'SUIT',
                      fontWeight: FontWeight.w500,
                      fontSize: 14.0.sp,
                      color: MIXIN_POINT_COLOR),
                ),
                SizedBox(height: 67.h),
                //username TextField
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 24.w),
                  child: CustomTextFormField(
                    hintText: '아이디',
                    onChanged: (String value) {
                      username = value;
                    },
                  ),
                ),
                SizedBox(height: 12.0.h),
                //password TextField
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 24.w),
                  child: CustomTextFormField(
                    hintText: '비밀번호',
                    onChanged: (String value) {
                      password = value;
                    },
                    obscrueText: true,
                  ),
                ),
                 SizedBox(height: 107.0.h),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0)),
                    elevation: 0.0,
                    backgroundColor: MIXIN_POINT_COLOR,
                  ),
                  onPressed: () async {
                    final idPassword = '$username:$password';

                    // 일반 String을 base64로 변환
                    Codec<String, String> stringToBase64 = utf8.fuse(base64);

                    String token = stringToBase64.encode(idPassword);

                    final resp = await dio.post(serverUrl, data: {
                      "userEmail": username,
                      "userPassword": password,
                    });
                    print('resp : $resp');

                    final refreshToken = resp.headers['Authorization'];
                    print('refreshToken : $refreshToken');
                    // final accessToken = resp.data['accessToken'];
                    //
                    // await storage.write(key: REFRESH_TOKEN_KEY, value: refreshToken);
                    // await storage.write(key: ACCESS_TOKEN_KEY, value: accessToken);

                    Navigator.of(context).push(
                      MaterialPageRoute(
                          builder: (context) => const MakeCategoryScreen()),
                    );

                  },
                  child: SizedBox(
                    width: 260.w,
                    height: 56.h,
                    child: Center(
                      child: Text(
                        '로그인',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18.sp,
                            fontFamily: 'SUIT',
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 14.h),
                IntrinsicHeight(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextButton(
                        style: TextButton.styleFrom(
                          padding: EdgeInsets.zero,
                        ),
                        onPressed: () {},
                        child: Text(
                          '아이디 찾기',
                          style: TextStyle(
                              color: MIXIN_BLACK_4,
                              fontSize: 12.sp,
                              fontFamily: 'SUIT',
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          width: 1.w,
                          height: 12.h,
                          color: MIXIN_BLACK_4,
                        ),
                      ),
                      TextButton(
                        style: TextButton.styleFrom(
                          padding: EdgeInsets.zero,
                        ),
                        onPressed: () {},
                        child:  Text(
                          '비밀번호 찾기',
                          style: TextStyle(
                              color: MIXIN_BLACK_4,
                              fontSize: 12.sp,
                              fontFamily: 'SUIT',
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          width: 1.w,
                          height: 12.h,
                          color: MIXIN_BLACK_4,
                        ),
                      ),
                      TextButton(
                        onPressed: () async {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                                builder: (context) => const SignUpScreen1()),
                          );
                        },
                        child: Text(
                          '회원가입',
                          style: TextStyle(
                            decoration: TextDecoration.underline,
                            color: MIXIN_POINT_COLOR,
                            fontSize: 14.sp,
                            fontFamily: 'SUIT',
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ],
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
