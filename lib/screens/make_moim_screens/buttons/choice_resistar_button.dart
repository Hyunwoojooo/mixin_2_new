import 'package:flutter/material.dart';

import '../../../const/colors.dart';
class ChoiceResisterButton extends StatefulWidget {
  const ChoiceResisterButton({Key? key}) : super(key: key);

  @override
  State<ChoiceResisterButton> createState() => _ChoiceResisterButtonState();
}

class _ChoiceResisterButtonState extends State<ChoiceResisterButton> {
  bool _ischecked1 = false;
  bool _ischecked2 = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            SizedBox(
              height: 48,
              width: 165,
              child: ElevatedButton(
                child: Text(
                  '자유롭게 가입',
                  style: TextStyle(
                      fontFamily: 'SUIT',
                      fontSize: 16,
                      fontWeight: FontWeight.w500),
                ),
                style: ElevatedButton.styleFrom(
                  elevation: 0,
                  backgroundColor: _ischecked1 ? MIXIN_ : Colors.white,
                  foregroundColor: _ischecked1 ? MIXIN_2 : MIXIN_BLACK_4,
                  shape: RoundedRectangleBorder(
                    side: BorderSide(
                      color: _ischecked1 ? MIXIN_2 : MIXIN_BLACK_4,
                      width: 1.0,
                    ),
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                onPressed: () {
                  setState(() {
                    _ischecked1 = true;
                    _ischecked2 = false;
                  });
                },
              ),
            ),
            SizedBox(
              width: 12,
            ),
            SizedBox(
              height: 48,
              width: 165,
              child: ElevatedButton(
                child: Text(
                  '승인 후 가입',
                  style: TextStyle(
                      fontFamily: 'SUIT',
                      fontSize: 16,
                      fontWeight: FontWeight.w500),
                ),
                style: ElevatedButton.styleFrom(
                  elevation: 0,
                  backgroundColor: _ischecked2 ? MIXIN_ : Colors.white,
                  foregroundColor: _ischecked2 ? MIXIN_2 : MIXIN_BLACK_4,
                  shape: RoundedRectangleBorder(
                    side: BorderSide(
                      color: _ischecked2 ? MIXIN_2 : MIXIN_BLACK_4,
                      width: 1.0,
                    ),
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                onPressed: () {
                  setState(() {
                    _ischecked1 = false;
                    _ischecked2 = true;
                  });
                },
              ),
            ),
          ],
        ),
        if (_ischecked2)
          Column(
            children: [
              SizedBox(
                height: 16,
              ),
              SizedBox(
                height: 65,
                child: TextFormField(
                  style: TextStyle(
                    fontSize: 16,
                    fontFamily: 'SUIT',
                    fontWeight: FontWeight.w600,
                  ),
                  decoration: InputDecoration(
                    hintText: '가입 조건을 작성해주세요',
                    hintStyle: TextStyle(
                      fontSize: 16,
                      fontFamily: 'SUIT',
                      fontWeight: FontWeight.w500,
                      color: MIXIN_BLACK_5,
                    ),
                    counterStyle: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                      fontFamily: 'SUIT',
                      color: Color(0xFFCED0D5),
                    ),
                    border: InputBorder.none,
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(8)),
                      borderSide: BorderSide(
                        color: MIXIN_BLACK_4,
                      ),
                    ),
                    // counterText: '',
                    filled: true,
                    fillColor: MIXIN_BLACK_4,
                    contentPadding: EdgeInsets.symmetric(horizontal: 20),
                  ),
                  maxLength: 80,
                  maxLines:null,
                ),
              ),
            ],
          ),
      ],
    );
  }
}
