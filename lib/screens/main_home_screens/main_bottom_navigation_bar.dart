import 'package:flutter/material.dart';
import 'package:mixin_2/screens/main_home_screens/main_screen.dart';

import '../../const/colors.dart';

class MainBottomNavigationBar extends StatefulWidget {
  const MainBottomNavigationBar({Key? key}) : super(key: key);

  @override
  State<MainBottomNavigationBar> createState() =>
      _MainBottomNavigationBarState();
}

class _MainBottomNavigationBarState extends State<MainBottomNavigationBar> {
  int _bNBSelectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _bNBSelectedIndex = index;
    });
  }

  final List<Widget> _bNBWidgetOptions = [
    MainScreen(),
    MainScreen(),
    MainScreen(),
    MainScreen(),
    MainScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: _bNBWidgetOptions.elementAt(_bNBSelectedIndex),
      ),
      bottomNavigationBar: ClipRRect(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(16),
          topRight: Radius.circular(16),
        ),
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          enableFeedback: true,
          currentIndex: _bNBSelectedIndex,
          iconSize: 26,
          selectedItemColor: MIXIN_BLACK_1,
          unselectedItemColor: MIXIN_BLACK_4,
          selectedFontSize: 11,
          unselectedFontSize: 11,
          showUnselectedLabels: true,
          selectedLabelStyle: const TextStyle(
            fontFamily: 'SUIT',
            fontWeight: FontWeight.w500,
          ),
          unselectedLabelStyle: const TextStyle(
            fontFamily: 'SUIT',
            fontWeight: FontWeight.w500,
          ),
          onTap: _onItemTapped,
          items: [
            BottomNavigationBarItem(
              icon: Image.asset(
                'assets/images/bottom_navigation_bar_icons/bottomNavigationBar_home.png',
                width: 26,
                height: 26,
                color: _bNBSelectedIndex == 0 ? MIXIN_BLACK_1 : MIXIN_BLACK_4,
              ),
              label: '홈',
            ),
            BottomNavigationBarItem(
              icon: Image.asset(
                'assets/images/bottom_navigation_bar_icons/bottomNavigationBar_moim.png',
                width: 26,
                height: 26,
                color: _bNBSelectedIndex == 1 ? MIXIN_BLACK_1 : MIXIN_BLACK_4,
              ),
              label: '모임',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.group),
              label: '커뮤니티',
            ),
            BottomNavigationBarItem(
              icon: Image.asset(
                'assets/images/bottom_navigation_bar_icons/bottomNavigationBar_chatting.png',
                width: 26,
                height: 26,
                color: _bNBSelectedIndex == 3 ? MIXIN_BLACK_1 : MIXIN_BLACK_4,
              ),
              label: '채팅',
            ),
            BottomNavigationBarItem(
              icon: Image.asset(
                'assets/images/bottom_navigation_bar_icons/bottomNavigationBar_profile.png',
                width: 26,
                height: 26,
                color: _bNBSelectedIndex == 4 ? MIXIN_BLACK_1 : MIXIN_BLACK_4,
              ),
              label: '프로필',
            ),
          ],
        ),
      ),
    );
  }
}
