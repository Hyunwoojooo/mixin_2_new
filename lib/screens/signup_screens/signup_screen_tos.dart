import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:mixin_2/layout/text_layout.dart';
import 'package:mixin_2/const/term_of_service_text/progress_text.dart';
import 'package:mixin_2/layout/custom_floating_action_button.dart';
import 'package:mixin_2/screens/signup_screens/signup_screen_namephone.dart';
import '../../const/colors.dart';
import '../terms_of_use_screen/ad_ifm_term_screen.dart';
import '../terms_of_use_screen/community_use_term_screen.dart';
import '../terms_of_use_screen/personal_ifm_term_screen.dart';
import '../terms_of_use_screen/service_use_term_screen.dart';

class SignUpScreen1 extends StatefulWidget {
  const SignUpScreen1({Key? key}) : super(key: key);

  @override
  State<SignUpScreen1> createState() => _SignUpScreen1State();
}

class _SignUpScreen1State extends State<SignUpScreen1> {
  AndroidOptions _getAndroidOptions() => const AndroidOptions(
    encryptedSharedPreferences: true,
  );
  final storage = FlutterSecureStorage();



  List<bool> isMaintainChecked = [false, false, false, false, false];
  bool isTotalChecked = false;
  bool isServiceUserChecked = false;
  bool isPersonalIfmChecked = false;
  bool isCommunityChecked = false;
  bool isAdIfmChecked = false;
  bool isProgressChecked = false;
  bool isAgeChecked = false;
  bool nextButtonColor = false;
  String isAdIfmCheckedText = 'ㄷㄷㄷ';
  String aa = 'aaaaa';

  void changeData() {
    if (isMaintainChecked[0] == true &&
        isMaintainChecked[1] == true &&
        isMaintainChecked[2] == true &&
        isMaintainChecked[3] == true &&
        isMaintainChecked[4] == true) {
      nextButtonColor = true;
    } else {
      nextButtonColor = false;
    }
  }

