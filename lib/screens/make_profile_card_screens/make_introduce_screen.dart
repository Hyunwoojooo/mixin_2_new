import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';
import 'package:mixin_2/layout/custom_floating_action_button.dart';

import '../../const/colors.dart';
import '../complete_profile_card_screen/complete_profile_card_screen.dart';

class MakeIntroduceScreen extends StatefulWidget {
  const MakeIntroduceScreen({Key? key}) : super(key: key);

  @override
  State<MakeIntroduceScreen> createState() => _MakeIntroduceScreenState();
}

class _MakeIntroduceScreenState extends State<MakeIntroduceScreen> {

  XFile? _pickedFile;


  @override
  Widget build(BuildContext context) {

    final _imageSize = MediaQuery.of(context).size.width / 4;
    String userNickName = '';
    String userNickNameLength = '0';

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
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: const CustomFloatingActionButton(
        onPressed: null,
      ),
      body: SingleChildScrollView(
        keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(height: 29.0),
                const Text(
                  '자신을 표현할 수 있는\n별명, 한마디를 적어주세요.',
                  style: TextStyle(
                    fontFamily: 'SUIT',
                    fontWeight: FontWeight.w600,
                    fontSize: 24.0,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 12.0),
                Container(
                  alignment: Alignment.center,
                  width: 81,
                  height: 36,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(18.0),
                    color: MIXIN_BLACK_5,
                  ),
                  child: const Text(
                    '성격/특성',
                    style: TextStyle(
                      fontFamily: 'SUIT',
                      fontWeight: FontWeight.w500,
                      fontSize: 14.0,
                      color: Color(0xFF51B49F),
                    ),
                  ),
                ),
                const SizedBox(height: 47),
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
                const SizedBox(height: 35),
                SizedBox(
                  width: 222,
                  height: 77,
                  child: TextFormField(
                    textAlign: TextAlign.center,
                    scrollPadding: EdgeInsets.all(0.0),
                    maxLength: 5,
                    // inputFormatters: [
                    //   LengthLimitingTextInputFormatter(5),
                    // ],
                    cursorColor: Colors.grey,
                    obscureText: false,
                    autofocus: false,
                    onChanged: (String value) {
                      userNickName = value;
                      userNickNameLength = userNickName.length.toString();
                    },
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.all(20),
                      hintText: '정지수',
                      hintStyle: const TextStyle(
                        color: MIXIN_BLACK_4,
                        fontSize: 18.0,
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
                          BorderSide(color: MIXIN_BLACK_5, width: 1.5)),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8.0),
                          borderSide:
                          BorderSide(color: MIXIN_BLACK_5, width: 1.5))
                          .copyWith(
                          borderSide: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8.0),
                              borderSide: BorderSide(
                                  color: MIXIN_BLACK_5, width: 1.5))
                              .borderSide
                        // .copyWith(color: Colors.red)),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 36),
                Container(
                  constraints: BoxConstraints.expand(
                    width: 342,
                    height: 160
                  ),
                  width: 342,
                  height: 160,
                  child: TextFormField(
                    textAlign: TextAlign.start,
                    scrollPadding: EdgeInsets.all(0.0),
                    cursorColor: Colors.grey,
                    obscureText: false,
                    autofocus: true,
                    onChanged: (String value) {
                      userNickName = value;
                    },
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.all(20),
                      hintText: '자기 소개를 작성해주세요.',
                      hintStyle: const TextStyle(
                        color: MIXIN_BLACK_4,
                        fontSize: 18.0,
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
                          BorderSide(color: MIXIN_BLACK_5, width: 1.5)),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8.0),
                          borderSide:
                          BorderSide(color: MIXIN_BLACK_5, width: 1.5))
                          .copyWith(
                          borderSide: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8.0),
                              borderSide: BorderSide(
                                  color: MIXIN_BLACK_5, width: 1.5))
                              .borderSide
                        // .copyWith(color: Colors.red)),
                      ),
                    ),
                  ),
                ),
                Center(
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        primary: MIXIN_POINT_COLOR,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8.0)),
                        elevation: 0.0),
                    onPressed: () async {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                            builder: (context) => CompleteProfileCardScreen()),
                      );
                    },
                    child: Container(
                      width: 342,
                      height: 56,
                      child: Center(
                        child: Text(
                          '다음',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontFamily: 'SUIT',
                              fontWeight: FontWeight.w600),
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

