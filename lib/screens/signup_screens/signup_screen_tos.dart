import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
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

/*
  FloatingActionButton에 blur 처리가 되어있는데 있는게 맞나 없는게 맞나 물어봐야 됨 O
  세부사항으로 들어가서 '확인하고 동의' 눌렀을 때 동의 버튼 체크 O
  세부사항으로 들어가면 글자 행간 간격을 좀 벌렸으면 좋겠다 O
 */

class SignUpTosScreen extends StatefulWidget {
  const SignUpTosScreen({Key? key}) : super(key: key);

  @override
  State<SignUpTosScreen> createState() => _SignUpTosScreenState();
}

class _SignUpTosScreenState extends State<SignUpTosScreen> {
  AndroidOptions _getAndroidOptions() => const AndroidOptions(
        encryptedSharedPreferences: true,
      );
  final storage = const FlutterSecureStorage();

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
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60.h),
        child: AppBar(
          backgroundColor: Colors.white,
          elevation: 0.0,
          titleSpacing: -35.w,
          title: GestureDetector(
            child: Column(
              children: [
                SizedBox(height: 20.h),
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
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: CustomFloatingActionButton(
        text: '다음',
        fillColor: nextButtonColor == true ? MIXIN_POINT_COLOR : MIXIN_BLACK_4,
        onPressed: () async {
          if (nextButtonColor == true) {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => SignUpScreenNamePhone(),
              ),
            );
            print('광고성 약관 : $isAdIfmCheckedText');
          } else {}

          // Navigator.of(context).push(
          //   MaterialPageRoute(
          //     builder: (context) => SignUpScreenNamePhone(),
          //   ),
          // );
        },
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(height: 25.0.h),
              const HeadlineText(text: '믹스인이 처음이신가요?\n이용약관 동의가 필요해요!'),
              SizedBox(height: 50.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Transform.scale(
                    scale: 1.2.w,
                    child: SizedBox(
                      width: 20.w,
                      height: 20.w,
                      child: Checkbox(
                        activeColor: MIXIN_POINT_COLOR,
                        hoverColor: Colors.purple,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.r),
                        ),
                        value:
                            (nextButtonColor == true && isAdIfmChecked == true)
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
                            if (isAdIfmChecked == true) {
                              isAdIfmCheckedText = '동의';
                            } else if (isAdIfmChecked == false) {
                              isAdIfmCheckedText = '비동의';
                            }
                            storage.write(
                                key: 'isAdIfmChecked',
                                value: isAdIfmCheckedText);
                            changeData();
                          });
                        },
                      ),
                    ),
                  ),
                  SizedBox(width: 12.w),
                  Text(
                    '약관 정책동의',
                    style: TextStyle(
                      color: MIXIN_BLACK_1,
                      fontFamily: 'SUIT',
                      fontSize: 18.sp,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 15.h),
              const Divider(
                thickness: 1.0,
                color: MIXIN_BLACK_5,
              ),
              SizedBox(height: 19.0.h),
              Column(
                children: [
                  // 서비스이용약관
                  SizedBox(
                    height: 18.0.h,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Transform.scale(
                              scale: 0.9.w,
                              child: SizedBox(
                                width: 18.w,
                                height: 18.w,
                                child: Checkbox(
                                  activeColor: MIXIN_POINT_COLOR,
                                  value: isServiceUserChecked,
                                  onChanged: (bool? value) {
                                    setState(() {
                                      isServiceUserChecked = value!;
                                      isMaintainChecked[0] = value;
                                      changeData();
                                      print(
                                        'main[0] = $nextButtonColor',
                                      );
                                    });
                                  },
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(5.0),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(width: 8.w),
                            Text(
                              '서비스이용약관 동의 (필수)',
                              style: TextStyle(
                                color: MIXIN_BLACK_1,
                                fontFamily: 'SUIT',
                                fontSize: 14.0.sp,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                        IconButton(
                          padding: EdgeInsets.zero,
                          constraints: const BoxConstraints(),
                          highlightColor: Colors.transparent,
                          splashColor: Colors.transparent,
                          iconSize: 18.0.w,
                          onPressed: () {
                            setState(() {
                              isServiceUserChecked = true;
                              print(
                                'main[0] = $nextButtonColor',
                              );
                            });
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => ServiceUseTerm(),
                              ),
                            );
                          },
                          icon: const Icon(Icons.arrow_forward_ios_rounded),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 15.0.h),
                  // 개인정보처리방침
                  SizedBox(
                    height: 18.0.h,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Transform.scale(
                              scale: 0.9.w,
                              child: SizedBox(
                                width: 18.w,
                                height: 18.w,
                                child: Checkbox(
                                  activeColor: MIXIN_POINT_COLOR,
                                  value: isPersonalIfmChecked,
                                  onChanged: (bool? value) {
                                    setState(() {
                                      isPersonalIfmChecked = value!;
                                      isMaintainChecked[1] = value;
                                      changeData();
                                      print(
                                          'main[1] = ${isMaintainChecked[1]}');
                                    });
                                  },
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(5.0)),
                                ),
                              ),
                            ),
                            SizedBox(width: 8.w),
                            Text(
                              '개인정보처리방침 동의 (필수)',
                              style: TextStyle(
                                color: MIXIN_BLACK_1,
                                fontFamily: 'SUIT',
                                fontSize: 14.0.sp,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                        IconButton(
                          padding: EdgeInsets.zero,
                          constraints: const BoxConstraints(),
                          highlightColor: Colors.transparent,
                          splashColor: Colors.transparent,
                          iconSize: 18.0.w,
                          onPressed: () {
                            setState(() {
                              isPersonalIfmChecked = true;
                            });
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => PersonalIfmterm()),
                            );
                          },
                          icon: const Icon(Icons.arrow_forward_ios_rounded),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 15.0.h),
                  // 커뮤니티이용규칙
                  SizedBox(
                    height: 18.0.h,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Transform.scale(
                              scale: 0.9.w,
                              child: SizedBox(
                                width: 18.w,
                                height: 18.h,
                                child: Checkbox(
                                  activeColor: MIXIN_POINT_COLOR,
                                  value: isCommunityChecked,
                                  onChanged: (bool? value) {
                                    setState(() {
                                      isCommunityChecked = value!;
                                      isMaintainChecked[2] = value;
                                      changeData();
                                      print(
                                          'main[2] = ${isMaintainChecked[2]}');
                                    });
                                  },
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(5.0)),
                                ),
                              ),
                            ),
                            SizedBox(width: 8.w),
                            Text(
                              '커뮤니티이용규칙 확인 (필수)',
                              style: TextStyle(
                                color: MIXIN_BLACK_1,
                                fontFamily: 'SUIT',
                                fontSize: 14.0.sp,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                        IconButton(
                            padding: EdgeInsets.zero,
                            constraints: const BoxConstraints(),
                            highlightColor: Colors.transparent,
                            splashColor: Colors.transparent,
                            iconSize: 18.0.w,
                            onPressed: () {
                              setState(() {
                                isCommunityChecked = true;
                              });
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => CommunityUseTerm()),
                              );
                            },
                            icon: const Icon(Icons.arrow_forward_ios_rounded))
                      ],
                    ),
                  ),
                  SizedBox(height: 15.0.h),
                  // 광고성 정보 수신
                  SizedBox(
                    height: 18.0.h,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Transform.scale(
                              scale: 0.9.w,
                              child: SizedBox(
                                width: 18.w,
                                height: 18.h,
                                child: Checkbox(
                                  activeColor: MIXIN_POINT_COLOR,
                                  value: isAdIfmChecked,
                                  onChanged: (bool? value) async {
                                    setState(() {
                                      isAdIfmChecked = value!;
                                      if (isAdIfmChecked == true) {
                                        isAdIfmCheckedText = '동의';
                                      } else if (isAdIfmChecked == false) {
                                        isAdIfmCheckedText = '비동의';
                                      }
                                    });
                                    storage.write(
                                        key: 'isAdIfmChecked',
                                        value: isAdIfmCheckedText);
                                    setState(() {});
                                  },
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(5.0)),
                                ),
                              ),
                            ),
                            SizedBox(width: 8.w),
                            Text(
                              '광고성 정보 수신 동의 (선택)',
                              style: TextStyle(
                                color: MIXIN_BLACK_1,
                                fontFamily: 'SUIT',
                                fontSize: 14.0.sp,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                        IconButton(
                          padding: EdgeInsets.zero,
                          constraints: const BoxConstraints(),
                          highlightColor: Colors.transparent,
                          splashColor: Colors.transparent,
                          iconSize: 18.0.w,
                          onPressed: () {
                            setState(() {
                              isAdIfmChecked = true;
                            });
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => AdIfmTerm()),
                            );
                          },
                          icon: const Icon(Icons.arrow_forward_ios_rounded),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 34.h),
                  // 본인 명의
                  SizedBox(
                    height: 20.0.h,
                    child: Row(
                      children: [
                        Transform.scale(
                          scale: 0.9.w,
                          child: SizedBox(
                            width: 18.w,
                            height: 18.h,
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
                        ),
                        SizedBox(
                          width: 8.w,
                        ),
                        Text(
                          '본인 명의를 이용하여 가입을 진행하겠습니다.',
                          style: TextStyle(
                            color: MIXIN_BLACK_1,
                            fontFamily: 'SUIT',
                            fontSize: 16.0.sp,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 15.h),
                  // 본인 명의 내용
                  Container(
                    padding: EdgeInsets.only(left: 12.w),
                    alignment: Alignment.centerLeft,
                    decoration: BoxDecoration(
                        color: const Color(0xFFF2F3F7),
                        borderRadius: BorderRadius.circular(8.0.r),
                        border: Border.all(
                            color: const Color(0xFFCED0D5), width: 1.0)),
                    width: 342.w,
                    height: 114.h,
                    child: Text(
                      progressTextMain,
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 13.sp,
                        fontFamily: 'SUIT',
                      ),
                    ),
                  ),
                  SizedBox(height: 34.0.h),
                  // 14세 이상
                  SizedBox(
                    height: 20.0.h,
                    child: Row(
                      children: [
                        Transform.scale(
                          scale: 0.9.w,
                          child: SizedBox(
                            width: 18.w,
                            height: 18.h,
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
                        ),
                        SizedBox(width: 8.w),
                        Text(
                          '만 14세 이상입니다.',
                          style: TextStyle(
                            color: MIXIN_BLACK_1,
                            fontFamily: 'SUIT',
                            fontSize: 16.0.sp,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 15.w),
                  // 14세 이상 내용
                  Container(
                    padding: EdgeInsets.only(left: 12.w, right: 12.w),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        color: const Color(0xFFF2F3F7),
                        borderRadius: BorderRadius.circular(8.0.r),
                        border: Border.all(
                            color: const Color(0xFFCED0D5), width: 1.0)),
                    width: 342.w,
                    height: 50.h,
                    child: Text(
                      ageTextMain,
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 12.0.sp,
                        fontFamily: 'SUIT',
                      ),
                    ),
                  ),
                  SizedBox(height: 10.h),
                  // ElevatedButton(
                  //   style: ElevatedButton.styleFrom(
                  //       backgroundColor: nextButtonColor == true ? MIXIN_POINT_COLOR : MIXIN_BLACK_4,
                  //       shape: RoundedRectangleBorder(
                  //           borderRadius: BorderRadius.circular(8.0)),
                  //       elevation: 0.0),
                  //   onPressed: () async {
                  //     if (nextButtonColor == true) {
                  //       Navigator.of(context).push(MaterialPageRoute(
                  //           builder: (context) => SignUpScreenNamePhone()));
                  //       print('광고성 약관 : $isAdIfmCheckedText');
                  //     } else {}
                  //   },
                  //   child: const SizedBox(
                  //     width: 342,
                  //     height: 56,
                  //     child: Center(
                  //       child: Text(
                  //         '다음',
                  //         style: TextStyle(
                  //           color: Colors.white,
                  //           fontSize: 18,
                  //           fontFamily: 'SUIT',
                  //           fontWeight: FontWeight.w600,
                  //         ),
                  //       ),
                  //     ),
                  //   ),
                  // ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