  ProgressText progressText = ProgressText();
  String progressTextMain = ProgressText().progressText;
  String ageTextMain = ProgressText().ageText;

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
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: CustomFloatingActionButton(
        text: '다음',
        fillColor: nextButtonColor == true ? MIXIN_POINT_COLOR : MIXIN_BLACK_4,
          onPressed: () async {
            if (nextButtonColor == true) {
              Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => SignUpScreenNamePhone())
                );
              print('광고성 약관 : $isAdIfmCheckedText');
            } else {}
          },
      ),
      body: SingleChildScrollView(
        keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 29.0),
              const HeadlineText(text: '믹스인이 처음이신가요?\n이용약관 동의가 필요해요!'),
              const SizedBox(height: 50),
              Row(
                children: [
                  Transform.scale(
                    scale: 1.3,
                    child: Checkbox(
                      activeColor: MIXIN_POINT_COLOR,
                      hoverColor: Colors.purple,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      value: (nextButtonColor == true && isAdIfmChecked == true)
                          ? true
                          : isTotalChecked,
                      onChanged: (bool? value) {
                        setState(() {
                          isTotalChecked = value!;
                          isServiceUserChecked = value;
                          isPersonalIfmChecked = value;
                          isCommunityChecked = value;
                          isAdIfmChecked = value;
                          isProgressChecked = value;
                          isAgeChecked = value;
                          isMaintainChecked[0] = value;
                          isMaintainChecked[1] = value;
                          isMaintainChecked[2] = value;
                          isMaintainChecked[3] = value;
                          isMaintainChecked[4] = value;
                          if(isAdIfmChecked == true) {
                            isAdIfmCheckedText = '동의';
                          } else if(isAdIfmChecked == false){
                            isAdIfmCheckedText = '비동의';
                          }
                          storage.write(key: 'isAdIfmChecked', value: isAdIfmCheckedText);
                          changeData();
                        });
                      },
                    ),
                  ),
                  const Text(
                    '약관 정책동의',
                    style: TextStyle(
                      color: MIXIN_BLACK_1,
                      fontFamily: 'SUIT',
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
              const Divider(
                thickness: 1.0,
                color: MIXIN_BLACK_5,
              ),
              const SizedBox(height: 15.0),
              Column(
                children: [
                  SizedBox(
                    height: 25.0,
                    child: Row(
                      children: [
                        Transform.scale(
                          scale: 0.9,
                          child: Checkbox(
                            activeColor: MIXIN_POINT_COLOR,
                            value: isServiceUserChecked,
                            onChanged: (bool? value) {
                              setState(() {
                                isServiceUserChecked = value!;
                                isMaintainChecked[0] = value;
                                changeData();
                                print('main[0] = ${nextButtonColor}');
                              });
                            },
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5.0)),
                          ),
                        ),
                        const Text(
                          '서비스이용약관 동의 (필수)',
                          style: TextStyle(
                            color: MIXIN_BLACK_1,
                            fontFamily: 'SUIT',
                            fontSize: 14.0,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        const SizedBox(width: 120.0),
                        IconButton(
                          padding: EdgeInsets.zero,
                          constraints: BoxConstraints(),
                          highlightColor: Colors.transparent,
                          splashColor: Colors.transparent,
                          iconSize: 18.0,
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ServiceUseTerm()),
                            );
                          },
                          icon: const Icon(
                            Icons.arrow_forward_ios,
                          ),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(height: 10.0),
                  SizedBox(
                    height: 25.0,
                    child: Row(
                      children: [
                        Transform.scale(
                          scale: 0.9,
                          child: Checkbox(
                            activeColor: MIXIN_POINT_COLOR,
                            value: isPersonalIfmChecked,
                            onChanged: (bool? value) {
                              setState(() {
                                isPersonalIfmChecked = value!;
                                isMaintainChecked[1] = value;
                                changeData();
                                print('main[1] = ${isMaintainChecked[1]}');
                              });
                            },
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5.0)),
                          ),
                        ),
                        const Text(
                          '개인정보처리방침 동의 (필수)',
                          style: TextStyle(
                            color: MIXIN_BLACK_1,
                            fontFamily: 'SUIT',
                            fontSize: 14.0,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        const SizedBox(
                          width: 106.0,
                        ),
                        IconButton(
                          padding: EdgeInsets.zero,
                          constraints: BoxConstraints(),
                          highlightColor: Colors.transparent,
                          splashColor: Colors.transparent,
                          iconSize: 18.0,
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => PersonalIfmterm()),
                            );
                          },
                          icon: Icon(
                            Icons.arrow_forward_ios,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 10.0),
                  SizedBox(
                    height: 25.0,
                    child: Row(
                      children: [
                        Transform.scale(
                          scale: 0.9,
                          child: Checkbox(
                            activeColor: MIXIN_POINT_COLOR,
                            value: isCommunityChecked,
                            onChanged: (bool? value) {
                              setState(() {
                                isCommunityChecked = value!;
                                isMaintainChecked[2] = value;
                                changeData();
                                print('main[2] = ${isMaintainChecked[2]}');
                              });
                            },
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5.0)),
                          ),
                        ),
                        const Text(
                          '커뮤니티이용규칙 확인 (필수)',
                          style: TextStyle(
                            color: MIXIN_BLACK_1,
                            fontFamily: 'SUIT',
                            fontSize: 14.0,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        const SizedBox(
                          width: 106.0,
                        ),
                        IconButton(
                            padding: EdgeInsets.zero,
                            constraints: BoxConstraints(),
                            highlightColor: Colors.transparent,
                            splashColor: Colors.transparent,
                            iconSize: 18.0,
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => CommunityUseTerm()),
                              );
                            },
                            icon: Icon(Icons.arrow_forward_ios))
                      ],
                    ),
                  ),
                  const SizedBox(height: 10.0),
                  SizedBox(
                    height: 25.0,
                    child: Row(
                      children: [
                        Transform.scale(
                          scale: 0.9,
                          child: Checkbox(
                            activeColor: MIXIN_POINT_COLOR,
                            value: isAdIfmChecked,
                            onChanged: (bool? value) async{
                              setState(() {
                                isAdIfmChecked = value!;
                                if(isAdIfmChecked == true) {
                                  isAdIfmCheckedText = '동의';
                                } else if(isAdIfmChecked == false){
                                  isAdIfmCheckedText = '비동의';
                                }
                              });
                              storage.write(key: 'isAdIfmChecked', value: isAdIfmCheckedText);
                              setState(() {

                              });
                            },
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5.0)),
                          ),
                        ),
                        const Text(
                          '광고성 정보 수신 동의 (선택)',
                          style: TextStyle(
                            color: MIXIN_BLACK_1,
                            fontFamily: 'SUIT',
                            fontSize: 14.0,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        const SizedBox(
                          width: 112.0,
                        ),
                        IconButton(
                          padding: EdgeInsets.zero,
                          constraints: BoxConstraints(),
                          highlightColor: Colors.transparent,
                          splashColor: Colors.transparent,
                          iconSize: 18.0,
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => AdIfmTerm()),
                            );
                          },
                          icon: const Icon(
                            Icons.arrow_forward_ios,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 34),
                  SizedBox(
                    height: 25.0,
                    child: Row(
                      children: [
                        Transform.scale(
                          scale: 0.9,
                          child: Checkbox(
                            activeColor: MIXIN_POINT_COLOR,
                            value: isProgressChecked,
                            onChanged: (bool? value) {
                              setState(() {
                                isProgressChecked = value!;
                                isMaintainChecked[3] = value;
                                changeData();
                                print('main[3] = ${isMaintainChecked[3]}');
                              });
                            },
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5.0)),
                          ),
                        ),
                        const Text(
                          '본인 명의를 이용하여 가입을 진행하겠습니다.',
                          style: TextStyle(
                            color: MIXIN_BLACK_1,
                            fontFamily: 'SUIT',
                            fontSize: 16.0,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        const SizedBox(height: 15),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(12, 12, 0, 0),
                    child: Container(
                      padding: const EdgeInsets.all(12.0),
                      decoration: BoxDecoration(
                          color: const Color(0xFFF2F3F7),
                          borderRadius: BorderRadius.circular(8.0),
                          border: Border.all(
                              color: const Color(0xFFCED0D5), width: 1.0)),
                      width: 342,
                      height: 100,
                      child: Text(
                        '${progressTextMain}',
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 12.0,
                          fontFamily: 'SUIT',
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 34.0),
                  Container(
                    height: 25.0,
                    child: Row(
                      children: [
                        Transform.scale(
                          scale: 0.9,
                          child: Checkbox(
                            activeColor: MIXIN_POINT_COLOR,
                            value: isAgeChecked,
                            onChanged: (bool? value) {
                              setState(() {
                                isAgeChecked = value!;
                                isMaintainChecked[4] = value;
                                changeData();
                                print('main[4] = ${isMaintainChecked[4]}');
                              });
                            },
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5.0)),
                          ),
                        ),
                        const Text(
                          '만 14세 이상입니다.',
                          style: TextStyle(
                            color: MIXIN_BLACK_1,
                            fontFamily: 'SUIT',
                            fontSize: 16.0,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        const SizedBox(height: 15),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(12, 12, 0, 0),
                    child: Container(
                      padding: const EdgeInsets.all(12.0),
                      decoration: BoxDecoration(
                          color: const Color(0xFFF2F3F7),
                          borderRadius: BorderRadius.circular(8.0),
                          border: Border.all(
                              color: const Color(0xFFCED0D5), width: 1.0)),
                      width: 342,
                      height: 60,
                      child: Text(
                        '${ageTextMain}',
                        style: const TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 12.0,
                          fontFamily: 'SUIT',
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 100),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
