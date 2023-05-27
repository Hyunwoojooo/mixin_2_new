import 'package:flutter/material.dart';

import '../../const/colors.dart';

class MakeMoimTag extends StatefulWidget {
  const MakeMoimTag({Key? key}) : super(key: key);

  @override
  State<MakeMoimTag> createState() => _MakeMoimTagState();
}

class _MakeMoimTagState extends State<MakeMoimTag> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          '모임 만들기',
          style: TextStyle(
              height: 1.66,
              color: MIXIN_BLACK_1,
              fontFamily: 'SUIT',
              fontSize: 18,
              fontWeight: FontWeight.w600),
        ),
        leading: IconButton(
          icon: ImageIcon(
            AssetImage('assets/images/Back.png'),
            size: 26,
            color: Colors.black,
          ),
          onPressed: () {},
        ),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: SingleChildScrollView(
          child: SafeArea(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(24, 30, 24, 0),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          '태그',
                          style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 14,
                              fontFamily: 'SUIT'),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 16,
                    ),
                  ],
                ),
              ))),
    );
  }
}