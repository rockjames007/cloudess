import 'package:flutter/material.dart';
import 'package:xmplaressflutter/menu/fragment/Personalinfo/info/infoFragment/AlertBox/AddTrainingDetails.dart';
import 'package:flutter/services.dart';
void main() => runApp(TrainingDetailsFragment());
class TrainingDetailsFragment extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        body:new Container(
          color: Color.fromRGBO(13, 80, 121 , 1.0),
          child: new Column(
            children: <Widget>[
              Container(
                decoration: BoxDecoration(
                  color: Colors.blue.shade100,
                ),
                child:  ListTile(
                  title:Text('Training Details',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 21.0),),
                  dense: true,
                  trailing: FloatingActionButton(onPressed:(){showDialog(context: context,builder: (BuildContext context){
                    HapticFeedback.vibrate();
                    return AddTrainingDetails();
                  } );},child: Icon(Icons.add),mini: true,),
                ),
              ),
              ConstrainedBox(
                constraints:new BoxConstraints
                  (
                  maxHeight: 300.0,
                  maxWidth: 350.0,
                  minHeight: 300.0,
                  minWidth: 350.0,
                ),
                child: new DecoratedBox(
                  decoration: new BoxDecoration
                    (
                  ),
                  child: Column(
                    children: <Widget>[

                    ],
                  ),
                ),
              ),
            ],
          ),
        )

    );
  }
}
