import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget
{  AnimationController _controller;
   Animation<double> _animation;
   bool upDown = true;
  @override
  Widget build(BuildContext context)
  {
      return MaterialApp
      (
          title: 'XMPLAR ESS',
          home: new Scaffold
          (

              body: new Container
              (
                  decoration:new BoxDecoration
                  (

                    image: new DecorationImage
                      (
                        image: new AssetImage("assets/backgroundcolor.png"),
                         fit: BoxFit.cover,
                      ),
                  ),
                  child:
                    Container
                    (
                     decoration: new BoxDecoration
                       (

                         image: new DecorationImage
                         (
                           image: new AssetImage("assets/xmplarlogo.png"),
                           alignment: Alignment(0.0,-0.3),
                         ),
                       ),
                    )
              )
          ),
      );
  }
}