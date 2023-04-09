import 'package:flutter/material.dart';
import 'package:mixin_2/components/custom_textformfield.dart';
import 'package:mixin_2/const/term_of_service_text/progress_text.dart';
import 'package:mixin_2/screens/signup_screens/signup_screen_namephone.dart';
import 'package:mixin_2/terms_of_use/ad_ifm_term.dart';
import 'package:mixin_2/terms_of_use/community_use_term.dart';
import 'package:mixin_2/terms_of_use/service_use_term.dart';
import '../../const/colors.dart';
import '../../terms_of_use/personal_ifm_term.dart';

class SignUpScreen1 extends StatefulWidget {
  const SignUpScreen1({Key? key}) : super(key: key);
  @override
  State<SignUpScreen1> createState() => _SignUpScreen1State();

}

class _SignUpScreen1State extends State<SignUpScreen1> {

  List<bool> isMaintainChecked = [false, false, false, false, false];
  bool isTotalChecked = false;
  bool isServiceUserChecked = false;
  bool isPersonalIfmChecked = false;
  bool isCommunityChecked = false;
  bool isAdIfmChecked = false;
  bool isProgressChecked = false;
  bool isAgeChecked = false;
  bool nextButtonColor = false;

  void changeData (){
    if(isMaintainChecked[0] == true && isMaintainChecked[1] == true && isMaintainChecked[2] == true && isMaintainChecked[3] == true &&isMaintainChecked[4] == true ){
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
      floatingActionButton: Container(
        decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.white,
                spreadRadius: 0.0,
                blurRadius: 0.0,
              ),
            ]
        ),
        width: 342,
        height: 56,
        child: RawMaterialButton(
          fillColor: nextButtonColor == true ? MIXIN_POINT_COLOR : MIXIN_BLACK_4,
          elevation: 0.0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8.0),
          ),
          onPressed: () {
            if (nextButtonColor == true){
              Navigator.of(context).push(
                MaterialPageRoute(
                    builder: (context) => SignUpScreenNamePhone()),
              );
            } else {}
          },
          child: Text(
            '다음',
            style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontFamily: 'SUIT',
                fontWeight: FontWeight.w600
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 29.0,
              ),
              Container(
                child: Text(
                  '믹스인이 처음이신가요?\n이용약관 동의가 필요해요!',
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.w600,
                    fontFamily: 'SUIT',
                  ),
                ),
              ),
              const SizedBox(
                height: 50,
              ),
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
                      value: (nextButtonColor == true && isAdIfmChecked == true) ? true : isTotalChecked,
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
                          changeData();
                        });
                      },
                    ),
                  ),
                  Text(
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
              Divider(
                thickness: 1.0,
                color: MIXIN_BLACK_5,
              ),
              const SizedBox(
              height: 15.0,
              ),
              Column(
                children: [
                  Container(
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
                        Text(
                          '서비스이용약관 동의 (필수)',
                          style: TextStyle(
                            color: MIXIN_BLACK_1,
                            fontFamily: 'SUIT',
                            fontSize: 14.0,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        const SizedBox(
                          width: 120.0,
                        ),
                        IconButton(
                          padding: EdgeInsets.zero,
                          constraints: BoxConstraints(),
                          highlightColor: Colors.transparent,
                          splashColor: Colors.transparent,
                          iconSize: 18.0,
                            onPressed: (){
                            Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => ServiceUseTerm()),
                            );
                            },
                            icon: Icon(Icons.arrow_forward_ios),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  Container(
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
                        Text(
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
                            onPressed: (){
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => PersonalIfmterm()),
                              );
                            },
                            icon: Icon(Icons.arrow_forward_ios))
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  Container(
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
                        Text(
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
                            onPressed: (){
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => CommunityUseTerm()),
                              );
                            },
                            icon: Icon(Icons.arrow_forward_ios))
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  Container(
                    height: 25.0,
                    child: Row(
                      children: [
                        Transform.scale(
                          scale: 0.9,
                          child: Checkbox(
                            activeColor: MIXIN_POINT_COLOR,
                            value: isAdIfmChecked,
                            onChanged: (bool? value) {
                              setState(() {
                                isAdIfmChecked = value!;
                              });
                            },
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5.0)),
                          ),
                        ),
                        Text(
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
                            onPressed: (){
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => AdIfmTerm()),
                              );
                            },
                            icon: Icon(Icons.arrow_forward_ios))
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 34,
                  ),
                  Container(
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
                        Text(
                          '본인 명의를 이용하여 가입을 진행하겠습니다.',
                          style: TextStyle(
                            color: MIXIN_BLACK_1,
                            fontFamily: 'SUIT',
                            fontSize: 16.0,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(12, 12, 0, 0),
                    child: Container(
                      padding: EdgeInsets.all(12.0),
                      decoration: BoxDecoration(
                        color: Color(0xFFF2F3F7),
                        borderRadius: BorderRadius.circular(8.0),
                        border: Border.all(
                          color: Color(0xFFCED0D5),
                          width: 1.0
                        )
                      ),
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
                  const SizedBox(
                    height: 34.0,
                  ),
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
                        Text(
                          '만 14세 이상입니다.',
                          style: TextStyle(
                            color: MIXIN_BLACK_1,
                            fontFamily: 'SUIT',
                            fontSize: 16.0,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(12, 12, 0, 0),
                    child: Container(
                      padding: EdgeInsets.all(12.0),
                      decoration: BoxDecoration(
                          color: Color(0xFFF2F3F7),
                          borderRadius: BorderRadius.circular(8.0),
                          border: Border.all(
                              color: Color(0xFFCED0D5),
                              width: 1.0
                          )
                      ),
                      width: 342,
                      height: 60,
                      child: Text(
                        '${ageTextMain}',
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 12.0,
                          fontFamily: 'SUIT',
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 100,
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
