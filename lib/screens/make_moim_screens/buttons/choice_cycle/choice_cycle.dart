import 'package:flutter/material.dart';

import 'numbs.dart';
import 'weeks_months.dart';

class ChoiceCycle extends StatefulWidget {
  @override
  State<ChoiceCycle> createState() => _ChoiceCycleState();
}

class _ChoiceCycleState extends State<ChoiceCycle> {
  late FixedExtentScrollController _controller;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    _controller = FixedExtentScrollController();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 100,),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //am_pm
            Container(
              width: 70,
              height: 160,
              child: ListWheelScrollView.useDelegate(
                controller: _controller,
                itemExtent: 70,
                perspective: 0.005,
                diameterRatio: 1000,
                // useMagnifier: true,
                // magnification: 1.2,
                physics: FixedExtentScrollPhysics(),
                childDelegate: ListWheelChildBuilderDelegate(
                    childCount: 2,
                    builder: (context, index) {
                      if (index == 0) {
                        return WeeksMonths(
                          isItAm: true,
                        );
                      } else {
                        return WeeksMonths(
                          isItAm: false,
                        );
                      }
                    }),
              ),
            ),
            SizedBox(
              width: 70,
            ),
            // hours wheel
            Container(
              width: 70,
              height: 160,
              child: ListWheelScrollView.useDelegate(
                // onSelectedItemChanged: (value) ==> print(value),
                controller: _controller,
                itemExtent: 60,
                perspective: 0.005,
                diameterRatio: 1000,
                // useMagnifier: true,
                // magnification: 1.2,
                physics: FixedExtentScrollPhysics(),
                childDelegate: ListWheelChildLoopingListDelegate(
                  children: List<Widget>.generate(31, (index) {
                    return Numbs(
                      numbs: index,
                    );
                  }),
                ),
              ),
            ),
            SizedBox(width: 30,),
            Text('회',
              style: TextStyle(
                fontSize: 24,
                fontFamily: 'SUIT',
                fontWeight: FontWeight.w600,
                color: Color(0xFF474747),
              ),),
          ],
        ),
      ],
    );
  }
}
