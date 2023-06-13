import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../const/colors.dart';
import '../../layout/custom_floating_action_button.dart';
import 'make_moim_2.dart';

class TagPage extends StatefulWidget {
  const TagPage({Key? key}) : super(key: key);

  @override
  State<TagPage> createState() => _TagPageState();
}

class _TagPageState extends State<TagPage> {
  List<String> _displayTexts = [];
  TextEditingController _textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60.h),
        child: AppBar(
          backgroundColor: Colors.white,
          elevation: 0.0,
          titleSpacing: -35.w,
          title: GestureDetector(
            child: Column(
              children: [
                SizedBox(
                  height: 20.h,
                ),
                Row(
                  children: [
                    Image.asset(
                      'assets/images/icons/back_icon_black_4x.png',
                      width: 26.w,
                      height: 26.h,
                      fit: BoxFit.contain,
                    ),
                    SizedBox(width: 16.w),
                    Text(
                      '모임 만들기',
                      style: TextStyle(
                        fontFamily: 'SUIT',
                        fontWeight: FontWeight.w600,
                        fontSize: 18.sp,
                        color: MIXIN_BLACK_1,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            onTap: () {
              Navigator.pop(context);
            },
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: CustomFloatingActionButton(
        text: '다음',
        fillColor: MIXIN_POINT_COLOR,
        onPressed: () async {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) =>
              const MeetingPage2(),
            ),
          );
        },
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.fromLTRB(24.w, 0, 24.w, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 30.h),
                Text(
                  '태그',
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontFamily: 'SUIT',
                    fontSize: 14.sp,
                    color: MIXIN_BLACK_1,
                  ),
                ),
                SizedBox(height: 16.h),
                TextField(
                  controller: _textEditingController,
                  style: TextStyle(
                    fontSize: 14.sp,
                    fontFamily: 'SUIT',
                    fontWeight: FontWeight.w500,
                  ),
                  decoration: InputDecoration(
                    hintText: '사람들이 모임을 더 찾기 쉽게 태그를 걸어주세요',
                    contentPadding: EdgeInsets.symmetric(
                        vertical: 10.0.h, horizontal: 20.0.w),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(8.0.r),),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: MIXIN_BLACK_5, width: 1.0.w),
                      borderRadius: BorderRadius.all(Radius.circular(8.0.r)),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: MIXIN_BLACK_5, width: 1.0.w),
                      borderRadius: BorderRadius.all(Radius.circular(8.0.r)),
                    ),
                    hintStyle: TextStyle(
                      fontSize: 14.sp,
                      fontFamily: 'SUIT',
                      fontWeight: FontWeight.w500,
                      color: MIXIN_BLACK_4,
                    ),
                    filled: true,
                    fillColor: MIXIN_BLACK_5,
                  ),
                  onSubmitted: (value) {
                    setState(() {
                      _displayTexts.add(value);
                      _textEditingController.clear();
                    });
                  },
                ),
                SizedBox(height: 16.h),
                Wrap(
                  spacing: 12.w,
                  runSpacing: 12.w,
                  children: _displayTexts
                      .asMap()
                      .entries
                      .map((entry) => GestureDetector(
                            onTap: () {
                              setState(() {
                                _displayTexts.removeAt(entry.key);
                              });
                            },
                            child: Container(
                              padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
                              decoration: BoxDecoration(
                                color: MIXIN_BLACK_5,
                                border: Border.all(color: MIXIN_BLACK_5),
                                borderRadius: BorderRadius.circular(10.r),
                              ),
                              child: Text(
                                '#${entry.value}',
                                style: TextStyle(
                                    fontSize: 12.sp,
                                    fontWeight: FontWeight.w500,
                                    fontFamily: 'SUIT',
                                    color: const Color(0xFF51B49F)),
                              ),
                            ),
                          ))
                      .toList(),
                ),
                SizedBox(height: 540.h),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
