import 'package:flutter/material.dart';

class PasswordTextField extends StatefulWidget {

  final TextEditingController controller;
  final InputDecoration inputDecoration;
  final bool obscureText;

  const PasswordTextField({
    super.key,
    required this.controller,
    required this.inputDecoration,
    required this.obscureText,
  });

  @override
  PasswordTextFieldState createState() => PasswordTextFieldState();
}

class PasswordTextFieldState extends State<PasswordTextField> {
  bool passwordVisibility = true;


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0),
      child: TextField(
        controller: widget.controller,
        obscureText: widget.obscureText,
        enableSuggestions: false,
        autocorrect: false,
        enableInteractiveSelection: false,
        style: const TextStyle(color: Color.fromARGB(255, 113, 110, 110)),
        cursorColor: const Color.fromARGB(255, 113, 110, 110),
        decoration: widget.inputDecoration,
      ),
    );
  }
}
