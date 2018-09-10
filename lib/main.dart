import 'package:flutter/material.dart';
import 'package:xmplaressflutter/login/loginpage.dart';
import 'package:flutter/services.dart';
void main() {
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown
  ]);
  runApp(mainPage());
}
class mainPage extends StatelessWidget
{
  /*AnimationController _controller;
   Animation<double> _animation;
   bool upDown = true;*/
  @override
  Widget build(BuildContext context) {
    return MaterialApp
      ( debugShowCheckedModeBanner: false,
        home: new Login(),

    );
  }
}