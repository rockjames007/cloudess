import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:xmplaressflutter/menu/fragment/Personalinfo/info/infoFragment/AlertBox/EditPrimaryContactDetails.dart';
import 'package:xmplaressflutter/menu/fragment/Personalinfo/info/infoFragment/AlertBox/EditSecondaryContactDetails.dart';
void main() => runApp(ContactInfoFragment());
class ContactInfoFragment extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _ContactInfoState();
  }
}
class _ContactInfoState extends State<ContactInfoFragment>
{
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
                  title:Text('Contact Info',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 21.0),),

                ),
              ),
              SingleChildScrollView(
                child: Column(
                  children: <Widget>[
                    Card(
                      child: Container(
                        child:Column(
                          children: <Widget>[
                            ListTile(
                              dense: true,
                              title: Column(
                                children: <Widget>[
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: <Widget>[
                                      Text("Primary Contact Details:", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.deepOrangeAccent), ),
                                      FloatingActionButton(onPressed: (){showDialog(context:context,builder:(BuildContext context){HapticFeedback.vibrate();return EditPrimaryContactDetails();});},child: Icon(Icons.edit),mini:true ,)
                                    ],
                                  ),
                                ],
                              ),

                            ),
                            Container(
                                color: Color.fromRGBO(224, 251, 253, 1.0),
                                child:
                                ListTile(
                                  title: Column(
                                    crossAxisAlignment:CrossAxisAlignment.start,
                                    children: <Widget>[
                                      RichText(
                                          textAlign: TextAlign.left,
                                          text: TextSpan(children: <TextSpan>
                                          [
                                            TextSpan(text:"Address: ",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold)),
                                            TextSpan(text:"#206, sanjeevini desai, channasandra main road, hope farm circle, whitefield bengaluru, KA 560066 India",style: TextStyle(color: Colors.black)),
                                          ]
                                          )),
                                      Divider(),
                                      RichText(
                                          textAlign: TextAlign.left,

                                          text: TextSpan(children: <TextSpan>
                                          [
                                            TextSpan(text:"Phone Number: ",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold)),
                                            TextSpan(text:"8792875549",style: TextStyle(color: Colors.black)),
                                          ]
                                          )),
                                      Divider(),
                                      RichText(
                                          textAlign: TextAlign.left,
                                          text: TextSpan(children: <TextSpan>
                                          [
                                            TextSpan(text:"Email: ",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,)),
                                            TextSpan(text:"dipujames7@gmail.com",style: TextStyle(color: Colors.black)),
                                          ]
                                          )),
                                    ],
                                  ),
                                )
                            ),
                          ],
                        ),
                      ),
                    ),
                    Card(
                      child: Container(
                        child:Column(
                          children: <Widget>[
                            ListTile(
                              dense: true,
                              title: Column(
                                children: <Widget>[
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: <Widget>[
                                      Text("Secondary Contact Details:", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.deepOrangeAccent), ),
                                      FloatingActionButton(onPressed: (){showDialog(context:context,builder:(BuildContext context){HapticFeedback.vibrate();return EditSecondaryContactDetails();});},child: Icon(Icons.edit),mini:true ,)
                                    ],
                                  ),
                                ],
                              ),

                            ),
                            Container(
                                color: Color.fromRGBO(240, 252, 253, 1.0),
                                child:
                                ListTile(
                                  title: Column(
                                    crossAxisAlignment:CrossAxisAlignment.start,
                                    children: <Widget>[
                                      RichText(
                                          textAlign: TextAlign.left,
                                          text: TextSpan(children: <TextSpan>
                                          [
                                            TextSpan(text:"Address: ",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold)),
                                            TextSpan(text:"#206, sanjeevini desai, channasandra main road, hope farm circle, whitefield bengaluru, KA 560066 India",style: TextStyle(color: Colors.black)),
                                          ]
                                          )),
                                      Divider(),
                                      RichText(
                                          textAlign: TextAlign.left,

                                          text: TextSpan(children: <TextSpan>
                                          [
                                            TextSpan(text:"Phone Number: ",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold)),
                                            TextSpan(text:"8792875549",style: TextStyle(color: Colors.black)),
                                          ]
                                          )),
                                      Divider(),
                                      RichText(
                                          textAlign: TextAlign.left,
                                          text: TextSpan(children: <TextSpan>
                                          [
                                            TextSpan(text:"Email: ",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,)),
                                            TextSpan(text:"dipujames7@gmail.com",style: TextStyle(color: Colors.black)),
                                          ]
                                          )),
                                    ],
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
            ],
          ),
        )

    );
  }

}
