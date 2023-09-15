import 'package:flutter/material.dart';
import 'package:lmt_app/screens/loginScreen_2.dart';
import 'package:lmt_app/screens/login_screen.dart';
import 'package:lmt_app/screens/login_screen.dart';
import 'package:flutter/services.dart';

void main() {
  // WidgetsFlutterBinding.ensureInitialized();
  // SystemChrome.setPreferredOrientations([
  //   DeviceOrientation.portraitUp,
  // ]).then((fn) {
  //   runApp(const MyApp());
  // });
  runApp(const MyApp());

}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      //home: LoginScreen(),
      home: LoginScreen2(),
    );
  }
}
