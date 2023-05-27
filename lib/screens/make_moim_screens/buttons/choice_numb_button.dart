import 'package:flutter/material.dart';
import '../../../const/colors.dart';
import 'choice_numb/choice_numb.dart';
class ChoiceNumbButton extends StatefulWidget {
  const ChoiceNumbButton({Key? key}) : super(key: key);

  @override
  State<ChoiceNumbButton> createState() => _ChoiceNumbButtonState();
}

class _ChoiceNumbButtonState extends State<ChoiceNumbButton> {
  int ?newsAgency;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48,
      width: 342,
      child: ElevatedButton(
        child: Container(
            alignment: Alignment.centerLeft,
            child: Text('인원 수를 선택해 주세요.')),
        style: ElevatedButton.styleFrom(
          elevation: 0,
          backgroundColor: Colors.white,
          foregroundColor: MIXIN_BLACK_4,
          shape: RoundedRectangleBorder(
            side: BorderSide(
              color: MIXIN_BLACK_4,
              width: 1.0,
            ),
            borderRadius: BorderRadius.circular(8),
          ),
        ),
        onPressed: () {
          showModalBottomSheet(
            context: context,
            builder: (BuildContext context) {
              return SizedBox(
                height: 370,
                width: double.infinity,
                child: Column(
                  children: [
                    ChoiceNumb(),
                    Expanded(
                      child: Center(
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: MIXIN_POINT_COLOR,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8.0)),
                            elevation: 8.0,
                          ),
                          onPressed: () async {
                            Navigator.of(context).pop();
                            setState(() {
                            });
                            print(newsAgency);
                          },
                          child: Container(
                            width: 342,
                            height: 56,
                            child: Center(
                              child: Text(
                                '확인',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18,
                                    fontFamily: 'SUIT',
                                    fontWeight: FontWeight.w600),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              );
            },
          );
        },
      ),
    );
  }
}
