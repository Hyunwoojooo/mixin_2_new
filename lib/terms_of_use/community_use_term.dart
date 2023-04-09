import 'package:flutter/material.dart';
import 'package:mixin_2/const/term_of_service_text/community_term_text.dart';

import '../const/colors.dart';

class CommunityUseTerm extends StatelessWidget {
  CommunityUseTerm({Key? key}) : super(key: key);

  final CommunityTermText communityUseTerm = CommunityTermText();
  final String first = CommunityTermText().first;
  final String second = CommunityTermText().second;
  final String third = CommunityTermText().third;
  final String fourth = CommunityTermText().fourth;
  final String fifth = CommunityTermText().fifth;
  final String sixth = CommunityTermText().sixth;
  final String seventh = CommunityTermText().seventh;
  final String eighth = CommunityTermText().eighth;
  final String ninth = CommunityTermText().ninth;
  final String tenth = CommunityTermText().tenth;
  final String eleventh = CommunityTermText().eleventh;
  final String twelfth = CommunityTermText().twelfth;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 0.3,
        leading: GestureDetector(
          child: Image.asset('assets/images/close.png'),
          onTap: () {
            Navigator.pop(context);
          },
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Container(
        decoration: const BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.white,
              spreadRadius: 30.0,
              blurRadius: 20.0,
            ),
          ],
        ),
        width: 342,
        height: 56,
        child: RawMaterialButton(
          fillColor: MIXIN_POINT_COLOR,
          elevation: 30.0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8.0),
          ),
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text(
            '확인하고 전체동의',
            style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontFamily: 'SUIT',
                fontWeight: FontWeight.w600),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(24.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  '커뮤니티 이용규칙 확인 (필수)',
                  style: TextStyle(
                    fontFamily: 'SUIT',
                    fontWeight: FontWeight.w600,
                    fontSize: 24.0,
                  ),
                ),
                const SizedBox(
                  height: 24.0,
                ),
                const Text(
                  '커뮤니티 이용규칙 안내',
                  style: TextStyle(
                    fontFamily: 'SUIT',
                    fontWeight: FontWeight.w600,
                    fontSize: 18.0,
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                Text(
                  '$first',
                  style: const TextStyle(
                    fontFamily: 'SUIT',
                    fontWeight: FontWeight.w500,
                    fontSize: 12.0,
                  ),
                ),
                const SizedBox(
                  height: 24.0,
                ),
                const Text(
                  '커뮤니티 운영 시스템',
                  style: TextStyle(
                    fontFamily: 'SUIT',
                    fontWeight: FontWeight.w600,
                    fontSize: 18.0,
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                Text(
                  '$second',
                  style: const TextStyle(
                    fontFamily: 'SUIT',
                    fontWeight: FontWeight.w500,
                    fontSize: 11.0,
                  ),
                ),
                const SizedBox(
                  height: 24.0,
                ),
                const Text(
                  '유출 발지 시스템',
                  style: TextStyle(
                    fontFamily: 'SUIT',
                    fontWeight: FontWeight.w600,
                    fontSize: 18.0,
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                Text(
                  '$third',
                  style: const TextStyle(
                    fontFamily: 'SUIT',
                    fontWeight: FontWeight.w500,
                    fontSize: 11.0,
                  ),
                ),
                const SizedBox(
                  height: 24.0,
                ),
                const Text(
                  '금지 행위',
                  style: TextStyle(
                    fontFamily: 'SUIT',
                    fontWeight: FontWeight.w600,
                    fontSize: 18.0,
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                Text(
                  '$fourth',
                  style: const TextStyle(
                    fontFamily: 'SUIT',
                    fontWeight: FontWeight.w500,
                    fontSize: 11.0,
                  ),
                ),
                const SizedBox(
                  height: 24.0,
                ),
                const Text(
                  '일반 금지 행위',
                  style: TextStyle(
                    fontFamily: 'SUIT',
                    fontWeight: FontWeight.w600,
                    fontSize: 18.0,
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                Text(
                  '$fifth',
                  style: const TextStyle(
                    fontFamily: 'SUIT',
                    fontWeight: FontWeight.w500,
                    fontSize: 11.0,
                  ),
                ),
                const SizedBox(
                  height: 24.0,
                ),
                const Text(
                  '정치·사회 관련 금지 행위',
                  style: TextStyle(
                    fontFamily: 'SUIT',
                    fontWeight: FontWeight.w600,
                    fontSize: 18.0,
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                Text(
                  '$sixth',
                  style: const TextStyle(
                    fontFamily: 'SUIT',
                    fontWeight: FontWeight.w500,
                    fontSize: 11.0,
                  ),
                ),
                const SizedBox(
                  height: 24.0,
                ),
                const Text(
                  '홍보 및 판매 관련 금지 행위',
                  style: TextStyle(
                    fontFamily: 'SUIT',
                    fontWeight: FontWeight.w600,
                    fontSize: 18.0,
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                Text(
                  '$seventh',
                  style: const TextStyle(
                    fontFamily: 'SUIT',
                    fontWeight: FontWeight.w500,
                    fontSize: 11.0,
                  ),
                ),
                const SizedBox(
                  height: 24.0,
                ),
                const Text(
                  '게시물 작성·수정·삭제 규칙',
                  style: TextStyle(
                    fontFamily: 'SUIT',
                    fontWeight: FontWeight.w600,
                    fontSize: 18.0,
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                Text(
                  '$eighth',
                  style: const TextStyle(
                    fontFamily: 'SUIT',
                    fontWeight: FontWeight.w500,
                    fontSize: 11.0,
                  ),
                ),
                const SizedBox(
                  height: 24.0,
                ),
                const Text(
                  '게시판 관리자 제도',
                  style: TextStyle(
                    fontFamily: 'SUIT',
                    fontWeight: FontWeight.w600,
                    fontSize: 18.0,
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                Text(
                  '$ninth',
                  style: const TextStyle(
                    fontFamily: 'SUIT',
                    fontWeight: FontWeight.w500,
                    fontSize: 11.0,
                  ),
                ),
                const SizedBox(
                  height: 24.0,
                ),
                const Text(
                  '허위사실 유포 및 명예훼손 게시물에 대한 게시 중단 요청',
                  style: TextStyle(
                    fontFamily: 'SUIT',
                    fontWeight: FontWeight.w600,
                    fontSize: 18.0,
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                Text(
                  '$tenth',
                  style: const TextStyle(
                    fontFamily: 'SUIT',
                    fontWeight: FontWeight.w500,
                    fontSize: 11.0,
                  ),
                ),
                const SizedBox(
                  height: 24.0,
                ),
                const Text(
                  '전기통신사업법에 따른 불법촬영물 유통 금지',
                  style: TextStyle(
                    fontFamily: 'SUIT',
                    fontWeight: FontWeight.w600,
                    fontSize: 18.0,
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                Text(
                  '$eleventh',
                  style: const TextStyle(
                    fontFamily: 'SUIT',
                    fontWeight: FontWeight.w500,
                    fontSize: 11.0,
                  ),
                ),
                const SizedBox(
                  height: 24.0,
                ),
                const Text(
                  '기타',
                  style: TextStyle(
                    fontFamily: 'SUIT',
                    fontWeight: FontWeight.w600,
                    fontSize: 18.0,
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                Text(
                  '$twelfth',
                  style: const TextStyle(
                    fontFamily: 'SUIT',
                    fontWeight: FontWeight.w500,
                    fontSize: 11.0,
                  ),
                ),
                const SizedBox(
                  height: 100.0,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
