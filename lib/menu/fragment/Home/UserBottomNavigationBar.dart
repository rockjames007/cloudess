import 'package:flutter/material.dart';
void main() => runApp(UserBottomNavigationBar());
class UserBottomNavigationBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      bottomNavigationBar: BottomNavigationBar
        (
        type: BottomNavigationBarType.fixed,

        items:
        [
          BottomNavigationBarItem
            (
            icon: new Icon(Icons.info),
            title: new Text('Info', textScaleFactor: 0.7,),

          ),
          BottomNavigationBarItem
            (
            icon: new Icon(Icons.school),
            title: new Text('Qualification', textScaleFactor: 0.7,),
          ),
          BottomNavigationBarItem
            (
              icon: Icon(Icons.picture_as_pdf),
              title: Text('Document', textScaleFactor: 0.7,)
          ),
          BottomNavigationBarItem
            (
              icon: Icon(Icons.account_balance),
              title: Text('Bank Details', textScaleFactor: 0.7,)
          ),
          BottomNavigationBarItem
            (
              icon: Icon(Icons.verified_user),
              title: Text('Fixed Asset', textScaleFactor: 0.7,)
          ),
          BottomNavigationBarItem
            (
              icon: Icon(Icons.people),
              title: Text('Family', textScaleFactor: 0.7,)
          ),
        ],

      ),
    );
  }
}