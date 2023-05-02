import 'package:flutter/material.dart';

class CustomFloatingActionButton extends StatelessWidget {
  final Color? fillColor;
  final VoidCallback? onPressed;
  final String? text;

  const CustomFloatingActionButton({
    required this.onPressed,
    this.fillColor,
    this.text,
    Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8.0),
          boxShadow: const [
            BoxShadow(
              color: Colors.white,
              spreadRadius: 0.0,
              blurRadius: 0.0,
            ),
          ]
      ),
      width: 342,
      height: 56,
      child: RawMaterialButton(
        fillColor: fillColor,
        elevation: 0.0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.0),
        ),
        onPressed: onPressed,
        child: Text(
          '$text',
          style: const TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontFamily: 'SUIT',
              fontWeight: FontWeight.w600
          ),
        ),
      ),
    );
  }
}
