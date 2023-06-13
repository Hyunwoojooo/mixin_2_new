import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mixin_2/const/data.dart';
import 'package:mixin_2/layout/text_layout.dart';
import 'package:mixin_2/models/school_name.dart';
import 'package:mixin_2/screens/signup_screens/signup_screen_email.dart';

import '../../const/colors.dart';

class SignUpScreenSchool extends StatefulWidget {
  const SignUpScreenSchool({Key? key}) : super(key: key);

  @override
  State<SignUpScreenSchool> createState() => _SignUpScreenSchoolState();
}

class _SignUpScreenSchoolState extends State<SignUpScreenSchool> {
  final String serverSchoolUrl = '$ip/school';
  final String serverDepartmentUrl = '$ip/동양미래대학교/Department';

  // 학교 변수
  String selectSchool = '';
  String userUniversity = '';
  List<String> schoolNames = [];
  List<String> schoolAddress = [];

  // 학과 변수
  String selectDepartment = '';
  String userDepartment = '';
  List<String> filteredDepartments = [];
  List<String> collegeNames = [];

  final dio = Dio();

  List<int> studentNumber = List<int>.generate(24, (index) => index + 1);
  List<String> dataSchoolList = [];
  final _userStudentIdTextEditController = TextEditingController();
  final _userSchoolTextFieldEditController = TextEditingController();
  String userStudentId = '';

  // void fetchDataSchool() async {
  //   try {
  //     Response response = await dio.get(serverSchoolUrl); // API의 URL을 사용합니다.
  //
  //     if (response.statusCode == 200) {
  //       // 데이터를 성공적으로 가져왔을 때 처리하는 코드
  //       List<String> receivedData =
  //           List<String>.from(response.data['schoolName']);
  //       setState(() {
  //         dataSchoolList = receivedData;
  //         print('AAAAAAAAAAAA ====== $dataSchoolList');
  //       });
  //     } else {
  //       // 오류 처리
  //       print('데이터 가져오기에 실패했습니다.');
  //     }
  //   } catch (e) {
  //     // 예외 처리
  //     print('오류가 발생했습니다: $e');
  //   }
  // }

  Future<void> getSchoolNameList() async {
    final routeFromJsonFile =
        await rootBundle.loadString('assets/json/school_data.json');
    var _schoolNameList =
        SchoolNameList.fromJson(routeFromJsonFile).schoolName ?? <SchoolName>[];
    Map<String, dynamic> data = json.decode(routeFromJsonFile);
    List<dynamic> filteredData = data['data']
        .where((item) => item['schoolName'].contains('가천'))
        .toList();
    print('newone ==========${filteredData}');
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
    // fetchDataSchool();
  }

