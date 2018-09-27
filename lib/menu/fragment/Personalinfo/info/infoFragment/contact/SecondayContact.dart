import 'package:flutter/material.dart';
import 'package:xmplaressflutter/menu/fragment/Personalinfo/info/infoFragment/AlertBox/EditSecondaryContactDetails.dart';
import 'package:flutter/services.dart';
void main() => runApp(SecondaryContact());
class SecondaryContact extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body:new DecoratedBox(
        decoration: new BoxDecoration
          (
        ),
        child: Column(
          children: <Widget>[
            Container(
              height: 50.0,
              decoration: BoxDecoration(
                color: Colors.red.shade200,
              ),
              child: ListTile(
                title: Text('Secondary Contact Details', style: TextStyle(
                    fontWeight: FontWeight.bold, fontSize: 18.0),),
                trailing: FloatingActionButton(
                  onPressed:(){showDialog(context:context,builder:(BuildContext context){HapticFeedback.vibrate();return EditSecondaryContactDetails();});}, child: Icon(Icons.edit), mini: true,),
              ),
            ),
            Container(
                color: Color.fromRGBO(255, 237, 232, 1.0),
                child:
                ListTile(
                  title: Column(
                    children: <Widget>[
                      Text("Postal Address:", style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 15.0),),
                      Text(
                        "#206, sanjeevini desai, channasandra main road, hope farm circle, whitefield BANGALORE, KA 560066 India",
                        style: TextStyle(fontSize: 15.0),
                        textAlign: TextAlign.center,)
                    ],
                  ),
                )
            ),
            Container(
                color: Color.fromRGBO(253, 244, 240, 1.0),
                child:
                ListTile(
                  title: Column(
                    children: <Widget>[
                      Text("Phone Number:", style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 15.0),),
                      Text("9916266228", style: TextStyle(fontSize: 15.0),)
                    ],
                  ),
                )
            ),
            Container(
                color: Color.fromRGBO(255, 237, 232, 1.0),
                child:
                ListTile(
                  title: Column(
                    children: <Widget>[
                      Text("Email:", style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 15.0),),
                      Text("dipujames7@gmail.com",
                        style: TextStyle(fontSize: 15.0),),
                    ],
                  ),
                )
            ),

          ],
        ),
      ),
    );
  }
}