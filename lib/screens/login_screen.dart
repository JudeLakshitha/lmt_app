import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:lmt_app/components/baseAppBar.dart';
import 'package:lmt_app/components/button.dart';
import 'package:lmt_app/components/passwordTextField.dart';
import 'package:lmt_app/components/textField.dart';
import 'package:lmt_app/components/customTextStyle.dart';
import 'package:email_validator/email_validator.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({super.key});

  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  LoginScreenState createState() => LoginScreenState();
}

class LoginScreenState extends State<LoginScreen> {
  //final _text = TextEditingController();
  bool _userNameValidate = false;
  bool _passwordValidate = false;
  bool passwordVisibility = false;

  void signUserIn() {
    if (kDebugMode) {
      print(
          "username/password-------->>$widget.usernameController/$widget.passwordController");
    }
    setState(() {
      widget.usernameController.text.isEmpty
          ? _userNameValidate = true
          : _userNameValidate = false;
      widget.passwordController.text.isEmpty
          ? _passwordValidate = true
          : _passwordValidate = false;
    });
  }

  @override
  void dispose() {
    //widget.usernameController.dispose();
    widget.passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    //final keyboardSpace = MediaQuery.of(context).viewInsets.bottom;
    //padding:  EdgeInsets.fromLTRB(16, 48, 16, keyboardSpace + 16),
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: BaseAppBar(
        appBar: AppBar(),
        title: const Text(''),
      ),
      body: SafeArea(
        child: SizedBox(
          width: screenWidth,
          height: screenHeight,
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                Image.asset('assets/images/login_screen_center_image.png'),
                const SizedBox(height: 10),
                const CustomTextStyle(
                    text: 'Login',
                    textAlignment: TextAlign.center,
                    fontSize: 35,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 113, 110, 110)),
                const SizedBox(height: 10),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 25.0),
                  child: CustomTextStyle(
                      text: 'Welcome to Lanka Money Transfer',
                      textAlignment: TextAlign.center,
                      fontSize: 16,
                      fontWeight: FontWeight.normal,
                      color: Color.fromARGB(255, 116, 114, 114)),
                ),
                const SizedBox(height: 10, width: 0),
                const Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 25.0),
                    child: CustomTextStyle(
                        text: 'Username',
                        textAlignment: TextAlign.left,
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: Color.fromARGB(255, 55, 177, 74)),
                  ),
                ),
                CommonTextField(
                  // onTap: () {
                  //   _userNameValidate = false;
                  //   print("Pressed Username");
                  // },
                  textInputType: TextInputType.emailAddress,
                  controller: widget.usernameController,
                  obscureText: false,
                  textStyle: const TextStyle(
                      color: Color.fromARGB(255, 113, 110, 110)),
                  inputDecoration: InputDecoration(
                    // prefixIcon: const Icon(Icons.alternate_email,
                    //     color: Color.fromARGB(255, 113, 110, 110)),
                    errorText:
                        _userNameValidate ? 'Username cannot be Empty' : null,
                    errorBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.red),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    focusedErrorBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.red),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    prefixIcon: const ImageIcon(
                      AssetImage("assets/icons/icon_at.png"),
                    ),
                    prefixIconColor: const Color.fromARGB(255, 113, 110, 110),
                    suffixIcon: const Icon(Icons.check_circle_outline),
                    suffixIconColor: const Color.fromARGB(255, 55, 177, 74),
                    // need to change color when validating the input
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey.shade400),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey.shade400),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    filled: false,
                  ),
                ),
                const SizedBox(height: 10),
                const Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 25.0),
                    child: CustomTextStyle(
                        text: 'Password',
                        textAlignment: TextAlign.left,
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: Color.fromARGB(255, 55, 177, 74)),
                  ),
                ),
                PasswordTextField(
                  controller: widget.passwordController,
                  obscureText: passwordVisibility,
                  inputDecoration: InputDecoration(
                      // prefixIcon: const Icon(
                      //   Icons.key_outlined,
                      //   color: Color.fromARGB(255, 113, 110, 110),
                      // ),
                      errorText:
                          _passwordValidate ? 'Password cannot be Empty' : null,
                      errorBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.red),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      focusedErrorBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.red),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      prefixIcon: const ImageIcon(
                        AssetImage("assets/icons/icon_password.png"),
                      ),
                      prefixIconColor: const Color.fromARGB(255, 113, 110, 110),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey.shade400),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey.shade400),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      suffixIcon: IconButton(
                        icon: Icon(passwordVisibility
                            ? Icons.visibility
                            : Icons.visibility_off),
                        color: const Color.fromARGB(255, 55, 177, 74),
                        splashColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        onPressed: () {
                          setState(() {
                            passwordVisibility = !passwordVisibility;
                            //print("password visibility---------->>$passwordVisibility");
                          });
                        },
                      ),
                      filled: false),
                ),
                const SizedBox(height: 20),
                CommonButton(
                  //onTap: signUserIn,
                  onTap: signUserIn,
                  text: 'Login',
                  boxDecoration: BoxDecoration(
                    color: const Color.fromARGB(255, 55, 177, 74),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  textAlignment: TextAlign.center,
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
                const SizedBox(height: 20),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomTextStyle(
                        text: 'Cannot remember password?',
                        textAlignment: TextAlign.center,
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                        color: Colors.grey),
                    SizedBox(width: 5),
                    CustomTextStyle(
                        text: 'Reset password?',
                        textAlignment: TextAlign.right,
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                        color: Color.fromARGB(255, 55, 177, 74)),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
