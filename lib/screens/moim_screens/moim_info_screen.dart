import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';

import '../../const/colors.dart';

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
      body: ListView(
        children: [
          Column(
            children: [
              // 모임 정보
              Padding(
                padding: const EdgeInsets.all(24.0),
                child: SizedBox(
                  width: 400,
                  height: 152,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '필름감아는 필름 카메라 초보는 ',
                        style: TextStyle(
                            fontFamily: 'SUIT',
                            fontWeight: FontWeight.w500,
                            fontSize: 16.0,
                            color: MIXIN_BLACK_3),
                      ),
                      SizedBox(
                        height: 24,
                      ),
                      Row(
                        children: [
                          const Text(
                            '모임주기',
                            style: TextStyle(
                                fontFamily: 'SUIT',
                                fontWeight: FontWeight.w500,
                                fontSize: 16.0,
                                color: Color(0xFFB1B1B7)),
                          ),
                          SizedBox(
                            width: 31,
                          ),
                          Text(
                            '주 1회',
                            style: TextStyle(
                              fontFamily: 'SUIT',
                              fontWeight: FontWeight.w500,
                              fontSize: 16.0,
                              color: Color(0xFF474747),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '모임주기',
                            style: TextStyle(
                                fontFamily: 'SUIT',
                                fontWeight: FontWeight.w500,
                                fontSize: 16.0,
                                color: Color(0xFFB1B1B7)),
                          ),
                          SizedBox(
                            width: 31,
                          ),
                          Text(
                            '1. 주 1회\n2. 주 2회\n3. 주 3회',
                            style: TextStyle(
                              fontFamily: 'SUIT',
                              fontWeight: FontWeight.w500,
                              fontSize: 16.0,
                              color: Color(0xFF474747),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              const Divider(
                thickness: 6.0,
                color: MIXIN_BLACK_5,
              ),

              // 관련 태그
              Padding(
                padding: const EdgeInsets.all(24.0),
                child: SizedBox(
                  width: 400,
                  height: 80,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '관련 태그',
                        style: TextStyle(
                          fontFamily: 'SUIT',
                          fontWeight: FontWeight.w600,
                          fontSize: 18,
                        ),
                      ),
                      SizedBox(height: 22),
                      Row(
                        children: [
                          Visibility(
                            child: Container(
                              height: 32,
                              width: 60,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                color: MIXIN_,
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              child: Text(
                                '#필카',
                                style: TextStyle(
                                    fontFamily: 'SUIT',
                                    fontWeight: FontWeight.w500,
                                    fontSize: 14.0,
                                    color: MIXIN_POINT_COLOR),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 8.0,
                          ),
                          Visibility(
                            child: Container(
                              height: 32,
                              width: 60,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                color: MIXIN_,
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              child: Text(
                                '#필카',
                                style: TextStyle(
                                    fontFamily: 'SUIT',
                                    fontWeight: FontWeight.w500,
                                    fontSize: 14.0,
                                    color: MIXIN_POINT_COLOR),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 8.0,
                          ),
                          Visibility(
                            child: Container(
                              height: 32,
                              width: 60,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                color: MIXIN_,
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              child: Text(
                                '#필카',
                                style: TextStyle(
                                    fontFamily: 'SUIT',
                                    fontWeight: FontWeight.w500,
                                    fontSize: 14.0,
                                    color: MIXIN_POINT_COLOR),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 8.0,
                          ),
                          Visibility(
                            child: Container(
                              height: 32,
                              width: 60,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                color: MIXIN_,
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              child: Text(
                                '#필카',
                                style: TextStyle(
                                    fontFamily: 'SUIT',
                                    fontWeight: FontWeight.w500,
                                    fontSize: 14.0,
                                    color: MIXIN_POINT_COLOR),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 8.0,
                          ),
                          Visibility(
                            child: Container(
                              height: 32,
                              width: 60,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                color: MIXIN_,
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              child: Text(
                                '#필카',
                                style: TextStyle(
                                    fontFamily: 'SUIT',
                                    fontWeight: FontWeight.w500,
                                    fontSize: 14.0,
                                    color: MIXIN_POINT_COLOR),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              const Divider(
                thickness: 6.0,
                color: MIXIN_BLACK_5,
              ),

              // 모임원
              Padding(
                padding: const EdgeInsets.all(24.0),
                child: SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: 1000,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          const Text(
                            '모임원',
                            style: TextStyle(
                              fontFamily: 'SUIT',
                              fontWeight: FontWeight.w600,
                              fontSize: 18,
                            ),
                          ),
                          SizedBox(
                            width: 12,
                          ),
                          Icon(
                            Icons.person,
                            color: MIXIN_BLACK_4,
                          ),
                          SizedBox(
                            width: 3,
                          ),
                          Text(
                            '12',
                            style: TextStyle(
                                fontFamily: 'SUIT',
                                fontWeight: FontWeight.w500,
                                fontSize: 14,
                                color: MIXIN_BLACK_4),
                          ),
                        ],
                      ),
                      SizedBox(height: 22),

                      // 모임리더
                      Row(
                        children: [
                          Stack(
                            children: [
                              Container(
                                width: 60,
                                height: 60,
                                decoration: const BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.blueGrey,
                                ),
                              ),
                              SizedBox(
                                height: 60,
                                width: 60,
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
                                        thickness: 4,
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
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            width: 23.0,
                          ),
                          Text(
                            '먼지이이잉',
                            style: TextStyle(
                              fontFamily: 'SUIT',
                              fontWeight: FontWeight.w600,
                              fontSize: 18,
                              color: MIXIN_47,
                            ),
                          ),
                          SizedBox(
                            width: 8.0,
                          ),
                          Image.asset(
                            'assets/images/icons/crown.png',
                            width: 20,
                            height: 20,
                          ),
                          SizedBox(
                            width: 4.0,
                          ),
                          Text(
                            '모임리더',
                            style: TextStyle(
                              fontFamily: 'SUIT',
                              fontWeight: FontWeight.w500,
                              fontSize: 14,
                              color: MIXIN_BLACK_3,
                            ),
                          ),
                          SizedBox(
                            width: 30,
                          ),
                          Visibility(
                            child: ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                backgroundColor: MIXIN_BLACK_5,
                                elevation: 0.0,
                                shape: RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.circular(8), // 원하는 값을 설정하세요.
                                ),
                              ),
                              child: const Text(
                                '+',
                                style: TextStyle(
                                    fontFamily: 'SUIT',
                                    fontWeight: FontWeight.w500,
                                    fontSize: 14.0,
                                    color: MIXIN_BLACK_3),
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 20),
                      // 나
                      Row(
                        children: [
                          Stack(
                            children: [
                              Container(
                                width: 60,
                                height: 60,
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.blueGrey,
                                ),
                              ),
                              SizedBox(
                                height: 60,
                                width: 60,
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
                                        thickness: 4,
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
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            width: 23.0,
                          ),
                          Container(
                            width: 24,
                            height: 24,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: MIXIN_,
                            ),
                            child: Text(
                              '나',
                              style: TextStyle(
                                  fontFamily: 'SUIT',
                                  fontWeight: FontWeight.w600,
                                  fontSize: 14.0,
                                  color: MIXIN_POINT_COLOR),
                            ),
                          ),
                          SizedBox(
                            width: 8.0,
                          ),
                          Text(
                            '먼지이이잉',
                            style: TextStyle(
                              fontFamily: 'SUIT',
                              fontWeight: FontWeight.w600,
                              fontSize: 18,
                              color: MIXIN_47,
                            ),
                          ),
                          SizedBox(
                            width: 40,
                          ),
                        ],
                      ),
                      const SizedBox(height: 20),
                      // 모임원
                      Row(
                        children: [
                          Stack(
                            children: [
                              Container(
                                width: 60,
                                height: 60,
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.blueGrey,
                                ),
                              ),
                              SizedBox(
                                height: 60,
                                width: 60,
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
                                        thickness: 4,
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
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            width: 23.0,
                          ),
                          Text(
                            '먼지이이잉',
                            style: TextStyle(
                              fontFamily: 'SUIT',
                              fontWeight: FontWeight.w600,
                              fontSize: 18,
                              color: MIXIN_47,
                            ),
                          ),
                          SizedBox(
                            width: 32.0,
                          ),
                          Text(
                            '모임원',
                            style: TextStyle(
                              fontFamily: 'SUIT',
                              fontWeight: FontWeight.w500,
                              fontSize: 14,
                              color: MIXIN_BLACK_3,
                            ),
                          ),
                          SizedBox(
                            width: 40,
                          ),
                          Visibility(
                            child: ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                backgroundColor: MIXIN_,
                                elevation: 0.0,
                                shape: RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.circular(8), // 원하는 값을 설정하세요.
                                ),
                              ),
                              child: const Text(
                                '친구',
                                style: TextStyle(
                                    fontFamily: 'SUIT',
                                    fontWeight: FontWeight.w500,
                                    fontSize: 14.0,
                                    color: MIXIN_POINT_COLOR),
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
