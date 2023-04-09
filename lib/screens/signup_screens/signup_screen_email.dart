import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mixin_2/components/custom_textformfield.dart';
import 'package:mixin_2/screens/login_screen.dart';
import 'package:mixin_2/screens/signup_screens/signup_screen_password.dart';

import '../../components/number_formatter.dart';
import '../../const/colors.dart';

class SignUpScreenEmail extends StatefulWidget {
  const SignUpScreenEmail({Key? key}) : super(key: key);

  @override
  State<SignUpScreenEmail> createState() => _SignUpScreenEmailState();
}

class _SignUpScreenEmailState extends State<SignUpScreenEmail> {
  List<int> studentNumber = List<int>.generate(24, (index) => index + 1);
  final _userStudentIdTextEditController = TextEditingController();

  String userStudentId = '';

  @override
  void dispose() {
    _userStudentIdTextEditController.dispose();
    super.dispose();
  }

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
                const SizedBox(
                  height: 29.0,
                ),
                Container(
                  color: Colors.transparent,
                  child: const Text(
                    '학교 이메일에서\n인증번호를 입력해주세요!',
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.w600,
                      fontFamily: 'SUIT',
                    ),
                  ),
                ),
                const SizedBox(
                  height: 50.0,
                ),
                const Text(
                  '학교 이메일',
                  style: TextStyle(
                    fontFamily: 'SUIT',
                    fontWeight: FontWeight.w500,
                    fontSize: 12.0,
                    color: MIXIN_BLACK_3,
                  ),
                ),
                const SizedBox(
                  height: 12.0,
                ),
                SizedBox(
                  width: 342,
                  height: 56,
                  child: TextFormField(
                    scrollPadding: EdgeInsets.all(0.0),
                    controller: _userStudentIdTextEditController,
                    inputFormatters: [
                      FilteringTextInputFormatter.digitsOnly,
                      LengthLimitingTextInputFormatter(13),
                    ],
                    cursorColor: Colors.grey,
                    obscureText: false,
                    autofocus: false,
                    onChanged: (String value) {
                      userStudentId = value;
                    },
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.all(20),
                      hintText: '학교 이메일을 입력해주세요.',
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
                const SizedBox(
                  height: 8.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    SizedBox(
                      height: 32,
                      width: 110,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            primary: MIXIN_POINT_COLOR,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8.0)),
                            elevation: 0.0),
                        onPressed: () async {
                        },
                        child: Container(
                          padding: EdgeInsets.zero,
                          child: Center(
                            child: Text(
                              '인증번호 전송',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 14,
                                  fontFamily: 'SUIT',
                                  fontWeight: FontWeight.w500
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 361,
                ),
                Center(
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        primary: MIXIN_POINT_COLOR,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8.0)),
                        elevation: 0.0),
                    onPressed: () async {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                            builder: (context) => SignUpScreenPassword()),
                      );
                    },
                    child: Container(
                      width: 342,
                      height: 56,
                      child: Center(
                        child: Text(
                          '다음',
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