  @override
  void dispose() {
    _userStudentIdTextEditController.dispose();
    super.dispose();
  }

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
                      contentPadding: EdgeInsets.symmetric(
                          horizontal: 20.w, vertical: 20.h),
                      hintText: '학번을 작성해주세요',
                      hintStyle: TextStyle(
                        color: MIXIN_BLACK_4,
                        fontSize: 16.0.sp,
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
                        borderSide: BorderSide(
                          color: MIXIN_BLACK_5,
                          width: 1.5.w,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8.0.r),
                        borderSide: BorderSide(
                          color: MIXIN_BLACK_5,
                          width: 1.5.w,
                        ),
                      ).copyWith(
                        borderSide: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8.r),
                          borderSide: BorderSide(
                            color: MIXIN_BLACK_5,
                            width: 1.5.w,
                          ),
                        ).borderSide,
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
                    side: BorderSide(width: 1.5.w, color: MIXIN_BLACK_5),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0.r),
                    ),
                    elevation: 0.0,
                  ),
                  child: Container(
                    alignment: Alignment.centerLeft,
                    width: 342.w,
                    height: 56.h,
                    child: Text(
                      userUniversity.isEmpty ? '대학교를 선택해주세요' : userUniversity,
                      style: TextStyle(
                        color: userUniversity.isEmpty
                            ? MIXIN_BLACK_4
                            : MIXIN_BLACK_1,
                        fontSize: 16.sp,
                        fontFamily: 'SUIT',
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  onPressed: () async {
                    final dataSchool = await dio.get(serverSchoolUrl);
                    if (!mounted) return;
                    showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return SingleChildScrollView(
                            child: AlertDialog(
                              contentPadding: EdgeInsets.symmetric(
                                  horizontal: 7.w, vertical: 8.h),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(24.0.r),
                              ),
                              title: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
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
                                      setState(() {
                                        schoolNames.clear();
                                        schoolAddress.clear();
                                      });
                                      Navigator.pop(context);
                                    },
                                    icon: Image.asset(
                                      'assets/images/icons/close_icon_black_3x.png',
                                      width: 26.w,
                                      color: MIXIN_BLACK_1,
                                    ),
                                  ),
                                ],
                              ),
                              content: Column(
                                children: [
                                  Container(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 12.w),
                                    width: 294.0.w,
                                    height: 48.0.h,
                                    child: TextFormField(
                                        cursorColor: Colors.grey,
                                        obscureText: false,
                                        autofocus: false,
                                        decoration: InputDecoration(
                                          suffixIcon: Padding(
                                            padding:
                                                EdgeInsets.only(top: 4.0.h),
                                            child: IconButton(
                                              onPressed: () {
                                                setState(() {});
                                              },
                                              icon: Image.asset(
                                                'assets/images/icon_search.png',
                                                color: MIXIN_POINT_COLOR,
                                              ),
                                            ),
                                          ),
                                          contentPadding: EdgeInsets.symmetric(
                                              vertical: 0.0,
                                              horizontal: 12.0.w),
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
                                                BorderRadius.circular(8.0.r),
                                            borderSide: const BorderSide(
                                              color: MIXIN_BLACK_4,
                                              width: 1,
                                            ),
                                          ),
                                          enabledBorder: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(8.0.r),
                                            borderSide: BorderSide(
                                              color: MIXIN_BLACK_4,
                                              width: 1.w,
                                            ),
                                          ),
                                        ),
                                        onChanged: (value) {
                                          setState(() {
                                            selectSchool = value;
                                            Map<String, dynamic> data =
                                                dataSchool.data;
                                            List<dynamic> filteredNameData =
                                                data['data']
                                                    .where((item) => item[
                                                                'schoolName']
                                                            .contains(
                                                                selectSchool)
                                                        as bool)
                                                    .toList();

                                            schoolNames = filteredNameData
                                                .map((item) =>
                                                    item['schoolName']
                                                        as String)
                                                .toList();

                                            schoolAddress = filteredNameData
                                                .map((item) =>
                                                    item['address'] != null
                                                        ? item['address']
                                                            as String
                                                        : '정보없음')
                                                .toList();
                                          });
                                        }),
                                  ),
                                  SizedBox(height: 12.h),
                                  SizedBox(
                                    width: 320.0.w,
                                    height: 550.h,
                                    child: ListView.builder(
                                      padding: EdgeInsets.zero,
                                      itemCount: schoolNames.length,
                                      itemBuilder:
                                          (BuildContext context, int index) {
                                        return SizedBox(
                                          height: 70.h,
                                          width: 294.0.w,
                                          child: ListTile(
                                            title: Text(
                                              schoolNames[index],
                                              style: TextStyle(
                                                  fontFamily: 'SUIT',
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: 16.sp,
                                                  color: MIXIN_BLACK_1),
                                            ),
                                            subtitle: Text(
                                              schoolAddress[index].isEmpty
                                                  ? '정보없음'
                                                  : schoolAddress[index],
                                              style: TextStyle(
                                                fontFamily: 'SUIT',
                                                fontWeight: FontWeight.w500,
                                                fontSize: 12.sp,
                                                color: MIXIN_BLACK_3,
                                              ),
                                            ),
                                            trailing: SizedBox(
                                              width: 70.w,
                                              height: 32.h,
                                              child: ElevatedButton(
                                                style: ElevatedButton.styleFrom(
                                                    backgroundColor:
                                                        MIXIN_POINT_COLOR,
                                                    shape:
                                                        RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8.r),
                                                    ),
                                                    padding: EdgeInsets.zero),
                                                onPressed: () {
                                                  userUniversity =
                                                      schoolNames[index];
                                                  print(
                                                      'userUniversity = $userUniversity');
                                                  setState(() {
                                                    schoolNames.clear();
                                                    schoolAddress.clear();
                                                  });
                                                  Navigator.pop(context);
                                                },
                                                child: Text(
                                                  '선택하기',
                                                  style: TextStyle(
                                                    fontFamily: 'SUIT',
                                                    fontWeight: FontWeight.w500,
                                                    fontSize: 14.sp,
                                                    color: WHITE,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        );
                                      },
                                    ),
                                  ),
                                ],
                              ),
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
                    backgroundColor: Colors.transparent,
                    side: BorderSide(width: 1.5.w, color: MIXIN_BLACK_5),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0.r),
                    ),
                    elevation: 0.0,
                  ),
                  onPressed: () async {
                    final dataDepartment = await dio.get(serverDepartmentUrl);
                    Map<String, dynamic> data = dataDepartment.data;
                    List<dynamic> colleges = data['data']['colleges'];

                    print('학과데이터 : ${dataDepartment.data}');
                    if (!mounted) return;
                    showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return SingleChildScrollView(
                            child: AlertDialog(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(24.0.r),
                              ),
                              title: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    '학과 검색하기',
                                    style: TextStyle(
                                      fontFamily: 'SUIT',
                                      fontWeight: FontWeight.w600,
                                      fontSize: 24.0.sp,
                                      color: MIXIN_BLACK_1,
                                    ),
                                  ),
                                  IconButton(
                                    onPressed: () {
                                      setState(() {
                                        selectDepartment = '';
                                        filteredDepartments.clear();
                                        collegeNames.clear();
                                      });
                                      Navigator.pop(context);
                                    },
                                    icon: Image.asset(
                                      'assets/images/icons/close_icon_black_3x.png',
                                      width: 26.w,
                                      color: MIXIN_BLACK_1,
                                    ),
                                  ),
                                ],
                              ),
                              content: Column(
                                children: [
                                  Container(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 12.w),
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
                                              'assets/images/icon_search.png'),
                                        ),
                                        contentPadding: EdgeInsets.symmetric(
                                            vertical: 0.0, horizontal: 12.0.w),
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
                                              BorderRadius.circular(8.0.r),
                                          borderSide: const BorderSide(
                                            color: MIXIN_BLACK_4,
                                            width: 1,
                                          ),
                                        ),
                                        enabledBorder: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(8.0.r),
                                          borderSide: const BorderSide(
                                            color: MIXIN_BLACK_4,
                                            width: 1,
                                          ),
                                        ),
                                      ),
                                      onChanged: (value) {
                                        setState(() {
                                          selectDepartment = value;
                                          Map<String, String>
                                              departmentCollegeMap = {};

                                          // departmentName과 collegeName 매칭하기
                                          for (var college in colleges) {
                                            List<dynamic> departments =
                                                college['departments'];
                                            for (var department
                                                in departments) {
                                              String departmentName =
                                                  department['departmentName'];
                                              String collegeName =
                                                  college['collegeName'];
                                              departmentCollegeMap[
                                                  departmentName] = collegeName;
                                            }
                                          }

                                          // departmentName 필터링하기
                                          filteredDepartments
                                              .clear(); // 새로운 검색을 위해 리스트 초기화

                                          for (var departmentName
                                              in departmentCollegeMap.keys) {
                                            if (departmentName
                                                .contains(selectDepartment)) {
                                              filteredDepartments
                                                  .add(departmentName);
                                            }
                                          }
                                          // 매칭된 collegeName 가져오기
                                          collegeNames
                                              .clear(); // 새로운 검색을 위해 리스트 초기화

                                          for (var departmentName
                                              in filteredDepartments) {
                                            String? collegeName =
                                                departmentCollegeMap[
                                                    departmentName];
                                            collegeNames.add(collegeName!);
                                          }
                                          print(
                                              '----------------\n$collegeNames');
                                          print(
                                              '----------------\n$filteredDepartments');
                                        });
                                      },
                                    ),
                                  ),
                                  SizedBox(height: 12.h),
                                  SizedBox(
                                    width: 320.0.w,
                                    height: 550.h,
                                    child: ListView.builder(
                                      padding: EdgeInsets.zero,
                                      itemCount: filteredDepartments.length,
                                      itemBuilder:
                                          (BuildContext context, int index) {
                                        return SizedBox(
                                          height: 70.h,
                                          width: 294.0.w,
                                          child: ListTile(
                                            title: Text(
                                              filteredDepartments[index],
                                              style: TextStyle(
                                                  fontFamily: 'SUIT',
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: 16.sp,
                                                  color: MIXIN_BLACK_1),
                                            ),
                                            subtitle: Text(
                                              collegeNames[index].isEmpty
                                                  ? '정보없음'
                                                  : collegeNames[index],
                                              style: TextStyle(
                                                fontFamily: 'SUIT',
                                                fontWeight: FontWeight.w500,
                                                fontSize: 12.sp,
                                                color: MIXIN_BLACK_3,
                                              ),
                                            ),
                                            trailing: SizedBox(
                                              width: 70.w,
                                              height: 32.h,
                                              child: ElevatedButton(
                                                style: ElevatedButton.styleFrom(
                                                    backgroundColor:
                                                        MIXIN_POINT_COLOR,
                                                    shape:
                                                        RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8.r),
                                                    ),
                                                    padding: EdgeInsets.zero),
                                                onPressed: () {
                                                  userDepartment =
                                                      filteredDepartments[
                                                          index];
                                                  print(
                                                      'userUniversity = $userDepartment');
                                                  setState(() {
                                                    selectDepartment = '';
                                                    filteredDepartments.clear();
                                                    collegeNames.clear();
                                                  });
                                                  Navigator.pop(context);
                                                },
                                                child: Text(
                                                  '선택하기',
                                                  style: TextStyle(
                                                    fontFamily: 'SUIT',
                                                    fontWeight: FontWeight.w500,
                                                    fontSize: 14.sp,
                                                    color: WHITE,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        );
                                      },
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          );
                        });
                  },
                  child: Container(
                    alignment: Alignment.centerLeft,
                    width: 342.w,
                    height: 56.h,
                    child: Text(
                      userDepartment.isEmpty ? '학과를 선택해주세요' : userDepartment,
                      style: TextStyle(
                        color: userDepartment.isEmpty
                            ? MIXIN_BLACK_4
                            : MIXIN_BLACK_1,
                        fontSize: 16.sp,
                        fontFamily: 'SUIT',
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 216.h),
                Center(
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: MIXIN_POINT_COLOR,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0.r),
                      ),
                      elevation: 0.0,
                    ),
                    onPressed: () async {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                            builder: (context) => const SignUpScreenEmail()),
                      );
                      await storage.write(
                          key: 'userStudentId', value: userStudentId);
                      await storage.write(
                          key: 'userUniversity', value: userUniversity);
                      await storage.write(
                          key: 'userDepartment', value: userDepartment);
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
