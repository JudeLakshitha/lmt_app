import 'package:flutter/material.dart';

class CustomTextStyle extends StatelessWidget {
  final String text;
  final double fontSize;
  final FontWeight fontWeight;
  final Color color;
  final TextAlign textAlignment;
  //final double wordSpacing;
  //final VoidCallback onClick;

  const CustomTextStyle(
      {super.key,
      required this.text,
      required this.fontSize,
      required this.fontWeight,
      required this.color,
      required this.textAlignment
      //required this.wordSpacing,
      //required this.onClick,
      });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlignment,
      style: TextStyle(
        fontSize: fontSize,
        fontWeight: fontWeight,
        color: color,

      ),
    );
  }
}
