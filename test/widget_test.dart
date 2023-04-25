// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.


import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:mixin_2/main.dart';
import 'package:xml/xml.dart';

void main() {
  final bookshelfXml = ''' 
  <dataSearch>
    <content>
        <campusName>본교</campusName>
        <collegeinfourl></collegeinfourl>
        <schoolType>전문대학</schoolType>
        <link>http://www.ict.ac.kr</link>
        <schoolGubun>전문대학</schoolGubun>
        <adres></adres>
        <schoolName>ICT폴리텍대학</schoolName>
        <region>경기도</region>
        <totalCount>444</totalCount>
        <estType>사립</estType>
        <seq>684.0</seq>
    </content>
    <content>
        <campusName>본교</campusName>
        <collegeinfourl></collegeinfourl>
        <schoolType>일반대학</schoolType>
        <link>http://kfu.kdb.co.kr</link>
        <schoolGubun>대학(4년제)</schoolGubun>
        <adres>서울특별시 영등포구 은행로 14 (여의도동, 산업은행본점)</adres>
        <schoolName>KDB금융대학교</schoolName>
        <region>서울특별시</region>
        <totalCount>444</totalCount>
        <estType>사립</estType>
        <seq>964.0</seq>
    </content>
    <content>
        <campusName>본교</campusName>
        <collegeinfourl></collegeinfourl>
        <schoolType>일반대학</schoolType>
        <link></link>
        <schoolGubun>대학(4년제)</schoolGubun>
        <adres>대전광역시 유성구 엑스포로539번길 99 (전민동, LH토지주택연구원)</adres>
        <schoolName>LH토지주택대학교</schoolName>
        <region>대전광역시</region>
        <totalCount>444</totalCount>
        <estType>사립</estType>
        <seq>963.0</seq>
    </content>
    <content>
        <campusName>본교</campusName>
        <collegeinfourl></collegeinfourl>
        <schoolType>일반대학</schoolType>
        <link></link>
        <schoolGubun>전문대학</schoolGubun>
        <adres>서울특별시 동작구 신대방16다길 14 (신대방동)</adres>
        <schoolName>SPC식품과학대학</schoolName>
        <region>서울특별시</region>
        <totalCount>444</totalCount>
        <estType>사립</estType>
        <seq>959.0</seq>
    </content>
    <content>
        <campusName>본교</campusName>
        <collegeinfourl></collegeinfourl>
        <schoolType>일반대학</schoolType>
        <link>http://www.kaya.ac.kr</link>
        <schoolGubun>대학(4년제)</schoolGubun>
        <adres>경상남도 김해시 삼계로 208 (삼계동)</adres>
        <schoolName>가야대학교</schoolName>
        <region>경상남도</region>
        <totalCount>444</totalCount>
        <estType>사립</estType>
        <seq>869.0</seq>
    </content>
    <content>
        <campusName>메디컬캠퍼스</campusName>
        <collegeinfourl></collegeinfourl>
        <schoolType>일반대학</schoolType>
        <link>http://www.gachon.ac.kr</link>
        <schoolGubun>대학(4년제)</schoolGubun>
        <adres>인천광역시 연수구 연수동 함박뫼로 191</adres>
        <schoolName>가천대학교</schoolName>
        <region>인천광역시</region>
        <totalCount>444</totalCount>
        <estType>사립</estType>
        <seq>21005.0</seq>
    </content>
    <content>
        <campusName>본교</campusName>
        <collegeinfourl></collegeinfourl>
        <schoolType>일반대학</schoolType>
        <link>http://www.gachon.ac.kr</link>
        <schoolGubun>대학(4년제)</schoolGubun>
        <adres>경기도 성남시 수정구 성남대로 1342 (복정동, 가천대학교)</adres>
        <schoolName>가천대학교</schoolName>
        <region>경기도</region>
        <totalCount>444</totalCount>
        <estType>사립</estType>
        <seq>794.0</seq>
    </content>
    <content>
        <campusName>본교</campusName>
        <collegeinfourl></collegeinfourl>
        <schoolType>일반대학</schoolType>
        <link>http://www.cku.ac.kr</link>
        <schoolGubun>대학(4년제)</schoolGubun>
        <adres>강원도 강릉시 범일로579번길 24 (내곡동, 가톨릭관동대학교)</adres>
        <schoolName>가톨릭관동대학교</schoolName>
        <region>강원도</region>
        <totalCount>444</totalCount>
        <estType>사립</estType>
        <seq>31.0</seq>
    </content>
    <content>
        <campusName>본교</campusName>
        <collegeinfourl></collegeinfourl>
        <schoolType>일반대학</schoolType>
        <link>http://www.kkot.ac.kr</link>
        <schoolGubun>대학(4년제)</schoolGubun>
        <adres>충청북도 청주시 서원구 현도면 상삼길 133 (상삼리, 꽃동네대학교)</adres>
        <schoolName>가톨릭꽃동네대학교</schoolName>
        <region>충청북도</region>
        <totalCount>444</totalCount>
        <estType>사립</estType>
        <seq>43.0</seq>
    </content>
    <content>
        <campusName>본교</campusName>
        <collegeinfourl></collegeinfourl>
        <schoolType>일반대학</schoolType>
        <link>http://songeui.catholic.ac.kr/</link>
        <schoolGubun>대학(4년제)</schoolGubun>
        <adres></adres>
        <schoolName>가톨릭대학교</schoolName>
        <region>서울특별시</region>
        <totalCount>444</totalCount>
        <estType>사립</estType>
        <seq>5.0</seq>
    </content>
    <content>
        <campusName>제3캠퍼스</campusName>
        <collegeinfourl></collegeinfourl>
        <schoolType>일반대학</schoolType>
        <link>http://songsin.catholic.ac.kr/site/songsin/main.do</link>
        <schoolGubun>대학(4년제)</schoolGubun>
        <adres></adres>
        <schoolName>가톨릭대학교</schoolName>
        <region>서울특별시</region>
        <totalCount>444</totalCount>
        <estType>사립</estType>
        <seq>4.0</seq>
    </content>
    <content>
        <campusName>제2캠퍼스</campusName>
        <collegeinfourl></collegeinfourl>
        <schoolType>일반대학</schoolType>
        <link>http://www.catholic.ac.kr</link>
        <schoolGubun>대학(4년제)</schoolGubun>
        <adres></adres>
        <schoolName>가톨릭대학교</schoolName>
        <region>경기도</region>
        <totalCount>444</totalCount>
        <estType>사립</estType>
        <seq>3.0</seq>
    </content>
    <content>
        <campusName>본교</campusName>
        <collegeinfourl></collegeinfourl>
        <schoolType>전문대학</schoolType>
        <link>http://www.csj.ac.kr</link>
        <schoolGubun>전문대학</schoolGubun>
        <adres></adres>
        <schoolName>가톨릭상지대학교</schoolName>
        <region>경상북도</region>
        <totalCount>444</totalCount>
        <estType>사립</estType>
        <seq>770.0</seq>
    </content>
    <content>
        <campusName>본교</campusName>
        <collegeinfourl></collegeinfourl>
        <schoolType>일반대학</schoolType>
        <link>http://www.mtu.ac.kr</link>
        <schoolGubun>대학(4년제)</schoolGubun>
        <adres>서울특별시 서대문구 독립문로 56 (냉천동, 감리교신학대학)</adres>
        <schoolName>감리교신학대학교</schoolName>
        <region>서울특별시</region>
        <totalCount>444</totalCount>
        <estType>사립</estType>
        <seq>6.0</seq>
    </content>
    <content>
        <campusName>본교</campusName>
        <collegeinfourl></collegeinfourl>
        <schoolType>일반대학</schoolType>
        <link>http://www.kangnam.ac.kr</link>
        <schoolGubun>대학(4년제)</schoolGubun>
        <adres>경기도 용인시 기흥구 강남로 40 (구갈동, 강남대학교)</adres>
        <schoolName>강남대학교</schoolName>
        <region>경기도</region>
        <totalCount>444</totalCount>
        <estType>사립</estType>
        <seq>7.0</seq>
    </content>
    <content>
        <campusName>본교</campusName>
        <collegeinfourl></collegeinfourl>
        <schoolType>전문대학</schoolType>
        <link>http://www.gangdong.ac.kr</link>
        <schoolGubun>전문대학</schoolGubun>
        <adres>충청북도 음성군 감곡면 대학길 278 (단평리, 강동대학교)</adres>
        <schoolName>강동대학교</schoolName>
        <region>경기도</region>
        <totalCount>444</totalCount>
        <estType>사립</estType>
        <seq>270.0</seq>
    </content>
    <content>
        <campusName>본교</campusName>
        <collegeinfourl></collegeinfourl>
        <schoolType>전문대학</schoolType>
        <link>http://www.gyc.ac.kr</link>
        <schoolGubun>전문대학</schoolGubun>
        <adres>강원도 강릉시 공제로 357 (홍제동, 강릉영동대학)</adres>
        <schoolName>강릉영동대학교</schoolName>
        <region>강원도</region>
        <totalCount>444</totalCount>
        <estType>사립</estType>
        <seq>242.0</seq>
    </content>
    <content>
        <campusName>제2캠퍼스</campusName>
        <collegeinfourl></collegeinfourl>
        <schoolType>일반대학</schoolType>
        <link>http://www.gwnu.ac.kr</link>
        <schoolGubun>대학(4년제)</schoolGubun>
        <adres></adres>
        <schoolName>강릉원주대학교</schoolName>
        <region>강원도</region>
        <totalCount>444</totalCount>
        <estType>국립</estType>
        <seq>363.0</seq>
    </content>
    <content>
        <campusName>본교</campusName>
        <collegeinfourl></collegeinfourl>
        <schoolType>일반대학</schoolType>
        <link>http://www.gwnu.ac.kr</link>
        <schoolGubun>대학(4년제)</schoolGubun>
        <adres>강원도 강릉시 죽헌길 7 (지변동, 강릉원주대학교)</adres>
        <schoolName>강릉원주대학교</schoolName>
        <region>강원도</region>
        <totalCount>444</totalCount>
        <estType>국립</estType>
        <seq>8.0</seq>
    </content>
    <content>
        <campusName>본교</campusName>
        <collegeinfourl></collegeinfourl>
        <schoolType>전문대학</schoolType>
        <link>http://www.kt.ac.kr</link>
        <schoolGubun>전문대학</schoolGubun>
        <adres>강원도 태백시 대학길 97 (황지동, 강원관광대학)</adres>
        <schoolName>강원관광대학교</schoolName>
        <region>강원도</region>
        <totalCount>444</totalCount>
        <estType>사립</estType>
        <seq>768.0</seq>
    </content>
</dataSearch>''';

  test('코로나 전체 통계', ()
  {
    final document = XmlDocument.parse(bookshelfXml);
    final contents = document.findAllElements('content');
    var schoolInfo = <SchoolInfoModel>[];
    contents.forEach((node) {
      schoolInfo.add(SchoolInfoModel.fromXml(node));
    });
    print(schoolInfo.length);
    schoolInfo.forEach((school) {
      print('${school.schoolName} : ${school.region}');
    });
  });
}

