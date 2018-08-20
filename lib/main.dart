import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget
{
  /*AnimationController _controller;
   Animation<double> _animation;
   bool upDown = true;*/
  @override
  Widget build(BuildContext context) {
    return MaterialApp
      (
        home: new LoginPage(),
        theme: new ThemeData
          (
            primarySwatch: Colors.blue
        )
    );
  }
}
class LoginPage extends StatefulWidget
{
  @override
  State createState() => new LoginPageState();
}


class LoginPageState extends State<LoginPage>
    with SingleTickerProviderStateMixin {
  Animation<double> _iconAnimation;
  AnimationController _iconAnimationController;

  @override
    void initState() {
      super.initState();
      _iconAnimationController = new AnimationController(
          vsync: this, duration: new Duration(milliseconds: 500));
      _iconAnimation = new CurvedAnimation(
        parent: _iconAnimationController,
        curve: Curves.bounceOut,
      );
      _iconAnimation.addListener(() => this.setState(() {}));
      _iconAnimationController.forward();

  }

  @override
  Widget build(BuildContext context) {

    return new Scaffold(
      backgroundColor: Colors.white,
      body: new Stack(fit: StackFit.expand, children: <Widget>[
        new Image(
          image: new AssetImage("assets/backgroundcolor.png"),
          fit: BoxFit.cover,
        ),
        new Theme(
          data: new ThemeData(
              brightness: Brightness.dark,
              inputDecorationTheme: new InputDecorationTheme(
                // hintStyle: new TextStyle(color: Colors.blue, fontSize: 20.0),
                labelStyle:
                new TextStyle(color: Colors.tealAccent, fontSize: 25.0),
              )),
          isMaterialAppTheme: true,
          child: new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new AnimatedBuilder(

                  animation: _iconAnimation,
                    builder: (BuildContext context, Widget _iconAnimation)
                    {
                      return Container(
                          decoration:new BoxDecoration
                            (
                              image: new DecorationImage
                              (
                                  image: new AssetImage("assets/xmplarlogo.png"),
                                  alignment: Alignment(0.0,-0.3),
                              )
                            )
                      );
                    },
                  child: null),

                new Container(
                child: new Form(
                  autovalidate: true,
                  child: new Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      new TextFormField(
                        decoration: new InputDecoration(
                            labelText: "Enter Username", fillColor: Colors.white),
                        keyboardType: TextInputType.emailAddress,

                      ),
                      new TextFormField(
                        decoration: new InputDecoration(
                          labelText: "Enter Password",
                        ),
                        obscureText: true,
                        keyboardType: TextInputType.text,
                      ),
                      new Padding(
                        padding: const EdgeInsets.only(top: 60.0),
                      ),

                   new SizedBox
                      (
                        width: 200.0,
                        height: 50.0,
                        child: new RaisedButton
                        (
                          child: new Text('login'),
                          elevation: 30.0,
                          color: Colors.blueAccent,
                          splashColor: Colors.tealAccent,
                          textColor: Colors.white,
                          shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(30.0)),
                          onPressed: () {},
                        ),
                      )
                      ]
                     ),
                  ),
                ),
            ],
          ),
        ),
      ]),
    );
  }
}

