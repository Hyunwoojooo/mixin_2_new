import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:dio/dio.dart';
import 'package:mixin_2/layout/text_layout.dart';
import 'package:mixin_2/screens/login_screen.dart';
import '../../const/colors.dart';

class SignUpScreenPassword extends StatefulWidget {
  const SignUpScreenPassword({Key? key}) : super(key: key);

  @override
  State<SignUpScreenPassword> createState() => _SignUpScreenPasswordState();
}

class _SignUpScreenPasswordState extends State<SignUpScreenPassword> {
  final String serverUrl = 'http://122.37.227.143:8080/api/join';

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
      body: SingleChildScrollView(
        keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 29.0),
                const HeadlineText(text: '이제 마지막이에요!\n비밀번호를 설정해주세요.'),
                const SizedBox(height: 50.0),
                const InfoText(text: '비밀번호'),
                const SizedBox(height: 12.0),
                SizedBox(
                  width: 342,
                  height: 56,
                  child: TextFormField(
                    scrollPadding: EdgeInsets.all(0.0),
                    // controller: _userStudentIdTextEditController,
                    inputFormatters: [
                      FilteringTextInputFormatter.digitsOnly,
                      LengthLimitingTextInputFormatter(13),
                    ],
                    cursorColor: Colors.grey,
                    obscureText: false,
                    autofocus: false,
                    onChanged: (String value) {
                      // userStudentId = value;
                    },
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.all(20),
                      hintText: '비밀번호를 입력해주세요',
                      hintStyle: const TextStyle(
                        color: MIXIN_BLACK_4,
                        fontSize: 16.0,
                        fontFamily: 'SUIT',
                        fontWeight: FontWeight.w500,
                      ),
                      fillColor: Colors.grey,
                      // false - 배경색 없음
                      // true - 배경색 있음
                      filled: false,
                      // 모든 Input 상태의 기본 스타일 세팅
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8.0),
                        // borderSide:
                        //     BorderSide(color: MIXIN_BLACK_5, width: 1.5)
                      ),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8.0),
                          borderSide:
                              BorderSide(color: MIXIN_BLACK_5, width: 1.5)),
                      // focus 일 때 세팅
                      focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8.0),
                              borderSide:
                                  BorderSide(color: MIXIN_BLACK_5, width: 1.5))
                          .copyWith(
                              borderSide: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(8.0),
                                      borderSide: BorderSide(
                                          color: MIXIN_BLACK_5, width: 1.5))
                                  .borderSide
                              // .copyWith(color: Colors.red)),
                              ),
                    ),
                  ),
                ),
                const SizedBox(height: 24.0),
                const InfoText(text: '비밀번호 확인'),
                const SizedBox(height: 12.0),
                SizedBox(
                  width: 342,
                  height: 56,
                  child: TextFormField(
                    scrollPadding: EdgeInsets.all(0.0),
                    // controller: _userStudentIdTextEditController,
                    inputFormatters: [
                      FilteringTextInputFormatter.digitsOnly,
                      LengthLimitingTextInputFormatter(13),
                    ],
                    cursorColor: Colors.grey,
                    obscureText: false,
                    autofocus: false,
                    onChanged: (String value) {
                      // userStudentId = value;
                    },
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.all(20),
                      hintText: '비밀번호를 입력해주세요',
                      hintStyle: const TextStyle(
                        color: MIXIN_BLACK_4,
                        fontSize: 16.0,
                        fontFamily: 'SUIT',
                        fontWeight: FontWeight.w500,
                      ),
                      fillColor: Colors.grey,
                      // false - 배경색 없음
                      // true - 배경색 있음
                      filled: false,
                      // 모든 Input 상태의 기본 스타일 세팅
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8.0),
                        // borderSide:
                        //     BorderSide(color: MIXIN_BLACK_5, width: 1.5)
                      ),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8.0),
                          borderSide:
                              BorderSide(color: MIXIN_BLACK_5, width: 1.5)),
                      // focus 일 때 세팅
                      focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8.0),
                              borderSide:
                                  BorderSide(color: MIXIN_BLACK_5, width: 1.5))
                          .copyWith(
                              borderSide: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(8.0),
                                      borderSide: BorderSide(
                                          color: MIXIN_BLACK_5, width: 1.5))
                                  .borderSide
                              // .copyWith(color: Colors.red)),
                              ),
                    ),
                  ),
                ),
                const SizedBox(height: 24.0),
                Row(
                  children: [
                    Icon(Icons.check_rounded, size: 18.0, color: MIXIN_BLACK_4),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      '8~16자리 사이의 비밀번호를 구성',
                      style: TextStyle(
                          fontFamily: 'SUIT',
                          fontWeight: FontWeight.w500,
                          fontSize: 12.0,
                          color: MIXIN_BLACK_4),
                    )
                  ],
                ),
                const SizedBox(height: 8.0),
                Row(
                  children: [
                    Icon(Icons.check_rounded, size: 18.0, color: MIXIN_BLACK_4),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      '영문 대소문자/숫자 포함',
                      style: TextStyle(
                          fontFamily: 'SUIT',
                          fontWeight: FontWeight.w500,
                          fontSize: 12.0,
                          color: MIXIN_BLACK_4),
                    )
                  ],
                ),
                const SizedBox(height: 220),
                Center(
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        primary: MIXIN_POINT_COLOR,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8.0)),
                        elevation: 0.0),
                    onPressed: () async {
                      // Dio dio = Dio();
                      // final Response resp = await dio.post(serverUrl, data: {
                      //   "agradInfrm" : true,
                      //   "userName" : "주현우",
                      //   "userGender" : "여자",
                      //   "userPhoneNumber" : "01033428798",
                      //   "userCarrier" : "SKT",
                      //   "userStudentId" : "20233459",
                      //   "userUniversity" : "동양미래대학교1",
                      //   "userDepartment" : "로봇공학과1",
                      //   "userEmail" : "hyunwoojoo@m365.dongyang.ac.kr",
                      //   "userPassword" : "odfn123123!",
                      // });
                      // final Response resp1 = await dio.get(serverUrl);
                      // print(resp1);
                      // print(resp);
                      Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => LoginScreen()),
                      );
                    },
                    child: Container(
                      width: 342,
                      height: 56,
                      child: const Center(
                        child: Text(
                          '완료',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
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
}
