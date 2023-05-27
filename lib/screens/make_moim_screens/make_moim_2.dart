import 'package:flutter/material.dart';
import '../../const/colors.dart';
import 'buttons/choice_gender_button.dart';
import 'buttons/choice_numb_button.dart';
import 'buttons/choice_resistar_button.dart';

class MeetingPage2 extends StatefulWidget {
  const MeetingPage2({Key? key}) : super(key: key);

  @override
  State<MeetingPage2> createState() => _MeetingPage2State();
}

class _MeetingPage2State extends State<MeetingPage2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          '모임 만들기',
          style: TextStyle(
              height: 1.66,
              color: MIXIN_BLACK_1,
              fontFamily: 'SUIT',
              fontSize: 18,
              fontWeight: FontWeight.w600),
        ),
        leading: IconButton(
          icon: ImageIcon(
            AssetImage('assets/images/Back.png'),
            size: 26,
            color: Colors.black,
          ),
          onPressed: () {},
        ),
        backgroundColor: Color(0xFFF2F2F2),
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(24, 25, 24, 0),
            child: Column(
              children: [
                SizedBox(
                  height: 450 + 149,
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Text(
                            '인원수',
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                                fontFamily: 'SUIT',
                                color: MIXIN_BLACK_1),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      ChoiceNumbButton(),
                      SizedBox(
                        height: 36,
                      ),
                      Row(
                        children: [
                          Text(
                            '성별',
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                                fontFamily: 'SUIT',
                                color: MIXIN_BLACK_1),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      ChoiceGenderButton(),
                      SizedBox(
                        height: 36,
                      ),
                      Row(
                        children: [
                          Text(
                            '가입기준',
                            style: TextStyle(
                                fontFamily: 'SUIT',
                                fontSize: 16,
                                fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      ChoiceResisterButton(),
                    ],
                  ),
                ),
                ElevatedButton(
                  child: Text('다음',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 18,fontFamily: 'SUIT'),),
                  style: TextButton.styleFrom(
                    fixedSize: Size(342, 56),
                    elevation: 0,
                    backgroundColor: MIXIN_BLACK_4,
                    foregroundColor: Color(0xFFFFFFFF),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  onPressed: () {},
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
