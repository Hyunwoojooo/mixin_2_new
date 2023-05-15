import 'package:flutter/material.dart';

class MoimInfoScreen extends StatefulWidget {
  const MoimInfoScreen({Key? key}) : super(key: key);

  @override
  State<MoimInfoScreen> createState() => _MoimInfoScreenState();
}

class _MoimInfoScreenState extends State<MoimInfoScreen> {
  bool _isTextOverflow = false;
  bool _isMore = false;
  String textInfo = '필름감아는 필름 카메라 초보는 물론이고, 필름 카메라를 사용하시는 분들까지 모두 참여가능한 소모임입니다';

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _isTextOverflow = textInfo.length > 500;
    _isMore = !_isTextOverflow;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Expanded(
              child: Text(
                textInfo,
                maxLines: _isTextOverflow && !_isMore ? 10 : null,
                overflow: _isTextOverflow && !_isMore ? TextOverflow.ellipsis : TextOverflow.visible,
              ),
            ),
            Row(
              children: [
                Text(
                  '모임주기',
                  style: TextStyle(
                    fontFamily: 'SUIT',
                    fontWeight: FontWeight.w500,
                    fontSize: 16.0,
                    color: Color(0xFFB1B1B7),
                  ),
                ),
                SizedBox(
                  width: 31,
                ),
                Text(
                  '주1회',
                  style: TextStyle(
                    fontFamily: 'SUIT',
                    fontWeight: FontWeight.w500,
                    fontSize: 16,
                    color: Color(0xFF474747),
                  ),
                )
              ],
            ),
            Row(
              children: [
                Text(
                  '모임규칙',
                  style: TextStyle(
                    fontFamily: 'SUIT',
                    fontWeight: FontWeight.w500,
                    fontSize: 16.0,
                    color: Color(0xFFB1B1B7),
                  ),
                ),
                SizedBox(
                  width: 31,
                ),
                Text(
                  '월 회비 10000원\n연애 금지',
                  style: TextStyle(
                    fontFamily: 'SUIT',
                    fontWeight: FontWeight.w500,
                    fontSize: 16,
                    color: Color(0xFF474747),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
