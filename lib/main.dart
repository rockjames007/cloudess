import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:xmplaressflutter/auth_provider.dart';
import 'package:xmplaressflutter/auth.dart';
import 'package:xmplaressflutter/root_page.dart';
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
    return AuthProvider(
      auth:Auth(),
      child: MaterialApp(
        home: RootPage(),
      ),

    );
  }
}