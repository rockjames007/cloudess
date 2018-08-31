import 'package:flutter/material.dart';
void main() => runApp(HomeFragment());
class HomeFragment extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomPadding: false,
      body: new Stack(fit: StackFit.expand, children: <Widget>[
        new Image(
          image: new AssetImage("assets/backgroundcolor.png"),
          fit: BoxFit.cover,
        ),
      ],
      ),
    );
  }
}
