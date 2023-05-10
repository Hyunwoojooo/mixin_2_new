import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:dio/dio.dart';
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
            CustomTextFormField(
              hintText: '비밀번호를 입력해주세요',
              obscrueText: false,
              onChanged: (String value) {
                userPassword = value;
                setState(() {});
              },
            ),
            const SizedBox(height: 24.0),
            const InfoText(text: '비밀번호 확인'),
            const SizedBox(height: 12.0),
            CustomTextFormField(
              hintText: '비밀번호를 입력해주세요',
              obscrueText: false,
              onChanged: (String value) {
                userPasswordCheck = value;
                setState(() {});
              },
            ),
            const SizedBox(height: 24.0),
            Row(
              children: [
                Icon(Icons.check_rounded, size: 18.0, color: userPassword.length >= 8 && userPassword.length <= 16
                    ? MIXIN_POINT_COLOR
                    : MIXIN_BLACK_4,),
                SizedBox(
                  width: 10,
                ),
                Text(
                  '8~16자리 사이의 비밀번호를 구성',
                  style: TextStyle(
                    fontFamily: 'SUIT',
                    fontWeight: FontWeight.w500,
                    fontSize: 12.0,
                    color: userPassword.length >= 8 && userPassword.length <= 16
                        ? MIXIN_POINT_COLOR
                        : MIXIN_BLACK_4,
                  ),
                )
              ],
            ),
            const SizedBox(height: 8.0),
            Row(
              children: [
                Icon(Icons.check_rounded, size: 18.0, color: MIXIN_POINT_COLOR),
                SizedBox(
                  width: 10,
                ),
                Text(
                  '영문 대소문자/숫자 포함',
                  style: TextStyle(
                      fontFamily: 'SUIT',
                      fontWeight: FontWeight.w500,
                      fontSize: 12.0,
                      color: MIXIN_POINT_COLOR),
                )
              ],
            ),
            const SizedBox(height: 8.0,),
            Row(
                children: [
                Icon(Icons.check_rounded, size: 18.0,
                color: userPassword == userPasswordCheck && userPassword.isNotEmpty && userPasswordCheck.isNotEmpty
                    ? MIXIN_POINT_COLOR
                    : MIXIN_BLACK_4),
          SizedBox(
            width: 10,
          ),
          Text(
            '비밀번호 일치',
            style: TextStyle(
                fontFamily: 'SUIT',
                fontWeight: FontWeight.w500,
                fontSize: 12.0,
                color: userPassword == userPasswordCheck && userPassword.isNotEmpty && userPasswordCheck.isNotEmpty
                    ? MIXIN_POINT_COLOR
                    : MIXIN_BLACK_4),
          )
          ],
        ),
        const SizedBox(height: 180),
        Center(
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: MIXIN_POINT_COLOR,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0)),
                elevation: 0.0),
            onPressed: () async {
              Dio dio = Dio();

              String? agradInfrm = await storage.read(key: 'isAdIfmChecked');
              print('광고성 : $agradInfrm');
              String? userName = await storage.read(key: 'userName');
              print('이름 : $userName');
              String? userGender = await storage.read(key: 'userGender');
              print('성별 : $userGender');
              String? userPhoneNumber = await storage.read(key: 'userPhoneNumber');
              print('휴대폰 번호 : $userPhoneNumber');
              String? userCarrier = await storage.read(key: 'userAgent');
              print('통신사 : $userCarrier');
              String? userStudentId = await storage.read(key: 'userStudentId');
              print('학번 : $userStudentId');
              String? userUniversity = await storage.read(key: 'userUniversity');
              print('대학교 : $userUniversity');
              String? userDepartment = await storage.read(key: 'userDepartment');
              print('학과 : $userDepartment');
              String? userEmail = await storage.read(key: 'userEmail');
              print('이메일 : $userEmail');
              print('비밀번호 : $userPassword');

              final Response resp = await dio.post(serverUrl, data: {
                "agradInfrm" : agradInfrm,
                "userName" : userName,
                "userGender" : userGender,
                "userPhoneNumber" : userPhoneNumber,
                "userCarrier" : userCarrier,
                "userStudentId" : userStudentId,
                "userUniversity" : userUniversity,
                "userDepartment" : userDepartment,
                "userEmail" : userEmail,
                "userPassword" : userPassword,
              });
              final Response resp1 = await dio.get(serverUrl);
              print(resp1);
              print(resp);

              Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => const LoginScreen()),
              );
            },
            child: SizedBox(
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
    ),)
    ,
    )
    ,
    );
  }
}
