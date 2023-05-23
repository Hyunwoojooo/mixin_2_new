import 'package:flutter/material.dart';
import 'package:mixin_2/const/colors.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';

import 'moim_info_screen.dart';
import 'moim_noticeboard_screen.dart';

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
                isScrollable: false,
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
        physics: const NeverScrollableScrollPhysics(),
        children: [
          const MoimInfoScreen(),
          const MoimNoticeboardScreen(),
          Container(
            width: 400,
            height: 400,
            child: Text('dfa'),
          ),
        ],
      ),
    );
  }
}
