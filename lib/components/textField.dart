import 'package:flutter/material.dart';

class CommonTextField extends StatefulWidget {
  final TextEditingController controller;
  final bool obscureText;
  final InputDecoration inputDecoration;
  final TextStyle textStyle;
  final TextInputType textInputType;
  //final VoidCallback? onTap;

  const CommonTextField(
      {super.key,
      required this.controller,
      required this.obscureText,
      required this.inputDecoration,
      required this.textStyle,
      required this.textInputType,
      //this.onTap
      });

  @override
  CommonTextFieldState createState() => CommonTextFieldState();
}

class CommonTextFieldState extends State<CommonTextField> {
  final _text = TextEditingController();
  bool _validate = false;

  @override
  void dispose() {
    _text.dispose();
    super.dispose();
  }

  @override
  Widget build(context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0),
      child: TextField(
        controller: widget.controller,
        obscureText: widget.obscureText,
        decoration: widget.inputDecoration,
        style: widget.textStyle,
        keyboardType: widget.textInputType,
        cursorColor: const Color.fromARGB(255, 113, 110, 110),
        //onTap: widget.onTap,
      ),
    );
  }
}
