import 'package:flutter/material.dart';
import 'package:xmplaressflutter/menu/fragment/Personalinfo/TrainingDetails/AlertBox/AddTrainingDetails.dart';
import 'package:flutter/services.dart';
void main() => runApp(TrainingDetailsFragment());
class TrainingDetailsFragment extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        floatingActionButton:FloatingActionButton(onPressed:(){showDialog(context: context,builder: (BuildContext context){
          HapticFeedback.vibrate();
          return AddTrainingDetails();
        } );},child: Icon(Icons.add)) ,
        body:new Container(
          color: Color.fromRGBO(13, 80, 121 , 1.0),
          child: new Column(
            children: <Widget>[
              Container(
                decoration: BoxDecoration(
                  color: Colors.blue.shade100,
                ),
                child:  ListTile(
                  title:Text('Training Details',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18.0),),
                  dense: true,
                ),
              ),
            ],
          ),
        )

    );
  }
}
