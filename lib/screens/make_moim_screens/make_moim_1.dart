import 'package:flutter/material.dart';
import '../../const/colors.dart';
import 'buttons/category_button.dart';

class MakeMoim1 extends StatefulWidget {
  @override
  State<MakeMoim1> createState() => _MakeMoim1State();
}

class _MakeMoim1State extends State<MakeMoim1> {
  final int maxLength = 500;
  String textValue = "";
  Color _grey = MIXIN_BLACK_4; //MIXIN_BLACK_5의 색이 잘 안보여서 임시대체

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF2F2F2),
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
        backgroundColor: Color(0xFFF2F2F2),
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              SizedBox(
                height: 25,
              ),
              SizedBox(
                // height: 761,
                height: 450,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(24, 0, 24, 0),
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        Container(
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: '모임명을 작성해주세요',
                              hintStyle: TextStyle(
                                fontSize: 24,
                                fontFamily: 'SUIT',
                                fontWeight: FontWeight.w600,
                                color: MIXIN_BLACK_4,
                              ),
                              counterStyle: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                                fontFamily: 'SUIT',
                                color: Color(0xFFCED0D5),
                              ),
                              border: InputBorder.none,
                              counterText: '',
                            ),
                            style: TextStyle(
                              fontSize: 24,
                              fontFamily: 'SUIT',
                              fontWeight: FontWeight.w600,
                            ),
                            maxLength: 25,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        //카테고리 버튼
                        CartegoryButton(),
                        SizedBox(height: 20),
                        Container(
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: "모임에 대한 정보를 입력해주세요.",
                              hintStyle: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                fontFamily: 'SUIT',
                                color: MIXIN_BLACK_4,
                              ),
                              counterStyle: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                                fontFamily: 'SUIT',
                                color: Color(0xFFCED0D5),
                              ),
                              border: InputBorder.none,
                            ),
                            maxLength: maxLength,
                            maxLines: null,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Divider(thickness: 8, height: 8, color: _grey),
              SizedBox(
                height: 149,
              ),
              ElevatedButton(
                child: Text('다음',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 18,fontFamily: 'SUIT'),),
                style: TextButton.styleFrom(
                  fixedSize: Size(342, 56),
                  elevation: 0,
                  backgroundColor: MIXIN_BLACK_4,
                  foregroundColor: Color(0xFFFFFFFF),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}