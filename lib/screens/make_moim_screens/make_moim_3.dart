import 'package:flutter/material.dart';
import '../../const/colors.dart';
import 'buttons/moim_cycle_button.dart';
import 'buttons/moim_rules.dart';
import 'buttons/moim_term_button.dart';

class MeetingPage3 extends StatefulWidget {
  const MeetingPage3({Key? key}) : super(key: key);

  @override
  State<MeetingPage3> createState() => _MeetingPage3State();
}

class _MeetingPage3State extends State<MeetingPage3> {
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
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Text(
                              '썸네일',
                              style: TextStyle(
                                  fontFamily: 'SUIT',
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                  color: MIXIN_BLACK_1),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 16,
                        ),
                        Container(
                          height: 188,
                          color: Colors.green,
                        ),
                        SizedBox(
                          height: 36,
                        ),
                        Row(
                          children: [
                            Text(
                              '모집기간',
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
                        MoimTermButton(),
                        SizedBox(
                          height: 36,
                        ),
                        Row(
                          children: [
                            Text(
                              '모임 주기',
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
                        MoimCycleButton(),
                        SizedBox(
                          height: 36,
                        ),
                        Row(
                          children: [
                            Text(
                              '모임 규칙',
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
                        MoimRules(),
                      ],
                    ),
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
