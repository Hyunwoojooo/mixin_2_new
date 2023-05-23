import 'package:flutter/material.dart';
import '../../const/colors.dart';
import 'main_home_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, length: 2);
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
        preferredSize: Size.fromHeight(86),
        child: AppBar(
          backgroundColor: Colors.white,
          toolbarHeight: 150,
          titleSpacing: 0,
          elevation: 0.0,
          centerTitle: true,
          title: SizedBox(
            width: 180,
            height: 36,
            child: TabBar(
              controller: _tabController,
              indicatorColor: MIXIN_POINT_COLOR,
              isScrollable: false,
              tabs: const [
                Tab(
                  child: Text(
                    'home',
                    style: TextStyle(
                        fontFamily: 'SUIT',
                        fontWeight: FontWeight.w600,
                        fontSize: 16.0,
                        color: Colors.black),
                  ),
                ),
                Tab(
                  child: Text(
                    'momim',
                    style: TextStyle(
                        fontFamily: 'SUIT',
                        fontWeight: FontWeight.w600,
                        fontSize: 16.0,
                        color: Colors.black),
                  ),
                ),
              ],
            ),
          ),
          actions: [
            IconButton(
              padding: EdgeInsets.zero,
              onPressed: () {},
              icon: Image.asset(
                'assets/images/icon_search.png',
                width: 26,
                height: 26,
                color: Colors.black,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: Image.asset(
                'assets/images/icons/bell.png',
                color: Colors.black,
                width: 26,
                height: 26,
              ),
            ),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        physics: const NeverScrollableScrollPhysics(),
        children: [
          MainHomeScreen(),
          MainHomeScreen(),
        ],
      ),
      bottomNavigationBar:
      BottomNavigationBar(fixedColor: Colors.black, items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: '홈',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.ac_unit_sharp),
          label: '모임',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.group),
          label: '커뮤니티',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.chat),
          label: '채팅',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person),
          label: '프로필',
        ),
      ]),
    );
  }
}
