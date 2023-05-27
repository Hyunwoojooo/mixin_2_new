import 'package:flutter/material.dart';
//
class WeeksMonths extends StatelessWidget {
  final bool isItAm;

  WeeksMonths({required this.isItAm});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Container(
        child: Center(
          child: Text(
            isItAm == true ? '매주' : '매달',
            style: TextStyle(
              fontSize: 24,
              fontFamily: 'SUIT',
              fontWeight: FontWeight.w500,
              color: Color(0xFF474747),
            ),
          ),
        ),
      ),
    );
  }
}
