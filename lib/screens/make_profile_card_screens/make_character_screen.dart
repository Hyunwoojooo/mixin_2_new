import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:mixin_2/screens/make_profile_card_screens/make_introduce_screen.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../const/colors.dart';
import 'make_important_screen.dart';

class MakeCharacterScreen extends StatefulWidget {
  const MakeCharacterScreen({Key? key}) : super(key: key);

  @override
  State<MakeCharacterScreen> createState() => _MakeCharacterScreenState();
}

class _MakeCharacterScreenState extends State<MakeCharacterScreen> {

  List<bool> introduceList = List.filled(16, false);

  final PageController controller = PageController(initialPage: 0);

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
          decoration: const BoxDecoration(
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
            fillColor: introduceList.where((element) => element).length == 3 ? MIXIN_POINT_COLOR : MIXIN_BLACK_4,
            elevation: 0.0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8.0),
            ),
            onPressed: () {
              if (introduceList.where((element) => element).length == 3){
                Navigator.of(context).push(
                  MaterialPageRoute(
                      builder: (context) => MakeIntroduceScreen()),
                );
              } else {
                null;
              }
            },
            child: const Text(
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
          child: SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(
                    height: 29.0,
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        backgroundColor: MIXIN_BLACK_5,
                        radius: 12.0,
                        child: Text(
                          '1',
                          style: TextStyle(
                              fontFamily: 'SUIT',
                              fontWeight: FontWeight.w500,
                              fontSize: 14.0,
                              color: MIXIN_BLACK_4
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 12.0,
                      ),
                      CircleAvatar(
                        backgroundColor: MIXIN_POINT_COLOR,
                        radius: 12.0,
                        child: Text(
                          '2',
                          style: TextStyle(
                              fontFamily: 'SUIT',
                              fontWeight: FontWeight.w500,
                              fontSize: 14.0,
                              color: Colors.white
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 12.0,
                      ),
                      CircleAvatar(
                        backgroundColor: MIXIN_BLACK_5,
                        radius: 12.0,
                        child: Text(
                          '3',
                          style: TextStyle(
                              fontFamily: 'SUIT',
                              fontWeight: FontWeight.w500,
                              fontSize: 14.0,
                              color: MIXIN_BLACK_4
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 24.0,
                  ),
                  const Text(
                    '나를 3가지 단어로\n소개하자면?',
                    style: TextStyle(
                        fontFamily: 'SUIT',
                        fontWeight: FontWeight.w600,
                        fontSize: 24.0
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(
                    height: 12.0,
                  ),
                  Container(
                    width: 81,
                    height: 36,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(18.0),
                      color: MIXIN_BLACK_5,
                    ),
                    child: const Center(
                      child: Text(
                        '성격/특성',
                        style: TextStyle(
                          fontFamily: 'SUIT',
                          fontWeight: FontWeight.w500,
                          fontSize: 14.0,
                          color: Color(0xFF51B49F),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 54,
                  ),
                  Container(
                    width: 294,
                    height: 228,
                    child: PageView(
                      controller: controller,
                      children: [
                        Column(
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SizedBox(
                                  width: 138,
                                  height: 48,
                                  child: ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                          side: BorderSide(
                                              color: introduceList[0] == true ? MIXIN_2 : MIXIN_BLACK_5,
                                              width: 1.5
                                          ),
                                          shape: RoundedRectangleBorder(
                                              borderRadius: BorderRadius.circular(10.0)
                                          ),
                                          padding: EdgeInsets.zero,
                                          elevation: 0.0,
                                          backgroundColor: introduceList[0] == true ? MIXIN_ : Colors.white
                                      ),
                                      onPressed: (){
                                        setState(() {
                                          if (introduceList.where((element) => element).length == 3){
                                            null;
                                          } else{
                                            introduceList[0] = !introduceList[0];
                                          }
                                        });
                                      },
                                      child: Container(
                                        color: introduceList[0] == true ? MIXIN_ : Colors.white,
                                        child: const Text(
                                          '논쟁을 좋아하는',
                                          style: TextStyle(
                                              fontFamily: 'SUIT',
                                              fontWeight: FontWeight.w500,
                                              fontSize: 16.0,
                                              color: MIXIN_BLACK_1
                                          ),
                                          textAlign: TextAlign.center,
                                        ),
                                      )
                                  ),
                                ),
                                const SizedBox(
                                  width: 18.0,
                                ),
                                SizedBox(
                                  width: 138,
                                  height: 48,
                                  child: ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                          side: BorderSide(
                                              color: introduceList[1] == true ? MIXIN_2 : MIXIN_BLACK_5,
                                              width: 1.5
                                          ),
                                          shape: RoundedRectangleBorder(
                                              borderRadius: BorderRadius.circular(10.0)
                                          ),
                                          padding: EdgeInsets.zero,
                                          elevation: 0.0,
                                          backgroundColor: introduceList[1] == true ? MIXIN_ : Colors.white
                                      ),
                                      onPressed: (){
                                        setState(() {
                                          if (introduceList.where((element) => element).length == 3){
                                            null;
                                          } else{
                                            introduceList[1] = !introduceList[1];
                                          }
                                        });
                                      },
                                      child: Container(
                                        color: introduceList[1] == true ? MIXIN_ : Colors.white,
                                        child: const Text(
                                          '평화를 좋아하는',
                                          style: TextStyle(
                                              fontFamily: 'SUIT',
                                              fontWeight: FontWeight.w500,
                                              fontSize: 16.0,
                                              color: MIXIN_BLACK_1
                                          ),
                                          textAlign: TextAlign.center,
                                        ),
                                      )
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 12.0,
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SizedBox(
                                  width: 138,
                                  height: 48,
                                  child: ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                          side: BorderSide(
                                              color: introduceList[2] == true ? MIXIN_2 : MIXIN_BLACK_5,
                                              width: 1.5
                                          ),
                                          shape: RoundedRectangleBorder(
                                              borderRadius: BorderRadius.circular(10.0)
                                          ),
                                          padding: EdgeInsets.zero,
                                          elevation: 0.0,
                                          backgroundColor: introduceList[2] == true ? MIXIN_ : Colors.white
                                      ),
                                      onPressed: (){
                                        setState(() {
                                          if (introduceList.where((element) => element).length == 3){
                                            null;
                                          } else{
                                            introduceList[2] = !introduceList[2];
                                          }
                                        });
                                      },
                                      child: Container(
                                        color: introduceList[2] == true ? MIXIN_ : Colors.white,
                                        child: const Text(
                                          '수줍음을 타는',
                                          style: TextStyle(
                                              fontFamily: 'SUIT',
                                              fontWeight: FontWeight.w500,
                                              fontSize: 16.0,
                                              color: MIXIN_BLACK_1
                                          ),
                                          textAlign: TextAlign.center,
                                        ),
                                      )
                                  ),
                                ),
                                const SizedBox(
                                  width: 18.0,
                                ),
                                SizedBox(
                                  width: 138,
                                  height: 48,
                                  child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                        side: BorderSide(
                                            color: introduceList[3] == true ? MIXIN_2 : MIXIN_BLACK_5,
                                            width: 1.5
                                        ),
                                        shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(10.0)
                                        ),
                                        padding: EdgeInsets.zero,
                                        elevation: 0.0,
                                        backgroundColor: introduceList[3] == true ? MIXIN_ : Colors.white
                                    ),
                                    onPressed: (){
                                      setState(() {
                                        if (introduceList.where((element) => element).length == 3){
                                          null;
                                        } else{
                                          introduceList[3] = !introduceList[3];
                                        }
                                      });
                                    },
                                    child: Container(
                                      color: introduceList[3] == true ? MIXIN_ : Colors.white,
                                      child: const Text(
                                        '말주변이 좋은',
                                        style: TextStyle(
                                            fontFamily: 'SUIT',
                                            fontWeight: FontWeight.w500,
                                            fontSize: 16.0,
                                            color: MIXIN_BLACK_1
                                        ),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 12.0,
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SizedBox(
                                  width: 138,
                                  height: 48,
                                  child: ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                          side: BorderSide(
                                              color: introduceList[4] == true ? MIXIN_2 : MIXIN_BLACK_5,
                                              width: 1.5
                                          ),
                                          shape: RoundedRectangleBorder(
                                              borderRadius: BorderRadius.circular(10.0)
                                          ),
                                          padding: EdgeInsets.zero,
                                          elevation: 0.0,
                                          backgroundColor: introduceList[4] == true ? MIXIN_ : Colors.white
                                      ),
                                      onPressed: (){
                                        setState(() {
                                          if (introduceList.where((element) => element).length == 3){
                                            null;
                                          } else{
                                            introduceList[4] = !introduceList[4];
                                          }
                                        });
                                      },
                                      child: Container(
                                        color: introduceList[4] == true ? MIXIN_ : Colors.white,
                                        child: const Text(
                                          '진지한',
                                          style: TextStyle(
                                              fontFamily: 'SUIT',
                                              fontWeight: FontWeight.w500,
                                              fontSize: 16.0,
                                              color: MIXIN_BLACK_1
                                          ),
                                          textAlign: TextAlign.center,
                                        ),
                                      )
                                  ),
                                ),
                                const SizedBox(
                                  width: 18.0,
                                ),
                                SizedBox(
                                  width: 138,
                                  height: 48,
                                  child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                        side: BorderSide(
                                            color: introduceList[5] == true ? MIXIN_2 : MIXIN_BLACK_5,
                                            width: 1.5
                                        ),
                                        shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(10.0)
                                        ),
                                        padding: EdgeInsets.zero,
                                        elevation: 0.0,
                                        backgroundColor: introduceList[5] == true ? MIXIN_ : Colors.white
                                    ),
                                    onPressed: (){
                                      setState(() {
                                        if (introduceList.where((element) => element).length == 3){
                                          null;
                                        } else{
                                          introduceList[5] = !introduceList[5];
                                        }
                                      });
                                    },
                                    child: Container(
                                      color: introduceList[5] == true ? MIXIN_ : Colors.white,
                                      child: const Text(
                                        '장난끼가 많은',
                                        style: TextStyle(
                                            fontFamily: 'SUIT',
                                            fontWeight: FontWeight.w500,
                                            fontSize: 16.0,
                                            color: MIXIN_BLACK_1
                                        ),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 12.0,
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SizedBox(
                                  width: 138,
                                  height: 48,
                                  child: ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                          side: BorderSide(
                                              color: introduceList[6] == true ? MIXIN_2 : MIXIN_BLACK_5,
                                              width: 1.5
                                          ),
                                          shape: RoundedRectangleBorder(
                                              borderRadius: BorderRadius.circular(10.0)
                                          ),
                                          padding: EdgeInsets.zero,
                                          elevation: 0.0,
                                          backgroundColor: introduceList[6] == true ? MIXIN_ : Colors.white
                                      ),
                                      onPressed: (){
                                        setState(() {
                                          if (introduceList.where((element) => element).length == 3){
                                            null;
                                          } else{
                                            introduceList[6] = !introduceList[6];
                                          }
                                        });
                                      },
                                      child: Container(
                                        color: introduceList[6] == true ? MIXIN_ : Colors.white,
                                        child: const Text(
                                          '계획적인',
                                          style: TextStyle(
                                              fontFamily: 'SUIT',
                                              fontWeight: FontWeight.w500,
                                              fontSize: 16.0,
                                              color: MIXIN_BLACK_1
                                          ),
                                          textAlign: TextAlign.center,
                                        ),
                                      )
                                  ),
                                ),
                                const SizedBox(
                                  width: 18.0,
                                ),
                                SizedBox(
                                  width: 138,
                                  height: 48,
                                  child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                        side: BorderSide(
                                            color: introduceList[7] == true ? MIXIN_2 : MIXIN_BLACK_5,
                                            width: 1.5
                                        ),
                                        shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(10.0)
                                        ),
                                        padding: EdgeInsets.zero,
                                        elevation: 0.0,
                                        backgroundColor: introduceList[7] == true ? MIXIN_ : Colors.white
                                    ),
                                    onPressed: (){
                                      setState(() {
                                        if (introduceList.where((element) => element).length >= 3){
                                          null;
                                        } else{
                                          introduceList[7] = !introduceList[7];
                                        }
                                      });
                                    },
                                    child: Container(
                                      color: introduceList[7] == true ? MIXIN_ : Colors.white,
                                      child: const Text(
                                        '즉흥적인',
                                        style: TextStyle(
                                            fontFamily: 'SUIT',
                                            fontWeight: FontWeight.w500,
                                            fontSize: 16.0,
                                            color: MIXIN_BLACK_1
                                        ),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SizedBox(
                                  width: 138,
                                  height: 48,
                                  child: ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                          side: BorderSide(
                                              color: introduceList[8] == true ? MIXIN_2 : MIXIN_BLACK_5,
                                              width: 1.5
                                          ),
                                          shape: RoundedRectangleBorder(
                                              borderRadius: BorderRadius.circular(10.0)
                                          ),
                                          padding: EdgeInsets.zero,
                                          elevation: 0.0,
                                          backgroundColor: introduceList[8] == true ? MIXIN_ : Colors.white
                                      ),
                                      onPressed: (){
                                        setState(() {
                                          if (introduceList.where((element) => element).length == 3){
                                            null;
                                          } else{
                                            introduceList[8] = !introduceList[8];
                                          }
                                        });
                                      },
                                      child: Container(
                                        color: introduceList[8] == true ? MIXIN_ : Colors.white,
                                        child: const Text(
                                          '느긋한',
                                          style: TextStyle(
                                              fontFamily: 'SUIT',
                                              fontWeight: FontWeight.w500,
                                              fontSize: 16.0,
                                              color: MIXIN_BLACK_1
                                          ),
                                          textAlign: TextAlign.center,
                                        ),
                                      )
                                  ),
                                ),
                                const SizedBox(
                                  width: 18.0,
                                ),
                                SizedBox(
                                  width: 138,
                                  height: 48,
                                  child: ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                          side: BorderSide(
                                              color: introduceList[9] == true ? MIXIN_2 : MIXIN_BLACK_5,
                                              width: 1.5
                                          ),
                                          shape: RoundedRectangleBorder(
                                              borderRadius: BorderRadius.circular(10.0)
                                          ),
                                          padding: EdgeInsets.zero,
                                          elevation: 0.0,
                                          backgroundColor: introduceList[9] == true ? MIXIN_ : Colors.white
                                      ),
                                      onPressed: (){
                                        setState(() {
                                          if (introduceList.where((element) => element).length == 3){
                                            null;
                                          } else{
                                            introduceList[9] = !introduceList[9];
                                          }
                                        });
                                      },
                                      child: Container(
                                        color: introduceList[9] == true ? MIXIN_ : Colors.white,
                                        child: const Text(
                                          '성격이 급한',
                                          style: TextStyle(
                                              fontFamily: 'SUIT',
                                              fontWeight: FontWeight.w500,
                                              fontSize: 16.0,
                                              color: MIXIN_BLACK_1
                                          ),
                                          textAlign: TextAlign.center,
                                        ),
                                      )
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 12.0,
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SizedBox(
                                  width: 138,
                                  height: 48,
                                  child: ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                          side: BorderSide(
                                              color: introduceList[10] == true ? MIXIN_2 : MIXIN_BLACK_5,
                                              width: 1.5
                                          ),
                                          shape: RoundedRectangleBorder(
                                              borderRadius: BorderRadius.circular(10.0)
                                          ),
                                          padding: EdgeInsets.zero,
                                          elevation: 0.0,
                                          backgroundColor: introduceList[10] == true ? MIXIN_ : Colors.white
                                      ),
                                      onPressed: (){
                                        setState(() {
                                          if (introduceList.where((element) => element).length == 3){
                                            null;
                                          } else{
                                            introduceList[10] = !introduceList[10];
                                          }
                                        });
                                      },
                                      child: Container(
                                        color: introduceList[10] == true ? MIXIN_ : Colors.white,
                                        child: const Text(
                                          '파티를 좋아하는',
                                          style: TextStyle(
                                              fontFamily: 'SUIT',
                                              fontWeight: FontWeight.w500,
                                              fontSize: 16.0,
                                              color: MIXIN_BLACK_1
                                          ),
                                          textAlign: TextAlign.center,
                                        ),
                                      )
                                  ),
                                ),
                                const SizedBox(
                                  width: 18.0,
                                ),
                                SizedBox(
                                  width: 138,
                                  height: 48,
                                  child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                        side: BorderSide(
                                            color: introduceList[11] == true ? MIXIN_2 : MIXIN_BLACK_5,
                                            width: 1.5
                                        ),
                                        shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(10.0)
                                        ),
                                        padding: EdgeInsets.zero,
                                        elevation: 0.0,
                                        backgroundColor: introduceList[11] == true ? MIXIN_ : Colors.white
                                    ),
                                    onPressed: (){
                                      setState(() {
                                        if (introduceList.where((element) => element).length == 3){
                                          null;
                                        } else{
                                          introduceList[11] = !introduceList[11];
                                        }
                                      });
                                    },
                                    child: Container(
                                      color: introduceList[11] == true ? MIXIN_ : Colors.white,
                                      child: const Text(
                                        '소수모임을 좋아하는',
                                        style: TextStyle(
                                            fontFamily: 'SUIT',
                                            fontWeight: FontWeight.w500,
                                            fontSize: 16.0,
                                            color: MIXIN_BLACK_1
                                        ),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 12.0,
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SizedBox(
                                  width: 138,
                                  height: 48,
                                  child: ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                          side: BorderSide(
                                              color: introduceList[4] == true ? MIXIN_2 : MIXIN_BLACK_5,
                                              width: 1.5
                                          ),
                                          shape: RoundedRectangleBorder(
                                              borderRadius: BorderRadius.circular(10.0)
                                          ),
                                          padding: EdgeInsets.zero,
                                          elevation: 0.0,
                                          backgroundColor: introduceList[12] == true ? MIXIN_ : Colors.white
                                      ),
                                      onPressed: (){
                                        setState(() {
                                          if (introduceList.where((element) => element).length == 3){
                                            null;
                                          } else{
                                            introduceList[12] = !introduceList[12];
                                          }
                                        });
                                      },
                                      child: Container(
                                        color: introduceList[12] == true ? MIXIN_ : Colors.white,
                                        child: const Text(
                                          '단호한',
                                          style: TextStyle(
                                              fontFamily: 'SUIT',
                                              fontWeight: FontWeight.w500,
                                              fontSize: 16.0,
                                              color: MIXIN_BLACK_1
                                          ),
                                          textAlign: TextAlign.center,
                                        ),
                                      )
                                  ),
                                ),
                                const SizedBox(
                                  width: 18.0,
                                ),
                                SizedBox(
                                  width: 138,
                                  height: 48,
                                  child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                        side: BorderSide(
                                            color: introduceList[13] == true ? MIXIN_2 : MIXIN_BLACK_5,
                                            width: 1.5
                                        ),
                                        shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(10.0)
                                        ),
                                        padding: EdgeInsets.zero,
                                        elevation: 0.0,
                                        backgroundColor: introduceList[13] == true ? MIXIN_ : Colors.white
                                    ),
                                    onPressed: (){
                                      setState(() {
                                        if (introduceList.where((element) => element).length == 3){
                                          null;
                                        } else{
                                          introduceList[13] = !introduceList[13];
                                        }
                                      });
                                    },
                                    child: Container(
                                      color: introduceList[13] == true ? MIXIN_ : Colors.white,
                                      child: const Text(
                                        '우유부단한',
                                        style: TextStyle(
                                            fontFamily: 'SUIT',
                                            fontWeight: FontWeight.w500,
                                            fontSize: 16.0,
                                            color: MIXIN_BLACK_1
                                        ),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 12.0,
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SizedBox(
                                  width: 138,
                                  height: 48,
                                  child: ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                          side: BorderSide(
                                              color: introduceList[6] == true ? MIXIN_2 : MIXIN_BLACK_5,
                                              width: 1.5
                                          ),
                                          shape: RoundedRectangleBorder(
                                              borderRadius: BorderRadius.circular(10.0)
                                          ),
                                          padding: EdgeInsets.zero,
                                          elevation: 0.0,
                                          backgroundColor: introduceList[14] == true ? MIXIN_ : Colors.white
                                      ),
                                      onPressed: (){
                                        setState(() {
                                          if (introduceList.where((element) => element).length == 3){
                                            null;
                                          } else{
                                            introduceList[14] = !introduceList[14];
                                          }
                                        });
                                      },
                                      child: Container(
                                        color: introduceList[14] == true ? MIXIN_ : Colors.white,
                                        child: const Text(
                                          '감성적인',
                                          style: TextStyle(
                                              fontFamily: 'SUIT',
                                              fontWeight: FontWeight.w500,
                                              fontSize: 16.0,
                                              color: MIXIN_BLACK_1
                                          ),
                                          textAlign: TextAlign.center,
                                        ),
                                      )
                                  ),
                                ),
                                const SizedBox(
                                  width: 18.0,
                                ),
                                SizedBox(
                                  width: 138,
                                  height: 48,
                                  child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                        side: BorderSide(
                                            color: introduceList[15] == true ? MIXIN_2 : MIXIN_BLACK_5,
                                            width: 1.5
                                        ),
                                        shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(10.0)
                                        ),
                                        padding: EdgeInsets.zero,
                                        elevation: 0.0,
                                        backgroundColor: introduceList[15] == true ? MIXIN_ : Colors.white
                                    ),
                                    onPressed: (){
                                      setState(() {
                                        if (introduceList.where((element) => element).length >= 3){
                                          null;
                                        } else{
                                          introduceList[15] = !introduceList[15];
                                        }
                                      });
                                    },
                                    child: Container(
                                      color: introduceList[7] == true ? MIXIN_ : Colors.white,
                                      child: const Text(
                                        '이성적인',
                                        style: TextStyle(
                                            fontFamily: 'SUIT',
                                            fontWeight: FontWeight.w500,
                                            fontSize: 16.0,
                                            color: MIXIN_BLACK_1
                                        ),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 50.0,
                  ),
                  SmoothPageIndicator(
                      controller: controller,  // PageController
                      count:  2,
                      effect: const WormEffect(
                        spacing: 18,
                        dotColor: MIXIN_BLACK_5,
                        activeDotColor: MIXIN_POINT_COLOR,
                        dotHeight: 8,
                        dotWidth: 8,
                      ),  // your preferred effect
                      onDotClicked: (index){},


                  )
                ],
              ),
            ),
          ),
        )
    );
  }
}
