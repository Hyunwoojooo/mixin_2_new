import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MainMoimScreen extends StatefulWidget {
  const MainMoimScreen({Key? key}) : super(key: key);

  @override
  State<MainMoimScreen> createState() => _MainMoimScreenState();
}

class _MainMoimScreenState extends State<MainMoimScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width,
            height: 51.h,
            child: Container(
              alignment: Alignment.centerRight,
              width: 26.w,
              height: 26.h,
              padding: EdgeInsets.only(right: 10.w),
              child: IconButton(
                onPressed: () {},
                icon: Image.asset('assets/images/icons/calendar_icon.png'),
              ),
            ),
          )
        ],
      ),
    );
  }
}
