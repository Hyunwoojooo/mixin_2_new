import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';
import '../../../const/colors.dart';
import 'select_term.dart';

class MoimTermButton extends StatefulWidget {
  const MoimTermButton({Key? key}) : super(key: key);

  @override
  State<MoimTermButton> createState() => _MoimTermButtonState();
}

class _MoimTermButtonState extends State<MoimTermButton> {
  int? newsAgency;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 48,
      width: 342,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 16.0),
            child: Text(
              '모집 기간을 선택해주세요',
              style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 16,
                  fontFamily: 'SUIT',
                  color: MIXIN_BLACK_4),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 4.0),
            child: IconButton(
              icon: Image.asset(
                'assets/images/_Calender.png',
                width: 26,
              ),
              onPressed: () {
                showModalBottomSheet(
                  context: context,
                  builder: (BuildContext context) {
                    return SizedBox(
                      height: 390,
                      width: double.infinity,
                      child: Column(
                        children: [
                          SelectTerm(),
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
                                  setState(() {});
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
          ),
        ],
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        border: Border.all(
          color: MIXIN_BLACK_4,
          width: 1.5,
        ),
      ),
    );
  }
}
