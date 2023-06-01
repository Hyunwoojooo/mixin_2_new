import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:mixin_2/components/school_card.dart';
import 'package:mixin_2/layout/text_layout.dart';
import 'package:mixin_2/screens/signup_screens/signup_screen_email.dart';

import '../../const/colors.dart';

class SignUpScreenSchool extends StatefulWidget {
  const SignUpScreenSchool({Key? key}) : super(key: key);

  @override
  State<SignUpScreenSchool> createState() => _SignUpScreenSchoolState();
}

class _SignUpScreenSchoolState extends State<SignUpScreenSchool> {
  final String serverSchoolUrl = 'http://122.37.227.143:8080/school';
  final String serverDepartmentUrl =
      'http://122.37.227.143:8080/동양대학교/Department';

  final storage = const FlutterSecureStorage();
  final dio = Dio();

  List<int> studentNumber = List<int>.generate(24, (index) => index + 1);
  List<String> dataSchoolList = [];
  final _userStudentIdTextEditController = TextEditingController();
  final _userSchoolTextFieldEditController = TextEditingController();
  String userStudentId = '';

  void fetchDataSchool() async {
    try {
      Response response = await dio.get(serverSchoolUrl); // API의 URL을 사용합니다.

      if (response.statusCode == 200) {
        // 데이터를 성공적으로 가져왔을 때 처리하는 코드
        List<String> receivedData =
            List<String>.from(response.data['schoolName']);
        setState(() {
          dataSchoolList = receivedData;
        });
      } else {
        // 오류 처리
        print('데이터 가져오기에 실패했습니다.');
      }
    } catch (e) {
      // 예외 처리
      print('오류가 발생했습니다: $e');
    }
  }

