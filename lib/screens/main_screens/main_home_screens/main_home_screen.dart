import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mixin_2/screens/main_screens/main_home_screens/main_home_home_screen.dart';
import '../../../const/colors.dart';
import 'main_home_moim_screen.dart';

class MainHomeScreen extends StatefulWidget {
  const MainHomeScreen({Key? key}) : super(key: key);

  @override
  State<MainHomeScreen> createState() => _MainHomeScreenState();
}

class _MainHomeScreenState extends State<MainHomeScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  void onTap(int index) {
    setState(() {});
  }

  Color indicatorColor() {
    if (_tabController.index == 0) {
      return Colors.black;
    } else if (_tabController.index == 1) {
      return Colors.black;
    }
    return Colors.transparent;
  }

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
        preferredSize: Size.fromHeight(76.h),
        child: AppBar(
          backgroundColor: Colors.white,
          toolbarHeight: 100.h,
          automaticallyImplyLeading: false,
          elevation: 0.0,
          centerTitle: true,
          titleSpacing: 100.w,
          title: Column(
            children: [
              SizedBox(height: 20.h),
              Container(
                margin: EdgeInsets.zero,
                padding: EdgeInsets.zero,
                width: 145.w,
                height: 36.h,
                child: TabBar(
                  tabAlignment: TabAlignment.center,
                  labelColor: WHITE,
                  unselectedLabelColor: MIXIN_BLACK_1,
                  controller: _tabController,
                  indicatorColor: Colors.blue,
                  indicator: BoxDecoration(
                    borderRadius: BorderRadius.circular(23.5.r),
                    color: indicatorColor(),
                  ),
                  dividerColor: Colors.orange,
                  isScrollable: false,
                  onTap: onTap,
                  labelStyle: TextStyle(
                    fontFamily: 'SUIT',
                    fontWeight: FontWeight.w600,
                    fontSize: 16.0.sp,
                  ),
                  tabs: const [
                    Tab(text: 'home'),
                    Tab(text: 'moim')
                  ],
                ),
              ),
            ],
          ),
          flexibleSpace: SizedBox(
            height: 76.h,
            width: MediaQuery.of(context).size.width,
            child: Padding(
              padding: EdgeInsets.only(right: 10.w),
              child: Column(
                children: [
                  SizedBox(height: 25.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      IconButton(
                        onPressed: () {},
                        padding: EdgeInsets.only(top: 6.h),
                        icon: Image.asset(
                          'assets/images/icon_search.png',
                          // width: 30,
                          // height: 30,
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
          MainHomeHomeScreen(),
          MainHomeMoimScreen(),
        ],
      ),
    );
  }
}
