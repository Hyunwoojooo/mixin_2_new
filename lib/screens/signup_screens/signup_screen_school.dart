import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mixin_2/components/custom_textformfield.dart';
import 'package:mixin_2/screens/login_screen.dart';
import 'package:mixin_2/screens/signup_screens/signup_screen_email.dart';

import '../../components/number_formatter.dart';
import '../../const/colors.dart';

class SignUpScreenSchool extends StatefulWidget {
  const SignUpScreenSchool({Key? key}) : super(key: key);

  @override
  State<SignUpScreenSchool> createState() => _SignUpScreenSchoolState();
}

class _SignUpScreenSchoolState extends State<SignUpScreenSchool> {
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
                    '신뢰성있는 활동을 위한\n학교 인증을 해주세요!',
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
                  '학번',
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
                      hintText: '학번을 작성해주세요',
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
                  height: 24.0,
                ),
                const Text(
                  '대학교',
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
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: Colors.transparent,
                      side: BorderSide(width: 1.5, color: MIXIN_BLACK_5),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      elevation: 0.0),
                  onPressed: () async {
                    showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return AlertDialog(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(24.0),
                            ),
                            title: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Text(
                                  '학교 검색하기',
                                  style: TextStyle(
                                    fontFamily: 'SUIT',
                                    fontWeight: FontWeight.w600,
                                    fontSize: 24.0,
                                  ),
                                ),
                                IconButton(
                                  onPressed: () {
                                    Navigator.pop(context);
                                  },
                                  icon: Icon(Icons.exit_to_app),
                                ),
                              ],
                            ),
                            content: Column(
                              children: [
                                Container(
                                  width: 294.0,
                                  height: 48.0,
                                  child: TextFormField(
                                    cursorColor: Colors.grey,
                                    obscureText: false,
                                    autofocus: false,
                                    decoration: InputDecoration(
                                      prefixIcon: Image.asset('assets/images/icon_search.png'),
                                      contentPadding: EdgeInsets.symmetric(vertical: 0.0,horizontal: 12.0),
                                      hintText: '학교검색',
                                      hintStyle: TextStyle(
                                        color: MIXIN_BLACK_4,
                                        fontSize: 16,
                                        fontFamily: 'SUIT',
                                        fontWeight: FontWeight.w500,
                                      ),
                                      fillColor: MIXIN_BLACK_5,
                                      filled: true,
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(8.0),
                                        borderSide: const BorderSide(
                                          color: MIXIN_BLACK_4,
                                          width: 1,
                                        ),
                                      ),
                                      enabledBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(8.0),
                                        borderSide: const BorderSide(
                                          color: MIXIN_BLACK_4,
                                          width: 1,
                                        ),
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          );
                        });
                  },
                  child: Container(
                    alignment: Alignment.centerLeft,
                    width: 342,
                    height: 56,
                    child: Text(
                      '대학교를 선택해주세요',
                      style: TextStyle(
                          color: MIXIN_BLACK_4,
                          fontSize: 16,
                          fontFamily: 'SUIT',
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 24.0,
                ),
                const Text(
                  '학과',
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
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: Colors.transparent,
                      side: BorderSide(width: 1.5, color: MIXIN_BLACK_5),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      elevation: 0.0),
                  onPressed: () async {
                    showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return AlertDialog(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(24.0),
                            ),
                            title: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Text(
                                  '학과 검색하기',
                                  style: TextStyle(
                                    fontFamily: 'SUIT',
                                    fontWeight: FontWeight.w600,
                                    fontSize: 24.0,
                                  ),
                                ),
                                IconButton(
                                  onPressed: () {
                                    Navigator.pop(context);
                                  },
                                  icon: Icon(Icons.exit_to_app),
                                ),
                              ],
                            ),
                            content: Column(
                              children: [
                                Container(
                                  width: 294.0,
                                  height: 48.0,
                                  child: TextFormField(
                                    cursorColor: Colors.grey,
                                    obscureText: false,
                                    autofocus: false,
                                    decoration: InputDecoration(
                                      prefixIcon: Image.asset('assets/images/icon_search.png'),
                                      contentPadding: EdgeInsets.symmetric(vertical: 0.0,horizontal: 12.0),
                                      hintText: '학과검색',
                                      hintStyle: TextStyle(
                                        color: MIXIN_BLACK_4,
                                        fontSize: 16,
                                        fontFamily: 'SUIT',
                                        fontWeight: FontWeight.w500,
                                      ),
                                      fillColor: MIXIN_BLACK_5,
                                      filled: true,
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(8.0),
                                        borderSide: const BorderSide(
                                          color: MIXIN_BLACK_4,
                                          width: 1,
                                        ),
                                      ),
                                      enabledBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(8.0),
                                        borderSide: const BorderSide(
                                          color: MIXIN_BLACK_4,
                                          width: 1,
                                        ),
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          );
                        });
                  },
                  child: Container(
                    alignment: Alignment.centerLeft,
                    width: 342,
                    height: 56,
                    child: Text(
                      '학과를 선택해주세요',
                      style: TextStyle(
                          color: MIXIN_BLACK_4,
                          fontSize: 16,
                          fontFamily: 'SUIT',
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                ),

                const SizedBox(
                  height: 186,
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
                            builder: (context) => SignUpScreenEmail()),
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
