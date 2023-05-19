import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

import '../../const/colors.dart';

class BackProfileCardScreen extends StatefulWidget {
  BackProfileCardScreen({Key? key}) : super(key: key);
  @override
  State<BackProfileCardScreen> createState() => _BackProfileCardScreenState();
}

class _BackProfileCardScreenState extends State<BackProfileCardScreen> {
  final storage = const FlutterSecureStorage();
  final PageController pageController = PageController(
    initialPage: 0,
  );
  int _currentPage = 0;

  late String? userPosition;
  late String? userPersonality;
  late String? userValues;
  List<bool> userPositionBool = [];
  List<bool> userPersonalityBool = [];
  List<bool> userValuesBool = [];


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _bringData();
    toBoolList(userPosition!);
    toBoolList(userPersonality!);
    toBoolList(userValues!);
  }

  List<bool> toBoolList(String string) {
    return json.decode(string).cast<bool>();
  }

  Future<void> _bringData() async {
    userPosition = await storage.read(key: 'userPosition');
    userPersonality = await storage.read(key: 'userPersonality');
    userValues = await storage.read(key: 'userValues');

  }

  List<String> userPositionText = [
    '나 빼고 결정하는건\n못참지',
    '리더형',
    '이 모임 분위기는\n내가 책임진다!',
    '분위기메이커형',
    '좋아좋아\n뭐든지 다 좋아~',
    '다좋아형',
    '당황하지 않아요\n침착하게..',
    '차분형',
  ];

  List<String> userPersonalityText = [
    '논쟁을 좋아하는',
    '평화를 좋아하는',
    '수줍음을 타는',
    '말주변이 좋은',
    '진지한',
    '장난끼가 많은',
    '계획적인',
    '즉흥적인',
    '느긋한',
    '성격이 급한',
    '파티를 좋아하는',
    '소수모임을 좋아하는',
    '단호한',
    '우유부단한',
    '감성적인',
    '이성적인'
  ];

  List<String> userValuesText = [
    '소통',
    '소통이 원활하게\n이루어지는 게 중요하지!',
    '열정',
    '모든 일의 시작은\n열정이 아니겠어?',
    '약속',
    '약속은 기본 매너 아니겠어?',
  ];



  @override
  Widget build(BuildContext context) {
    return Container(
      width: 342,
      height: 425,
      padding: EdgeInsets.fromLTRB(32, 29, 32, 32),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(23.0),
        color: Colors.white,
      ),
      child: ListView(
        children: [
          Row(
            children: [
              Container(
                width: 48,
                height: 48,
                decoration: const BoxDecoration(
                    shape: BoxShape.circle, color: Colors.grey),
              ),
              const SizedBox(width: 14.0),
              Text(
                '믹스인',
                style: TextStyle(
                  fontFamily: 'SUIT',
                  fontWeight: FontWeight.w600,
                  fontSize: 18.0,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 16.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TextButton(
                onPressed: () {
                  print(pageController.page);
                  print(userPosition);
                  print(userPosition.runtimeType);
                },
                child: Text(
                  '참여유형',
                  style: TextStyle(
                    fontFamily: 'SUIT',
                    fontWeight: FontWeight.w600,
                    fontSize: 16.0,
                    color: _currentPage == 0 ? MIXIN_47 : MIXIN_BLACK_4,
                  ),
                ),
              ),
              TextButton(
                onPressed: () {},
                child: Text(
                  '성격/특성',
                  style: TextStyle(
                    fontFamily: 'SUIT',
                    fontWeight: FontWeight.w600,
                    fontSize: 16.0,
                    color: _currentPage == 1 ? MIXIN_47 : MIXIN_BLACK_4,
                  ),
                ),
              ),
              TextButton(
                onPressed: () {
                },
                child: Text(
                  '가치관',
                  style: TextStyle(
                    fontFamily: 'SUIT',
                    fontWeight: FontWeight.w600,
                    fontSize: 16.0,
                    color: _currentPage == 2 ? MIXIN_47 : MIXIN_BLACK_4,
                  ),
                ),
              ),
            ],
          ),
          Container(
            height: 300,
            alignment: Alignment.center,
            padding: EdgeInsets.zero,
            child: PageView(
              controller: pageController,
              onPageChanged: (value){
                setState(() {
                  _currentPage = value;
                  print('value: $_currentPage');
                });
              },
              children: [
                Container(
                    width: 200,
                    height: 151,
                    color: Colors.white,
                    alignment: Alignment.center,
                    child: Container(
                      margin: EdgeInsets.only(bottom: 57),
                      width: 200,
                      height: 151,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        // gradient: LinearGradient(
                        //     colors: [MIXIN_2, Colors.white],
                        //   begin: Alignment.topLeft,
                        //   end: Alignment.bottomRight,
                        // ),
                        color: Color(0xFFDAF3F0),
                        boxShadow: [
                          BoxShadow(
                            color: MIXIN_POINT_COLOR,
                            blurRadius: 2.0,
                            offset: Offset(2, 4),
                          )
                        ],
                        borderRadius: BorderRadius.circular(36),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            '분위기메이커형',
                            style: TextStyle(
                              fontFamily: 'SUIT',
                              fontWeight: FontWeight.w600,
                              fontSize: 20.0,
                              color: MIXIN_POINT_COLOR,
                            ),
                          ),
                          const SizedBox(
                            height: 18.0,
                          ),
                          Text(
                            '이 모임 분위기는\n내가 책임진다!',
                            style: TextStyle(
                              fontFamily: 'SUIT',
                              fontWeight: FontWeight.w500,
                              fontSize: 14.0,
                              color: MIXIN_POINT_COLOR,
                            ),
                          )
                        ],
                      ),
                    )),
                Container(
                  padding: EdgeInsets.fromLTRB(10, 68, 42, 0),
                  height: 108,
                  width: 248,
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Text(
                            '나는',
                            style: TextStyle(
                              fontFamily: 'SUIT',
                              fontWeight: FontWeight.w600,
                              fontSize: 16.0,
                            ),
                          ),
                          SizedBox(
                            width: 14,
                          ),
                          Container(
                            width: 154,
                            height: 48,
                            decoration: BoxDecoration(
                              color: MIXIN_2,
                              borderRadius: BorderRadius.circular(30.0),
                            ),
                            alignment: Alignment.center,
                            child: Text(
                              '소수모임을 좋아하는',
                              style: TextStyle(
                                fontFamily: 'SUIT',
                                fontWeight: FontWeight.w500,
                                fontSize: 16.0,
                                color: Colors.white,
                              ),
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      Row(
                        children: [
                          SizedBox(
                            width: 10,
                          ),
                          Container(
                            width: 94,
                            height: 48,
                            decoration: BoxDecoration(
                              color: MIXIN_2,
                              borderRadius: BorderRadius.circular(30.0),
                            ),
                            alignment: Alignment.center,
                            child: Text(
                              '우유부단한',
                              style: TextStyle(
                                fontFamily: 'SUIT',
                                fontWeight: FontWeight.w500,
                                fontSize: 16.0,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Container(
                            width: 66,
                            height: 48,
                            decoration: BoxDecoration(
                              color: MIXIN_2,
                              borderRadius: BorderRadius.circular(30.0),
                            ),
                            alignment: Alignment.center,
                            child: Text(
                              '단호한',
                              style: TextStyle(
                                fontFamily: 'SUIT',
                                fontWeight: FontWeight.w500,
                                fontSize: 16.0,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 14,
                          ),
                          Text(
                            '사람',
                            style: TextStyle(
                              fontFamily: 'SUIT',
                              fontWeight: FontWeight.w600,
                              fontSize: 16.0,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                Container(
                    width: 200,
                    height: 151,
                    color: Colors.white,
                    alignment: Alignment.center,
                    child: Container(
                      margin: EdgeInsets.only(bottom: 57),
                      width: 200,
                      height: 151,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        // gradient: LinearGradient(
                        //     colors: [MIXIN_2, Colors.white],
                        //   begin: Alignment.topLeft,
                        //   end: Alignment.bottomRight,
                        // ),
                        color: Color(0xFFDAF3F0),
                        boxShadow: [
                          BoxShadow(
                            color: MIXIN_POINT_COLOR,
                            blurRadius: 2.0,
                            offset: Offset(2, 4),
                          )
                        ],
                        borderRadius: BorderRadius.circular(36),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            '소통',
                            style: TextStyle(
                              fontFamily: 'SUIT',
                              fontWeight: FontWeight.w600,
                              fontSize: 20.0,
                              color: MIXIN_POINT_COLOR,
                            ),
                          ),
                          const SizedBox(
                            height: 18.0,
                          ),
                          Text(
                            '소통이 원할하게\n이루어지는 게 중요하지!',
                            style: TextStyle(
                              fontFamily: 'SUIT',
                              fontWeight: FontWeight.w500,
                              fontSize: 14.0,
                              color: MIXIN_POINT_COLOR,
                            ),
                          )
                        ],
                      ),
                    )),
              ],
            ),
          )
        ],
      ),
    );
  }
}
