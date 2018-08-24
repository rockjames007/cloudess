import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
void main() => runApp(Login());

class Login extends StatelessWidget
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
  LoginPageState createState() => new LoginPageState();
}


class LoginPageState extends State<LoginPage>
{
  @override
  Widget build(BuildContext context) {

    return new Scaffold(
      backgroundColor: Colors.white,
        resizeToAvoidBottomPadding:false,
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
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
             Image.asset(
                 'assets/xmplarlogo.png',
                 alignment: Alignment(0.0, -1.5),
                 width: 200.0,
                 height: 200.0,
              )
             ,

              new Container(
                padding: const EdgeInsets.all(10.0),
                child: new Form(
                  autovalidate: true,
                  child: new Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        new TextFormField(
                          decoration: new InputDecoration(
                            filled: true,
                              labelText: "Username", fillColor: Colors.black.withOpacity(0.1),labelStyle: TextStyle(color: Colors.white.withOpacity(.8),fontSize: 20.0)),
                          keyboardType: TextInputType.emailAddress,

                        ),
                        new TextFormField(
                          decoration: new InputDecoration(
                            filled: true,
                            labelText: "Password",fillColor: Colors.black.withOpacity(0.1),labelStyle: TextStyle(color: Colors.white.withOpacity(.8),fontSize: 20.0)

                          ),
                          obscureText: true,
                          keyboardType: TextInputType.text,
                        ),
                        new Padding(
                          padding: const EdgeInsets.only(top: 100.0),
                        ),

                        new SizedBox
                          (
                          width: 200.0,
                          height: 50.0,
                          child: new RaisedButton
                            (
                            child: new Text('login'),
                            elevation: 30.0,
                            color: Colors.blueGrey,
                            splashColor: Colors.blue,
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