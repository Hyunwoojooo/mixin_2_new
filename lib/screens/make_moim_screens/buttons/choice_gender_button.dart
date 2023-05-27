import 'package:flutter/material.dart';

import '../../../const/colors.dart';

class ChoiceGenderButton extends StatefulWidget {
  const ChoiceGenderButton({Key? key}) : super(key: key);

  @override
  State<ChoiceGenderButton> createState() => _ChoiceGenderButtonState();
}

class _ChoiceGenderButtonState extends State<ChoiceGenderButton> {
  bool _ischecked1 = false;
  bool _ischecked2 = false;
  bool _ischecked3 = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          height: 48,
          width: 106,
          child: ElevatedButton(
            child: Text(
              '상관없음',
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 16,
                fontFamily: 'SUIT',
              ),
            ),
            style: ElevatedButton.styleFrom(
              elevation: 0,
              backgroundColor: _ischecked1 ? MIXIN_ : Colors.white,
              foregroundColor: _ischecked1 ? MIXIN_2 : MIXIN_BLACK_4,
              shape: RoundedRectangleBorder(
                side: BorderSide(
                  color: _ischecked1 ? MIXIN_2 : MIXIN_BLACK_4, //MIXIN_BLACK_4,
                  width: 1.0,
                ),
                borderRadius: BorderRadius.circular(8),
              ),
            ),
            onPressed: () {
              setState(() {
                _ischecked1 = true;
                _ischecked2 = false;
                _ischecked3 = false;
              });
            },
          ),
        ),
        SizedBox(
          width: 12,
        ),
        SizedBox(
          height: 48,
          width: 106,
          child: ElevatedButton(
            child: Text(
              '남자만',
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 16,
                fontFamily: 'SUIT',
              ),
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
                _ischecked3 = false;
              });
            },
          ),
        ),
        SizedBox(
          width: 12,
        ),
        SizedBox(
          height: 48,
          width: 106,
          child: ElevatedButton(
            child: Text(
              '여자만',
              style: TextStyle(
                  fontFamily: 'SUIT',
                  fontSize: 16,
                  fontWeight: FontWeight.w500),
            ),
            style: ElevatedButton.styleFrom(
              elevation: 0,
              backgroundColor: _ischecked3 ? MIXIN_ : Colors.white,
              foregroundColor: _ischecked3 ? MIXIN_2 : MIXIN_BLACK_4,
              shape: RoundedRectangleBorder(
                side: BorderSide(
                  color: _ischecked3 ? MIXIN_2 : MIXIN_BLACK_4,
                  width: 1.0,
                ),
                borderRadius: BorderRadius.circular(8),
              ),
            ),
            onPressed: () {
              setState(() {
                _ischecked1 = false;
                _ischecked2 = false;
                _ischecked3 = true;
              });
            },
          ),
        ),
      ],
    );
  }
}
