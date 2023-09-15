import 'package:flutter/material.dart';

class CommonButton extends StatelessWidget {
  final String text;
  final Color color;
  final double fontSize;
  final FontWeight fontWeight;
  final TextAlign textAlignment;
  final BoxDecoration boxDecoration;

  Function()? onTap;

  CommonButton({
    super.key,
    required this.onTap,
    required this.text,
    required this.color,
    required this.fontSize,
    required this.fontWeight,
    required this.textAlignment,
    required this.boxDecoration,
  });

  @override
  Widget build(context) {
    return GestureDetector(
        onTap: onTap,
        child: Container(
          padding: const EdgeInsets.all(18.0),
          margin: const EdgeInsets.symmetric(horizontal: 25),
          decoration: boxDecoration,
          child: Center(
            child: Text(
              text,
              textAlign: textAlignment,
              style: TextStyle(
                color: color,
                fontWeight: fontWeight,
                fontSize: fontSize,
              ),
            ),
          ),
        ));
  }
}
