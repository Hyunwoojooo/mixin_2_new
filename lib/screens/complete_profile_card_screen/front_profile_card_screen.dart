import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';

import '../../const/colors.dart';

class FrontProfileCardScreen extends StatelessWidget {
  const FrontProfileCardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 342,
      height: 425,
      padding: EdgeInsets.fromLTRB(31, 27, 31, 0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(23.0),
        color: Colors.white,
      ),
      child: Center(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.only(bottom: 10),
              width: 221,
              height: 42.0,
              alignment: Alignment.center,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/bubble_speech.png'),
                ),
              ),
              child: const Text(
                '모임에 참여할 수록 점수가 올라요!',
                style: TextStyle(
                  fontFamily: 'SUIT',
                  fontSize: 14.0,
                  fontWeight: FontWeight.w500,
                  color: MIXIN_POINT_COLOR,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(height: 10),
            Stack(
              children: [
                Container(
                  width: 90,
                  height: 90,
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.blueGrey,
                      boxShadow: [
                        BoxShadow(color: Colors.grey, blurRadius: 3.0),
                      ]),
                ),
                SizedBox(
                  height: 90,
                  width: 90,
                  child: SfRadialGauge(
                    animationDuration: 2000,
                    axes: <RadialAxis>[
                      RadialAxis(
                        startAngle: 90,
                        endAngle: 90,
                        radiusFactor: 1,
                        isInversed: true,
                        canScaleToFit: true,
                        minimum: 0,
                        maximum: 100,
                        showLabels: false,
                        showTicks: false,
                        axisLineStyle: const AxisLineStyle(
                          thickness: 5,
                          cornerStyle: CornerStyle.bothFlat,
                          color: Colors.white,
                        ),
                        pointers: const <GaugePointer>[
                          RangePointer(
                            value: 50,
                            width: 0.11,
                            sizeUnit: GaugeSizeUnit.factor,
                            cornerStyle: CornerStyle.bothCurve,
                            gradient: SweepGradient(
                              colors: <Color>[
                                MIXIN_,
                                Color(0xFF51B49F),
                              ],
                              stops: <double>[
                                0.25,
                                0.75,
                              ],
                            ),
                          ),
                          MarkerPointer(
                            value: 50,
                            markerHeight: 15,
                            markerWidth: 15,
                            markerType: MarkerType.circle,
                            color: Color(0xFF32A086),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 12.0,
            ),
            Text(
              '믹스인',
              style: TextStyle(
                fontFamily: 'SUIT',
                fontWeight: FontWeight.w600,
                fontSize: 18.0,
              ),
            ),
            const SizedBox(
              height: 8.0,
            ),
            Text(
              '자동화공학과',
              style: TextStyle(
                fontFamily: 'SUIT',
                fontWeight: FontWeight.w500,
                fontSize: 14.0,
              ),
            ),
            const SizedBox(
              height: 32.0,
            ),
            Container(
              height: 138,
              width: 280,
              padding: EdgeInsets.all(32),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(32.0),
                color: MIXIN_BLACK_5,
              ),
              child: Text('반갑습니다. 자동화공학과 23학번 주현우입니다.'),
            ),
          ],
        ),
      ),
    );
  }
}