import 'package:flutter/material.dart';

class BackProfileCardScreen extends StatelessWidget {
  const BackProfileCardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 342,
      height: 425,
      padding: EdgeInsets.fromLTRB(32, 29, 32, 32),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(23.0),
        color: Colors.white,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Row(
            children: [
              Container(
                width: 48,
                height: 48,
                decoration: const BoxDecoration(
                    shape: BoxShape.circle, color: Colors.grey),
              ),
              const SizedBox(
                width: 14.0,
              ),
              Text(
                '먼지이이잉',
                style: TextStyle(
                  fontFamily: 'SUIT',
                  fontWeight: FontWeight.w600,
                  fontSize: 18.0,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 16.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TextButton(
                onPressed: (){},
                child: Text(
                  '참여유형',
                  style: TextStyle(
                    fontFamily: 'SUIT',
                    fontWeight: FontWeight.w600,
                    fontSize: 16.0,
                    color: Colors.black,
                  ),
                ),
              ),
              TextButton(
                onPressed: (){},
                child: Text(
                  '성격/특성',
                  style: TextStyle(
                    fontFamily: 'SUIT',
                    fontWeight: FontWeight.w600,
                    fontSize: 16.0,
                    color: Colors.black,
                  ),
                ),
              ),
              TextButton(
                onPressed: (){},
                child: Text(
                  '가치관',
                  style: TextStyle(
                    fontFamily: 'SUIT',
                    fontWeight: FontWeight.w600,
                    fontSize: 16.0,
                    color: Colors.black,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 20,
            width: 20,
            child: PageView(
              children: [
                Container(
                  width: 200,
                  height: 51,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(36.0),
                    gradient: const LinearGradient(
                        colors: [
                          Color(0xFFFFFFFF),
                          Color(0xFF8DCAC2),
                        ]),
                  ),
                  child: Column(
                    children: [
                      Text('아아아'),
                      Text('dfdfadf')
                    ],
                  ),
                ),
                Container(
                  width: 200,
                  height: 51,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(36.0),
                    gradient: const LinearGradient(
                        colors: [
                          Color(0xFFFFFFFF),
                          Color(0xFF8DCAC2),
                        ]),
                  ),
                  child: Column(
                    children: [
                      Text('아아아'),
                      Text('dfdfadf')
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