  List<String> filterData(String searchText) {
    return dataSchoolList
        .where((data) => data.toLowerCase().contains(searchText.toLowerCase()))
        .toList();
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    fetchDataSchool();
  }

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
            padding: EdgeInsets.symmetric(horizontal: 24.0.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 29.0.h),
                const HeadlineText(text: '신뢰성있는 활동을 위한\n학교 인증을 해주세요!'),
                SizedBox(height: 50.0.h),
                const InfoText(text: '학번'),
                SizedBox(height: 12.0.h),
                // 학번 TextField
                SizedBox(
                  width: 342.w,
                  height: 56.h,
                  child: TextFormField(
                    keyboardType: TextInputType.number,
                    scrollPadding: EdgeInsets.zero,
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
                        borderSide: const BorderSide(
                          color: MIXIN_BLACK_5,
                          width: 1.5,
                        ),
                      ),
                      // focus 일 때 세팅
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8.0),
                        borderSide: const BorderSide(
                          color: MIXIN_BLACK_5,
                          width: 1.5,
                        ),
                      ).copyWith(
                        borderSide: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8.0),
                          borderSide: const BorderSide(
                            color: MIXIN_BLACK_5,
                            width: 1.5,
                          ),
                        ).borderSide,
                        // .copyWith(color: Colors.red)),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 24.0.h),
                const InfoText(text: '대학교'),
                SizedBox(height: 12.0.h),
                // 학교 버튼
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.transparent,
                    side: const BorderSide(width: 1.5, color: MIXIN_BLACK_5),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    elevation: 0.0,
                  ),
                  child: Container(
                    alignment: Alignment.centerLeft,
                    width: 342.w,
                    height: 56.h,
                    child: Text(
                      '동양미래대학교',
                      style: TextStyle(
                        color: MIXIN_BLACK_1,
                        fontSize: 16.sp,
                        fontFamily: 'SUIT',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                  onPressed: () async {
                    final dataSchool = await dio.get(serverSchoolUrl);
                    print('school : ${dataSchool.data}');
                    fetchDataSchool();
                    if (!mounted) return;
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
                                Text(
                                  '학교 검색하기',
                                  style: TextStyle(
                                    fontFamily: 'SUIT',
                                    fontWeight: FontWeight.w600,
                                    fontSize: 24.0.sp,
                                    color: MIXIN_BLACK_1,
                                  ),
                                ),
                                IconButton(
                                  onPressed: () {
                                    Navigator.pop(context);
                                  },
                                  icon: Image.asset(
                                    'assets/images/icons/close_icon_black_3x.png',
                                    width: 26,
                                    color: MIXIN_BLACK_1,
                                  ),
                                ),
                              ],
                            ),
                            content: Column(
                              children: [
                                SizedBox(
                                  width: 294.0.w,
                                  height: 48.0.h,
                                  child: TextFormField(
                                    cursorColor: Colors.grey,
                                    obscureText: false,
                                    autofocus: false,
                                    decoration: InputDecoration(
                                      prefixIcon: Padding(
                                        padding: EdgeInsets.only(top: 4.0.h),
                                        child: Image.asset(
                                          'assets/images/icon_search.png',
                                          color: MIXIN_BLACK_4,
                                        ),
                                      ),
                                      contentPadding: EdgeInsets.symmetric(
                                          vertical: 0.0, horizontal: 12.0.w),
                                      hintText: '학교검색',
                                      hintStyle: TextStyle(
                                        color: MIXIN_BLACK_4,
                                        fontSize: 16.sp,
                                        fontFamily: 'SUIT',
                                        fontWeight: FontWeight.w500,
                                      ),
                                      fillColor: MIXIN_BLACK_5,
                                      filled: true,
                                      border: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                        borderSide: const BorderSide(
                                          color: MIXIN_BLACK_4,
                                          width: 1,
                                        ),
                                      ),
                                      enabledBorder: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                        borderSide: const BorderSide(
                                          color: MIXIN_BLACK_4,
                                          width: 1,
                                        ),
                                      ),
                                    ),
                                    onChanged: (value) {
                                      setState(() {
                                        dataSchoolList = filterData(value);
                                        print('dataSchoolList : $dataSchoolList');
                                      });
                                    },
                                  ),
                                ),
                                SizedBox(height: 24.h),
                                // Text(dataSchoolList[0]),
                                // SingleChildScrollView(
                                //   child: ListView.builder(
                                //     physics: NeverScrollableScrollPhysics(),
                                //     shrinkWrap: true,
                                //       itemCount: dataSchoolList.length,
                                //       itemBuilder: (context, index) {
                                //     return SchoolCard(
                                //       schoolName: dataSchoolList[index],
                                //       address: '서울시 구로구 경인로 445',
                                //       onPressed: () {},
                                //     );
                                //   }),
                                // ),
                              ],
                            ),
                          );
                        });
                  },
                ),
                SizedBox(height: 24.0.h),
                const InfoText(text: '학과'),
                SizedBox(height: 12.0.h),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: Colors.transparent,
                      side: const BorderSide(width: 1.5, color: MIXIN_BLACK_5),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      elevation: 0.0),
                  onPressed: () async {
                    final resp1 = await dio.get(serverDepartmentUrl);
                    print('school : ${resp1.data}');
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
                                Text(
                                  '학과 검색하기',
                                  style: TextStyle(
                                    fontFamily: 'SUIT',
                                    fontWeight: FontWeight.w600,
                                    fontSize: 24.0.sp,
                                  ),
                                ),
                                IconButton(
                                  onPressed: () {
                                    Navigator.pop(context);
                                  },
                                  icon: Image.asset(
                                    'assets/images/icons/close_icon_black_3x.png',
                                    width: 26,
                                    color: MIXIN_BLACK_1,
                                  ),
                                ),
                              ],
                            ),
                            content: Column(
                              children: [
                                Container(
                                  width: 294.0.w,
                                  height: 48.0.h,
                                  child: TextFormField(
                                    cursorColor: Colors.grey,
                                    obscureText: false,
                                    autofocus: false,
                                    decoration: InputDecoration(
                                      prefixIcon: Image.asset(
                                          'assets/images/icon_search.png'),
                                      contentPadding: EdgeInsets.symmetric(
                                          vertical: 0.0, horizontal: 12.0),
                                      hintText: '학과검색',
                                      hintStyle: TextStyle(
                                        color: MIXIN_BLACK_4,
                                        fontSize: 16.sp,
                                        fontFamily: 'SUIT',
                                        fontWeight: FontWeight.w500,
                                      ),
                                      fillColor: MIXIN_BLACK_5,
                                      filled: true,
                                      border: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                        borderSide: const BorderSide(
                                          color: MIXIN_BLACK_4,
                                          width: 1,
                                        ),
                                      ),
                                      enabledBorder: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(8.0),
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
                    width: 342.w,
                    height: 56.h,
                    child: Text(
                      '자동화공학과',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 16.sp,
                          fontFamily: 'SUIT',
                          fontWeight: FontWeight.w400),
                    ),
                  ),
                ),
                SizedBox(height: 186.h),
                Center(
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: MIXIN_POINT_COLOR,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8.0)),
                        elevation: 0.0),
                    onPressed: () async {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                            builder: (context) => const SignUpScreenEmail()),
                      );
                      await storage.write(
                          key: 'userStudentId', value: userStudentId);
                      await storage.write(
                          key: 'userUniversity', value: '동양미래대학교');
                      await storage.write(
                          key: 'userDepartment', value: '자동화공학과');
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
