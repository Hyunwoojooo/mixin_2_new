import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:image_picker/image_picker.dart';
import 'package:mixin_2/const/data.dart';

import '../../const/colors.dart';
import '../complete_profile_card_screen/complete_profile_card_screen.dart';

class MakeIntroduceScreen extends StatefulWidget {
  const MakeIntroduceScreen({Key? key}) : super(key: key);

  @override
  State<MakeIntroduceScreen> createState() => _MakeIntroduceScreenState();
}

class _MakeIntroduceScreenState extends State<MakeIntroduceScreen> {
  XFile? _pickedFile;
  final storage = FlutterSecureStorage();
  final String serverUrl = 'http://122.37.227.143:8080/api/user/profile';
  final String serverCategory = 'http://122.37.227.143:8080/api/category';

  final _userNickNameTextEditController = TextEditingController();
  final _userIntroduceTextEditController = TextEditingController();

  Future<String> hintText() async {
    return storage.read(key: 'userName').toString();
  }
  String except(String text){
    text = text.replaceAll('[', '').replaceAll(']', '');
    return text;
  }

  String userNickName = '';
  String userIntroduceText = '';
  String userNickNameLength = '0';
  String userIntroduceTextLength = '0';

  @override
  Widget build(BuildContext context) {
    final _imageSize = MediaQuery
        .of(context)
        .size
        .width / 4;

    void fetchData() async {
      final dio = Dio();
      String? userPosition = await storage.read(key: 'userPosition');
      String? userPersonality = await storage.read(key: 'userPersonality');
      String? userValues = await storage.read(key: 'userValues');
      String? refreshToken = await storage.read(key: REFRESH_TOKEN_KEY);
      except(refreshToken!);

      int userSmileDegree = 50;
      print(refreshToken);
      print(jsonDecode(refreshToken)[0]);
      final Response resp = await dio.post(serverUrl,
          options: Options(
              headers: {
                "Authorization": jsonDecode(refreshToken!)[0],
              }
          ),
          data: {
            "userPosition": userPosition,
            "userPersonality": userPersonality,
            "userValues": userValues,
            "userSmileDegree": userSmileDegree,
            "userIntroduceText": userIntroduceText,
            "userNickName": userNickName,
          });
      print(resp);
    }

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 0.0,
        leading: GestureDetector(
          child: Image.asset('assets/images/back_icon.png'),
          onTap: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: SingleChildScrollView(
        keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.0.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 29.0.h),
                Text(
                  '자신을 표현할 수 있는\n별명, 한마디를 적어주세요',
                  style: TextStyle(
                    fontFamily: 'SUIT',
                    fontWeight: FontWeight.w600,
                    fontSize: 24.0.sp,
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 12.0.h),
                Container(
                  alignment: Alignment.center,
                  width: 203.w,
                  height: 36.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(18.0),
                    color: MIXIN_BLACK_5,
                  ),
                  child: Text(
                    '나중에 작성해주셔도 괜찮아요!',
                    style: TextStyle(
                      fontFamily: 'SUIT',
                      fontWeight: FontWeight.w500,
                      fontSize: 14.0.sp,
                      color: const Color(0xFF51B49F),
                    ),
                  ),
                ),
                SizedBox(height: 47.h),
                SizedBox(
                  width: 80.w,
                  height: 80.h,
                  child: ElevatedButton(
                    onPressed: (){
                      print(userIntroduceText);
                      print(userNickName);
                    },
                    child: Text('asdf'),
                  )
                ),
                // Column(
                //   children: [
                //     const SizedBox(height: 20,),
                //     if (_pickedFile == null)
                //       Container(
                //         constraints: BoxConstraints(
                //           minHeight: _imageSize,
                //           minWidth: _imageSize,
                //         ),
                //         child: GestureDetector(
                //           onTap: () {
                //             _showBottomSheet();
                //           },
                //           child: Center(
                //             child: Icon(
                //               Icons.account_circle,
                //               size: _imageSize,
                //             ),
                //           ),
                //         ),
                //       )
                //     else
                //       Center(
                //         child: Container(
                //           width: _imageSize,
                //           height: _imageSize,
                //           decoration: BoxDecoration(
                //             shape: BoxShape.circle,
                //             border: Border.all(
                //                 width: 2, color: Theme.of(context).colorScheme.primary),
                //             image: DecorationImage(
                //                 image: FileImage(File(_pickedFile!.path)),
                //                 fit: BoxFit.cover),
                //           ),
                //         ),
                //       ),
                //   ],
                // ),
                SizedBox(height: 35.h),
                // 닉네임
                SizedBox(
                  width: 222.w,
                  height: 56.h,
                  child: TextFormField(
                    textAlign: TextAlign.center,
                    scrollPadding: EdgeInsets.zero,
                    cursorColor: Colors.grey,
                    autofocus: false,
                    controller: _userNickNameTextEditController,
                    onChanged: (String value) async {
                      // print(value);
                      setState(() {
                        userNickName = value;
                      });
                      await storage.write(key: 'userNickName', value: userNickName);
                      print(userNickName);
                    },
                    style: TextStyle(
                      fontSize: 16.0.sp,
                      fontFamily: 'SUIT',
                      fontWeight: FontWeight.w500,
                      color: MIXIN_BLACK_1,
                    ),
                    decoration: InputDecoration(
                      hintText: '닉네임',
                      hintStyle: TextStyle(
                        color: MIXIN_BLACK_4,
                        fontSize: 18.0.sp,
                        fontFamily: 'SUIT',
                        fontWeight: FontWeight.w500,
                      ),
                      fillColor: Colors.grey,
                      filled: false,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8.0),
                        borderSide:
                        const BorderSide(color: MIXIN_BLACK_5, width: 1.5),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8.0),
                        borderSide:
                        const BorderSide(color: MIXIN_BLACK_5, width: 1.5),
                      ).copyWith(
                          borderSide: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8.0),
                              borderSide: const BorderSide(
                                  color: MIXIN_BLACK_5, width: 1.5))
                              .borderSide),
                    ),
                  ),
                ),
                // 0/8
                Padding(
                  padding: EdgeInsets.only(left: 200.0.w, top: 4.h),
                  child: Text(
                    '$userNickNameLength/8',
                    style: TextStyle(
                      fontFamily: 'SUIT',
                      fontWeight: FontWeight.w500,
                      fontSize: 12.sp,
                      color: MIXIN_BLACK_4,
                    ),
                  ),
                ),
                SizedBox(height: 33.h),
                // 자기소개
                Container(
                  width: 342.w,
                  height: 160.h,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.0),
                      border: Border.all(color: MIXIN_BLACK_5, width: 1.5)),
                  child: TextFormField(
                    textAlign: TextAlign.start,
                    scrollPadding: EdgeInsets.zero,
                    cursorColor: Colors.grey,
                    obscureText: false,
                    autofocus: false,
                    controller: _userIntroduceTextEditController,
                    onChanged: (String value) async {
                      userIntroduceText = value;
                      setState(() {
                        userIntroduceText = value;
                      });
                      await storage.write(key: 'userIntroduceText', value: userIntroduceText);
                      print(userIntroduceText);
                    },
                    maxLines: 5,
                    style: TextStyle(
                      fontSize: 16.0.sp,
                      fontFamily: 'SUIT',
                      fontWeight: FontWeight.w500,
                      color: MIXIN_BLACK_1,
                    ),
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.symmetric(
                          horizontal: 16.w, vertical: 24.h),
                      hintText: '자기 소개를 작성해주세요.',
                      hintStyle: TextStyle(
                        color: MIXIN_BLACK_4,
                        fontSize: 18.0.sp,
                        fontFamily: 'SUIT',
                        fontWeight: FontWeight.w500,
                      ),
                      fillColor: Colors.grey,
                      filled: false,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8.0),
                        borderSide: const BorderSide(
                          color: Colors.transparent,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8.0),
                        borderSide: const BorderSide(
                          color: Colors.transparent,
                        ),
                      ).copyWith(
                          borderSide: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8.0),
                            borderSide: const BorderSide(
                              color: Colors.transparent,
                            ),
                          ).borderSide
                        // .copyWith(color: Colors.red)),
                      ),
                    ),
                  ),
                ),
                // 0/80
                Padding(
                  padding: EdgeInsets.only(left: 300.0.w, top: 10.h),
                  child: Text(
                    '$userIntroduceTextLength/80',
                    style: TextStyle(
                      fontFamily: 'SUIT',
                      fontWeight: FontWeight.w500,
                      fontSize: 12.sp,
                      color: MIXIN_BLACK_4,
                    ),
                  ),
                ),
                SizedBox(height: 63.h),
                // 버튼
                Center(
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: MIXIN_POINT_COLOR,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8.0)),
                        elevation: 0.0),
                    onPressed: () async {
                      print('userNickName : $userNickName');
                      print('userIntroduceText: $userIntroduceText');
                      fetchData();
                      if (!mounted) return;
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) =>
                          const CompleteProfileCardScreen(),
                        ),
                      );
                    },
                    child: SizedBox(
                      width: 342.w,
                      height: 56.h,
                      child: Center(
                        child: Text(
                          '다음',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18.sp,
                            fontFamily: 'SUIT',
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

// _showBottomSheet() {
//   return showModalBottomSheet(
//     context: context,
//     shape: const RoundedRectangleBorder(
//       borderRadius: BorderRadius.vertical(
//         top: Radius.circular(25),
//       ),
//     ),
//     builder: (context) {
//       return Column(
//         mainAxisSize: MainAxisSize.min,
//         children: [
//           const SizedBox(
//             height: 20,
//           ),
//           ElevatedButton(
//             onPressed: () => _getCameraImage(),
//             child: const Text('사진찍기'),
//           ),
//           const SizedBox(
//             height: 10,
//           ),
//           const Divider(
//             thickness: 3,
//           ),
//           const SizedBox(
//             height: 10,
//           ),
//           ElevatedButton(
//             onPressed: () => _getPhotoLibraryImage(),
//             child: const Text('라이브러리에서 불러오기'),
//           ),
//           const SizedBox(
//             height: 20,
//           ),
//         ],
//       );
//     },
//   );
// }
//
// _getCameraImage() async {
//   final pickedFile =
//   await ImagePicker().pickImage(source: ImageSource.camera);
//   if (pickedFile != null) {
//     setState(() {
//       _pickedFile = pickedFile;
//     });
//   } else {
//     if (kDebugMode) {
//       print('이미지 선택안함');
//     }
//   }
// }
// _getPhotoLibraryImage() async {
//   final pickedFile =
//   await ImagePicker().pickImage(source: ImageSource.gallery);
//   if (pickedFile != null) {
//     setState(() {
//       _pickedFile = _pickedFile;
//     });
//   } else {
//     if (kDebugMode) {
//       print('이미지 선택안함');
//     }
//   }
// }
}