class SchoolInfoModel{
  String? collegeinfourl;
  String? campusName;
  String? schoolType;
  String? link;
  String? schoolGubun;
  String? adres;
  String? schoolName;
  String? region;
  String? totalCount;
  String? estType;
  String? seq;

  SchoolInfoModel({
    this.collegeinfourl,
    this.campusName,
    this.schoolType,
    this.link,
    this.schoolGubun,
    this.adres,
    this.schoolName,
    this.region,
    this.totalCount,
    this.estType,
    this.seq,
  });
  factory SchoolInfoModel.fromXml(XmlElement xml){
    return SchoolInfoModel(
        collegeinfourl : XmlUtils.searchResult(xml, 'collegeinfourl'),
        campusName : XmlUtils.searchResult(xml, 'campusName'),
        schoolType : XmlUtils.searchResult(xml, 'schoolType'),
        link : XmlUtils.searchResult(xml, 'link'),
        schoolGubun : XmlUtils.searchResult(xml, 'schoolGubun'),
        adres : XmlUtils.searchResult(xml, 'adres'),
        schoolName : XmlUtils.searchResult(xml, 'schoolName'),
        region : XmlUtils.searchResult(xml, 'region'),
        totalCount : XmlUtils.searchResult(xml, 'totalCount'),
        estType : XmlUtils.searchResult(xml, 'estType'),
        seq : XmlUtils.searchResult(xml, 'seq'),
    );
  }
}

class XmlUtils{
  static String searchResult(XmlElement xml, String key){
    return xml.findAllElements(key).map((e) => e.text).isEmpty? "" : xml.findAllElements(key).map((e) => e.text).first;
  }
}