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
                 maxHeight: 500.0,
                 maxWidth: 350.0,
                 minHeight: 500.0,
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
                         child:
                         ListTile(
                           dense: true,
                           title: Row(
                             crossAxisAlignment: CrossAxisAlignment.stretch,
                             children: <Widget>
                             [
                               RichText(
                                   text: TextSpan
                                         (children:
                                         <TextSpan>[
                                          TextSpan(text:"Gender: ",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15.0,color: Colors.black),),
                                          TextSpan(text:"Male",style: TextStyle(fontSize: 15.0,color: Colors.black), )
                                         ]
                                         )
                                      ) ,
                             ],
                           ),
                         ),
                       ),
                       Container(
                         color: Color.fromRGBO(240, 252, 253, 1.0),
                         height: 33.0,
                         child:
                         ListTile(
                           dense: true,
                           title: Row(
                             crossAxisAlignment: CrossAxisAlignment.stretch,
                             children: <Widget>
                             [
                               RichText(text: TextSpan(children: <TextSpan>[
                                 TextSpan(text:"Date of Birth: ",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15.0,color: Colors.black),),
                                 TextSpan(text:"10 Jan, 1997",style: TextStyle(fontSize: 15.0,color: Colors.black),
                                 )
                               ])
                               )
                               ,
                             ],
                           ),
                         ),
                       ),
                       Container(
                         color: Color.fromRGBO(224, 251, 253, 1.0),
                         height: 33.0,
                         child:
                         ListTile(
                           dense: true,
                           title: Row(
                             crossAxisAlignment: CrossAxisAlignment.stretch,
                             children: <Widget>
                             [
                               RichText(text: TextSpan(children: <TextSpan>[
                                 TextSpan(text:"Blood Group: ",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15.0,color: Colors.black),),
                                 TextSpan(text:"O+",style: TextStyle(fontSize: 15.0,color: Colors.black),
                                 )
                               ])
                               )
                               ,
                             ],
                           ),
                         ),
                       ),
                       Container(
                         color: Color.fromRGBO(240, 252, 253, 1.0),
                         height: 33.0,
                         child:
                         ListTile(
                           dense: true,
                           title: Row(
                             crossAxisAlignment: CrossAxisAlignment.stretch,
                             children: <Widget>
                             [
                               RichText(text: TextSpan(children: <TextSpan>[
                                 TextSpan(text:"Mother's Name: ",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15.0,color: Colors.black),),
                                 TextSpan(text:"Mrudula",style: TextStyle(fontSize: 15.0,color: Colors.black),
                                 )
                               ])
                               )
                               ,
                             ],
                           ),
                         ),
                       ),
                       Container(
                         color: Color.fromRGBO(224, 251, 253, 1.0),
                         height: 33.0,
                         child:
                         ListTile(
                           dense: true,
                           title: Row(
                             crossAxisAlignment: CrossAxisAlignment.stretch,
                             children: <Widget>
                             [
                               RichText(text: TextSpan(children: <TextSpan>[
                                 TextSpan(text:"Marital Status: ",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15.0,color: Colors.black),),
                                 TextSpan(text:"Single",style: TextStyle(fontSize: 15.0,color: Colors.black),
                                 )
                               ])
                               )
                               ,
                             ],
                           ),
                         ),
                       ),
                       Container(
                         color: Color.fromRGBO(240, 252, 253, 1.0),
                         height: 33.0,
                         child:
                         ListTile(
                           dense: true,
                           title: Row(
                             crossAxisAlignment: CrossAxisAlignment.stretch,
                             children: <Widget>
                             [
                               RichText(text: TextSpan(children: <TextSpan>[
                                 TextSpan(text:"Employee Status: ",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15.0,color: Colors.black),),
                                 TextSpan(text:"Java Developer",style: TextStyle(fontSize: 15.0,color: Colors.black),
                                 )
                               ])
                               )
                               ,
                             ],
                           ),
                         ),
                       ),
                       Divider(),
                       Container(
                           color: Color.fromRGBO(224, 251, 253, 1.0),
                           child:ListTile(
                             title:Column(
                               crossAxisAlignment:CrossAxisAlignment.start,
                               children: <Widget>[
                                 Text("Official Info:",style: TextStyle(color: Colors.red),),
                                 Divider(),
                                 Column(
                                     crossAxisAlignment:CrossAxisAlignment.start,
                                     children: <Widget>[
                                       RichText(
                                         textAlign: TextAlign.start,
                                         text: TextSpan(children: <TextSpan>
                                         [
                                           TextSpan(text:"Reporting Manager: ",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold)),
                                           TextSpan(text:"Sundararajan Aravamudhan",style: TextStyle(color: Colors.black)),
                                         ]
                                         ),
                                       ),
                                       Divider(),
                                       RichText(
                                           textAlign: TextAlign.start,
                                           text: TextSpan(children: <TextSpan>[
                                         TextSpan(text:"Position: ",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15.0,color: Colors.black),),
                                         TextSpan(text:"Java Developer",style: TextStyle(fontSize: 15.0,color: Colors.black),
                                         )
                                       ])
                                       ),
                                       Divider(),
                                       RichText(
                                         textAlign: TextAlign.left,
                                         text: TextSpan(children: <TextSpan>
                                         [
                                           TextSpan(text:"Grade: ",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold)),
                                           TextSpan(text:"JME",style: TextStyle(color: Colors.black)),
                                         ]
                                         ),
                                       ),
                                     ]
                                 )],
                             ),
                           )
                       ),
                       Divider(),
                       Container(
                           color: Color.fromRGBO(240, 252, 253, 1.0),
                           child:ListTile(
                             title:Column(
                               crossAxisAlignment:CrossAxisAlignment.start,
                               children: <Widget>[
                                 Text("Experience:",style: TextStyle(color: Colors.red),),
                                 Divider(),
                                 Column(
                                     crossAxisAlignment:CrossAxisAlignment.start,
                                     children: <Widget>[
                                       Row(
                                         children: <Widget>[
                                           Text("Past:",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15.0),),
                                           Text("0Month(s)",style: TextStyle(fontSize: 15.0),)
                                         ],
                                       ),
                                       Divider(),
                                       Row(
                                         children: <Widget>[
                                           Text("With Xmplar:",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15.0),),
                                           Text("0Year(s) 8Month(s)",style: TextStyle(fontSize: 15.0),)
                                         ],
                                       ) ,
                                       Divider(),
                                       Row(
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
        )
             ),
      ],
    ),
        ),
    );
  }
}
