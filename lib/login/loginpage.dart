import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:xmplaressflutter/menu/menu.dart';
void main(){
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown
  ]);
  runApp(Login());
}

class Login extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    return Scaffold
      (
       body: new Container
         (
         decoration: BoxDecoration(
           image: DecorationImage(image: AssetImage("assets/backgroundcolor.png"),
               fit: BoxFit.cover,
           )
         ),
         child: Center(
           child: Column(
             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
             children: <Widget>[Image.asset(
           'assets/xmplarlogo.png',
               height: 150.0,),
             new Container(
               child: new Form(
                 autovalidate: true,
                 child: new Column(
                     mainAxisAlignment: MainAxisAlignment.start,
                     mainAxisSize: MainAxisSize.max,
                     children: <Widget>[
                       new Padding(
                         padding: const EdgeInsets.only(top: 10.0),
                       ),
                       new TextFormField(
                         style: TextStyle(color: Colors.white),
                         decoration: new InputDecoration(
                             filled: false,

                             prefixIcon: Icon(Icons.person,color: Colors.white,),
                             isDense: true,
                             border: new OutlineInputBorder(
                               borderSide: BorderSide(color: Colors.white),
                               borderRadius: BorderRadius.all(Radius.circular(10.0)),

                             ),

                             labelText: "Username", fillColor: Colors.black.withOpacity(0.1),labelStyle: TextStyle(color: Colors.white.withOpacity(.8),fontSize: 20.0)),
                         keyboardType: TextInputType.emailAddress,
                       ),
                       new Padding(
                         padding: const EdgeInsets.only(top: 10.0),
                       ),
                       new TextFormField(
                         style: TextStyle(color: Colors.white),
                         decoration: new InputDecoration(
                             filled: false,

                             prefixIcon: Icon(Icons.lock,color: Colors.white,),
                             isDense: true,
                             border: new OutlineInputBorder(
                                 borderRadius: BorderRadius.all(Radius.circular(10.0),
                                 )
                             ),
                             labelText: "Password",fillColor: Colors.black.withOpacity(0.1),labelStyle: TextStyle(color: Colors.white.withOpacity(.8),fontSize: 20.0)

                         ),
                         obscureText: true,
                         keyboardType: TextInputType.text,
                       ),
                       new Padding(
                         padding: const EdgeInsets.only(bottom: 10.0),
                       ),
                       new SizedBox
                         (
                         width: 200.0,
                         height: 50.0,
                         child: new RaisedButton
                           (
                           child: new Text('login'),
                           elevation: 30.0,
                           color: Colors.blue.withOpacity(0.7),
                           splashColor: Colors.blue,
                           textColor: Colors.white,
                           shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(30.0)),
                           onPressed: () {runApp(menu(0));},
                         ),
                       )
                     ]
                 ),
               ),
             ),
             ],
           ),
         ),
         ),

    );
  }
}