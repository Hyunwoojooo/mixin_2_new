import 'package:flutter/material.dart';
import 'package:mixin_2/const/colors.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';

import 'moim_info_screen.dart';

class MoimMainScreen extends StatefulWidget {
  const MoimMainScreen({Key? key}) : super(key: key);

  @override
  State<MoimMainScreen> createState() => _MoimMainScreenState();
}

class _MoimMainScreenState extends State<MoimMainScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, length: 3);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(215),
        child: AppBar(
          backgroundColor: Colors.grey.withOpacity(0.7),
          flexibleSpace: Padding(
            padding: const EdgeInsets.only(left: 57, top: 145),
            child: Row(
              children: [
                Container(
                  width: 80,
                  height: 36,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(18), color: MIXIN_),
                  child: Text(
                    '동아리',
                    style: TextStyle(
                      fontFamily: 'SUIT',
                      fontWeight: FontWeight.w500,
                      fontSize: 14.0,
                      color: MIXIN_POINT_COLOR,
                    ),
                  ),
                ),
                const SizedBox(width: 12.0),
                Container(
                  width: 92,
                  height: 36,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(18),
                      color: Colors.white),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset('assets/images/health.png'),
                      SizedBox(width: 8.0),
                      Text(
                        '운동',
                        style: TextStyle(
                          fontFamily: 'SUIT',
                          fontWeight: FontWeight.w500,
                          fontSize: 14.0,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          toolbarHeight: 150,
          titleSpacing: 0,
          elevation: 0.0,
          leading: IconButton(
            onPressed: () {},
            icon: Image.asset(
              'assets/images/icons/back_icon.png',
              color: Colors.white,
              width: 26,
              height: 26,
            ),
          ),
          title: Text(
            '필름감아',
            style: TextStyle(
                fontFamily: 'SUIT',
                fontWeight: FontWeight.w600,
                fontSize: 24.0,
                color: Colors.white),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 24.0),
              child: IconButton(
                padding: EdgeInsets.zero,
                onPressed: () {},
                icon: Image.asset(
                  'assets/images/more_vert.png',
                  width: 26,
                  height: 26,
                ),
              ),
            )
          ],
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(60),
            child: Container(
              height: 60,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(24),
                  topRight: Radius.circular(24),
                ),
              ),
              child: TabBar(
                controller: _tabController,
                indicatorColor: MIXIN_POINT_COLOR,
                tabs: const [
                  Tab(
                    child: Text(
                      '정보',
                      style: TextStyle(
                          fontFamily: 'SUIT',
                          fontWeight: FontWeight.w600,
                          fontSize: 20.0,
                          color: Colors.black),
                    ),
                  ),
                  Tab(
                    child: Text(
                      '게시판',
                      style: TextStyle(
                          fontFamily: 'SUIT',
                          fontWeight: FontWeight.w600,
                          fontSize: 20.0,
                          color: Colors.black),
                    ),
                  ),
                  Tab(
                    child: Text(
                      '활동',
                      style: TextStyle(
                          fontFamily: 'SUIT',
                          fontWeight: FontWeight.w600,
                          fontSize: 20.0,
                          color: Colors.black),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          ListView(
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
                      height: 580,
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
                                        boxShadow: [
                                          BoxShadow(color: Colors.grey, blurRadius: 3.0),
                                        ]),
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
                ],
              ),
            ],
          ),
          Container(
            width: 400,
            height: 400,
            child: Text('dfa'),
          ),
          Container(
            width: 400,
            height: 400,
            child: Text('dfa'),
          ),
          // Container(
          //   width: MediaQuery.of(context).size.width,
          //   height: 300,
          //   child: Column(
          //     children: [
          //       Column(
          //         children: [
          //           Text('필름감아는 필름 카메라 ~',
          //             style: TextStyle(
          //               fontFamily: 'SUIT',
          //               fontWeight: FontWeight.w500,
          //               fontSize: 16.0,
          //             ),
          //           ),
          //         ],
          //       )
          //     ],
          //   ),
          // ),
          // Container(
          //   width: MediaQuery.of(context).size.width,
          //   height: 300,
          //   child: Column(
          //     children: [
          //       Column(
          //         children: [
          //           Text('필름감아는 필름 카메라 ~',
          //             style: TextStyle(
          //               fontFamily: 'SUIT',
          //               fontWeight: FontWeight.w500,
          //               fontSize: 16.0,
          //             ),
          //           ),
          //         ],
          //       )
          //     ],
          //   ),
          // ),
          // Container(
          //   width: MediaQuery.of(context).size.width,
          //   height: 300,
          //   child: Column(
          //     children: [
          //       Column(
          //         children: [
          //           Text('필름감아는 필름 카메라 ~',
          //             style: TextStyle(
          //               fontFamily: 'SUIT',
          //               fontWeight: FontWeight.w500,
          //               fontSize: 16.0,
          //             ),
          //           ),
          //         ],
          //       )
          //     ],
          //   ),
          // ),
        ],
      ),
    );
  }
}
