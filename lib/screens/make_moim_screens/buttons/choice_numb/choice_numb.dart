import 'package:flutter/material.dart';

import '../choice_cycle/numbs.dart';

class ChoiceNumb extends StatefulWidget {
  const ChoiceNumb({Key? key}) : super(key: key);

  @override
  State<ChoiceNumb> createState() => _ChoiceNumbState();
}

class _ChoiceNumbState extends State<ChoiceNumb> {

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
                childDelegate: ListWheelChildListDelegate(
                  children: List<Widget>.generate(31, (index) {
                    return Numbs(
                      numbs: index,
                    );
                  }),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
