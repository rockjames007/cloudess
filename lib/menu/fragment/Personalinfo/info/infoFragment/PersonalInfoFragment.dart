import 'package:flutter/material.dart';
import 'package:xmplaressflutter/menu/fragment/Personalinfo/info/infoFragment/AlertBox/EditPersonInfo.dart';
import 'package:flutter/services.dart';
void main() => runApp(PersonalInfoFragment());
class PersonalInfoFragment extends StatelessWidget {
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
                  dense: true,
                    title:Text('Personal Info',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 21.0),),
                  trailing: FloatingActionButton(elevation: 22.0,mini: true,child:new Icon(Icons.edit),onPressed:(){showDialog(context: context,builder: (BuildContext context){HapticFeedback.vibrate();return EditPersonInfo();
                  });}
                  ),

                ),
              ),
             ConstrainedBox(
               constraints:new BoxConstraints
                 (
                 maxHeight: 450.0,
                 maxWidth: 350.0,
                 minHeight: 450.0,
                 minWidth: 350.0,
               ),
                 child: new DecoratedBox(
                   decoration: new BoxDecoration
                     (
                     ),
                   child: Column(
                     children: <Widget>[
                       Container(
                         color: Color.fromRGBO(224, 251, 253, 1.0),
                           height: 33.0,
                      child:ListTile(
                        dense: true,
                         title:Row(
                           crossAxisAlignment: CrossAxisAlignment.stretch,
                           children: <Widget>
                           [
                             Text("Gender:",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15.0),),
                             Text(" Male",style: TextStyle(fontSize: 15.0),)
                             ,
                          ],
                         ),
                       )
                       ),
                       Container(
                           color: Color.fromRGBO(240, 252, 253, 1.0),
                           height: 33.0,
                           child:ListTile(
                             dense: true,
                             title:Row(
                               crossAxisAlignment: CrossAxisAlignment.stretch,
                               children: <Widget>
                               [
                                 Text("Date Of Birth:",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15.0),),
                                 Text(" 10/01/1997",style: TextStyle(fontSize: 15.0),)
                                 ,
                               ],
                             ),
                           )
                       ),
                       Container(
                           color: Color.fromRGBO(224, 251, 253, 1.0),
                           height: 33.0,
                           child:ListTile(
                             dense: true,
                             title:Row(
                               crossAxisAlignment: CrossAxisAlignment.stretch,
                               children: <Widget>
                               [
                                 Text("Blood Group:",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15.0),),
                                 Text(" 0+",style: TextStyle(fontSize: 15.0),)
                                 ,
                               ],
                             ),
                           )
                       ),
                       Container(
                           color: Color.fromRGBO(240, 252, 253, 1.0),
                           height: 33.0,
                           child:ListTile(
                             dense: true,
                             title:Row(
                               crossAxisAlignment: CrossAxisAlignment.stretch,
                               children: <Widget>
                               [
                                 Text("Mother's Name:",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15.0),),
                                 Text(" Mrudula Saji",style: TextStyle(fontSize: 15.0),)
                                 ,
                               ],
                             ),
                           )
                       ),
                       Container(
                           color: Color.fromRGBO(224, 251, 253, 1.0),
                           height: 33.0,
                           child:ListTile(
                             dense: true,
                             title:Row(
                               crossAxisAlignment: CrossAxisAlignment.stretch,
                               children: <Widget>
                               [
                                 Text("Marital Status: ",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15.0),),
                                 Text(" Single",style: TextStyle(fontSize: 15.0),)
                                 ,
                               ],
                             ),
                           )
                       ),
                       Container(
                           color: Color.fromRGBO(240, 252, 253, 1.0),
                           height: 33.0,
                           child:ListTile(
                             dense: true,
                             title:Row(
                               crossAxisAlignment: CrossAxisAlignment.stretch,
                               children: <Widget>
                               [
                                 Text("Employee Status:",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15.0),),
                                 Text(" Student",style: TextStyle(fontSize: 15.0),)
                                 ,
                               ],
                             ),
                           )
                       ),
                       Container(
                                decoration: BoxDecoration(
                                color: Colors.blue.shade100,),
                                child:
                                ListTile(dense: true, title:Text('Official Info',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17.0),), ),
                                ),
                             ConstrainedBox
                               (
                                constraints:new BoxConstraints(maxHeight: 200.0,maxWidth: 350.0,minHeight: 200.0,minWidth: 350.0, ),
                                child: new DecoratedBox(
                                decoration: new BoxDecoration
                                (
                                ),
                              child: Column(
                                children: <Widget>[
                                  Container(
                                      color: Color.fromRGBO(224, 251, 253, 1.0),
                                      height: 33.0,
                                      child:ListTile(
                                        dense: true,
                                        title:Row(
                                          crossAxisAlignment: CrossAxisAlignment.stretch,
                                          children: <Widget>
                                          [
                                            Text("Reporting Mgr:",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15.0),),
                                            Text(" Sundararajan Aravamudhan",style: TextStyle(fontSize: 15.0),)
                                            ,
                                          ],
                                        ),
                                      )
                                  ),
                                  Container(
                                      color: Color.fromRGBO(240, 252, 253, 1.0),
                                      height: 33.0,
                                      child:ListTile(
                                        dense: true,
                                        title:Row(
                                          crossAxisAlignment: CrossAxisAlignment.stretch,
                                          children: <Widget>
                                          [
                                            Text("Position:",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15.0),),
                                            Text(" Java Developer",style: TextStyle(fontSize: 15.0),)
                                            ,
                                          ],
                                        ),
                                      )
                                  ),
                                  Container(
                                      color: Color.fromRGBO(224, 251, 253, 1.0),
                                      height: 33.0,
                                      child:ListTile(
                                        dense: true,
                                        title:Row(
                                          crossAxisAlignment: CrossAxisAlignment.stretch,
                                          children: <Widget>
                                          [
                                            Text("Grade:	",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15.0),),
                                            Text(" JME",style: TextStyle(fontSize: 15.0),)
                                            ,
                                          ],
                                        ),
                                      )
                                  ),
                           Container(
    color: Color.fromRGBO(240, 252, 253, 1.0),

    child:
    ListTile(
    title:Column(
    crossAxisAlignment:CrossAxisAlignment.start,
    children: <Widget>[
    Text("Experience:",style: TextStyle(color: Colors.red),),
    Divider(),
    Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: <Widget>[
    Column(
    children: <Widget>[
    Text("Past:",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15.0),),
    Text("0Month(s)",style: TextStyle(fontSize: 15.0),)
    ],
    ) ,
    Column(
    children: <Widget>[
    Text("With Xmplar:",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15.0),),
    Text("0Year(s) 8Month(s)",style: TextStyle(fontSize: 15.0),)
    ],
    ) ,
    Column(
    children: <Widget>[
    Text("Total:",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15.0),),
    Text("8Month(s)",style: TextStyle(fontSize: 15.0),)
    ],
    ) ,
    ]
    )],
    ),
    )
    ),
                     ],
                   ),
                 ),
             ),
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
