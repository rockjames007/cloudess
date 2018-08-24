import 'package:flutter/material.dart';
import 'splashscreen.dart';
import 'package:flutter/services.dart';
import 'loginpage.dart';
import 'dart:async';
void main(){
  ///
  /// Force the layout to Portrait mode
  ///
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown
  ]);

  runApp(new MyApp());

}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

      return new MaterialApp
        (
          theme: new ThemeData
            (
              primarySwatch: Colors.blue
            ),
        home: new Splash(),
        routes: <String, WidgetBuilder>{
          '/LoginPage': (BuildContext context) => new LoginPage()
        },
      );
    }
}

class Splash extends StatefulWidget {
  @override
  _SplashState createState() => new _SplashState();

}

class _SplashState extends State<Splash>
{
  startTime() async {
    var _duration = new Duration(seconds: 4);
    return new Timer(_duration, navigationPage);
  }

  void navigationPage() {
    Navigator.of(context).pushReplacementNamed('/LoginPage');
  }

  @override
  void initState() {
    super.initState();
    startTime();
  }
  @override
  Widget build(BuildContext context) {
      return new Scaffold(
       body: new Container(
         decoration: new BoxDecoration(
           image: new DecorationImage(
               image: AssetImage("assets/backgroundcolor.png"),
               fit: BoxFit.cover,
           )
         ),
         child: LogoApp(),
       ),
      );

    }
}
