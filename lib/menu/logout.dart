import 'package:flutter/material.dart';
import 'package:xmplaressflutter/auth_provider.dart';

class Logout extends StatelessWidget{
  Logout({this.onSignedOut});
  final VoidCallback onSignedOut;

  void _signOut(BuildContext context) async {
    try {
      var auth = AuthProvider.of(context).auth;
      await auth.signOut();
      onSignedOut();
    } catch (e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
   return Scaffold(
     body: Logout()
   );
  }
}