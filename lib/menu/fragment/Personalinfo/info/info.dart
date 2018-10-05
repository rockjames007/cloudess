import 'package:flutter/material.dart';
import 'package:xmplaressflutter/menu/fragment/Personalinfo/info/infoFragment/AlertBox/EditPersonInfo.dart';
import 'package:flutter/services.dart';
import 'package:xmplaressflutter/menu/fragment/Personalinfo/info/infoFragment/AlertBox/EditPrimaryContactDetails.dart';
import 'package:xmplaressflutter/menu/fragment/Personalinfo/info/infoFragment/AlertBox/EditSecondaryContactDetails.dart';
void main() => runApp(info());
class info extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _InfoState();
  }
}
class _InfoState extends State<info>
{
  @override
    Widget build(BuildContext context) {
    return new SingleChildScrollView(

        child: new Column
          (
            children: <Widget>
            [
              new Container
                (
                height: 150.0,
                width: double.infinity,
                decoration: new BoxDecoration
                  (
                  color: Color.fromRGBO(13, 80, 121 , 0.5),
                ),
                child:Column
                  (
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>
                  [
                    Container(
                      width: 100.0,
                      height: 100.0,
                      decoration: new BoxDecoration
                        (
                          shape: BoxShape.circle,
                          image: DecorationImage
                            (image: NetworkImage("https://pbs.twimg.com/profile_images/958027004724461569/O_AiyJhe_400x400.jpg"),
                              fit: BoxFit.fill
                          )
                      ),
                    ),
                    Column
                      (
                      children: <Widget>
                      [
                        Container
                          (
                          child: Text("Dipu s james",style: TextStyle(fontStyle: FontStyle.italic,fontSize: 25.0),),
                        ),
                        Text("XMS-INT-005")
                      ],
                      ),

                  ],
                ),
              ),
              Container(
                  decoration: BoxDecoration(
                  color: Colors.blue.shade100,
                  ),
                child: Column(
                  children: <Widget>[
                   ListTile(
                    dense: true,
                    title:Text('Personal Info',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18.0),),
                 trailing: FloatingActionButton(elevation: 22.0,mini: true,child:new Icon(Icons.edit),onPressed:(){showDialog(context: context,builder: (BuildContext context){HapticFeedback.vibrate();return EditPersonInfo();
                  });}
                  ),
                ),
                Card(
                child: Container(
                  child:Column(
                    children: <Widget>[
                      Container(
                          color: Colors.blue.shade100.withOpacity(0.5),
                          child:
                          ListTile(
                            title: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                RichText(
                                  textAlign: TextAlign.left,
                                  text: TextSpan(children: <TextSpan>
                                  [
                                    TextSpan(text:"Gender: ",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 13.0)),
                                    TextSpan(text:"Male",style: TextStyle(color: Colors.black,fontSize: 13.0)),
                                  ]
                                  ),
                                ),
                                Divider(),
                                RichText(
                                  textAlign: TextAlign.left,
                                  text: TextSpan(children: <TextSpan>
                                  [
                                    TextSpan(text:"Date of Birth: ",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 13.0)),
                                    TextSpan(text:"10 Jan, 1997",style: TextStyle(color: Colors.black,fontSize: 13.0)),
                                  ]
                                  ),
                                ),
                                Divider(),
                                RichText(
                                  textAlign: TextAlign.left,
                                  text: TextSpan(children: <TextSpan>
                                  [
                                    TextSpan(text:"Blood Group: ",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 13.0)),
                                    TextSpan(text:"O +ve",style: TextStyle(color: Colors.black,fontSize: 13.0)),
                                  ]
                                  ),
                                ),
                                Divider(),
                                RichText(
                                  textAlign: TextAlign.left,
                                  text: TextSpan(children: <TextSpan>
                                  [
                                    TextSpan(text:"Mother's Maiden Name: ",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 13.0)),
                                    TextSpan(text:"Mrudula",style: TextStyle(color: Colors.black,fontSize: 13.0)),
                                  ]
                                  ),
                                ),
                                Divider(),
                                RichText(
                                  textAlign: TextAlign.left,
                                  text: TextSpan(children: <TextSpan>
                                  [
                                    TextSpan(text:"Marital Status: ",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 13.0)),
                                    TextSpan(text:"Single",style: TextStyle(color: Colors.black,fontSize: 13.0)),
                                  ]
                                  ),
                                ),
                                Divider(),
                                RichText(
                                  textAlign: TextAlign.left,
                                  text: TextSpan(children: <TextSpan>
                                  [
                                    TextSpan(text:"Employee Status: ",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 13.0)),
                                    TextSpan(text:"Student",style: TextStyle(color: Colors.black,fontSize: 13.0)),
                                  ]
                                  ),
                                ),
                              ],
                            ),
                          )
                      ),
                    ],
                  ),
                ),
              ),
              ]
                ),
              ),
              Divider(color: Colors.black,),
              Container(
                decoration: BoxDecoration(
                  color: Colors.blue.shade100,
                ),
                child: Column(
                    children: <Widget>[
                      ListTile(
                        dense: true,
                        title:Text('Official Info',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18.0),),
                      ),
                      Card(
                        child: Container(
                          child:Column(
                            children: <Widget>[
                              Container(
                                  color: Colors.blue.shade100.withOpacity(0.5),
                                  child:
                                  ListTile(
                                    dense: true,
                                    title: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: <Widget>[
                                        RichText(
                                          textAlign: TextAlign.left,
                                          text: TextSpan(children: <TextSpan>
                                          [
                                            TextSpan(text:"Reporting Manager: ",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 13.0)),
                                            TextSpan(text:"Sundararajan Aravamudhan",style: TextStyle(color: Colors.black,fontSize: 13.0)),
                                          ]
                                          ),
                                        ),
                                        Divider(),
                                        RichText(
                                          textAlign: TextAlign.left,
                                          text: TextSpan(children: <TextSpan>
                                          [
                                            TextSpan(text:"Position: ",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 13.0)),
                                            TextSpan(text:"Java Developer",style: TextStyle(color: Colors.black,fontSize: 13.0)),
                                          ]
                                          ),
                                        ),
                                        Divider(),
                                        RichText(
                                          textAlign: TextAlign.left,
                                          text: TextSpan(children: <TextSpan>
                                          [
                                            TextSpan(text:"Grade: ",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 13.0)),
                                            TextSpan(text:"JME",style: TextStyle(color: Colors.black,fontSize: 13.0)),
                                          ]
                                          ),
                                        ),
                                        Divider(),
                                        RichText(text: TextSpan(text:"Experience: ",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 13.0))),
                                        Divider(),
                                        RichText(
                                          textAlign: TextAlign.left,
                                          text: TextSpan(children: <TextSpan>
                                          [
                                            TextSpan(text:"Past: ",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 13.0)),
                                            TextSpan(text:"0Month(s)",style: TextStyle(color: Colors.black,fontSize: 13.0)),
                                          ]
                                          ),
                                        ),
                                        RichText(
                                          textAlign: TextAlign.left,
                                          text: TextSpan(children: <TextSpan>
                                          [
                                            TextSpan(text:"With Xmplar: ",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 13.0)),
                                            TextSpan(text:"0Year(s) 8Month(s)",style: TextStyle(color: Colors.black,fontSize: 13.0)),
                                          ]
                                          ),
                                        ),
                                        RichText(
                                          textAlign: TextAlign.left,
                                          text: TextSpan(children: <TextSpan>
                                          [
                                            TextSpan(text:"Total: ",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 13.0)),
                                            TextSpan(text:"8Month(s)",style: TextStyle(color: Colors.black,fontSize: 13.0)),
                                          ]
                                          ),
                                        ),
                                      ],
                                    ),
                                  )
                              ),
                            ],
                          ),
                        ),
                      ),
                    ]
                ),
              ),
              Divider(color: Colors.black,),
              Container(
                decoration: BoxDecoration(
                  color: Colors.blue.shade100,
                ),
                child: Column(
                    children: <Widget>[
                      ListTile(
                        dense: true,
                        title:Text('Positional Details',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18.0),),
                      ),
                      Card(
                        child: Container(
                          child:Column(
                            children: <Widget>[
                              Container(
                                  color: Colors.blue.shade100.withOpacity(0.5),
                                  child:
                                  ListTile(
                                    dense: true,
                                    title: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: <Widget>[
                                        RichText(
                                          textAlign: TextAlign.left,
                                          text: TextSpan(children: <TextSpan>
                                          [
                                            TextSpan(text:"Organization: ",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 13.0)),
                                            TextSpan(text:"Xmplar Management Solutions Private Limited",style: TextStyle(color: Colors.black,fontSize: 13.0)),
                                          ]
                                          ),
                                        ),
                                        Divider(),
                                        RichText(
                                          textAlign: TextAlign.left,
                                          text: TextSpan(children: <TextSpan>
                                          [
                                            TextSpan(text:"Employee Position: ",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 13.0)),
                                            TextSpan(text:"Java Developer",style: TextStyle(color: Colors.black,fontSize: 13.0)),
                                          ]
                                          ),
                                        ),
                                        Divider(),
                                        RichText(
                                          textAlign: TextAlign.left,
                                          text: TextSpan(children: <TextSpan>
                                          [
                                            TextSpan(text:"Employee Position Date Range: ",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 13.0)),
                                            TextSpan(text:"17/01/2018",style: TextStyle(color: Colors.black,fontSize: 13.0)),
                                          ]
                                          ),
                                        ),
                                        Divider(),
                                        RichText(
                                          textAlign: TextAlign.left,
                                          text: TextSpan(children: <TextSpan>
                                          [
                                            TextSpan(text:"Grade: ",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 13.0)),
                                            TextSpan(text:"JME",style: TextStyle(color: Colors.black,fontSize: 13.0)),
                                          ]
                                          ),
                                        ),
                                        Divider(),
                                        RichText(
                                          textAlign: TextAlign.left,
                                          text: TextSpan(children: <TextSpan>
                                          [
                                            TextSpan(text:"Step: ",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 13.0)),
                                            TextSpan(text:"",style: TextStyle(color: Colors.black,fontSize: 13.0)),
                                          ]
                                          ),
                                        ),
                                        Divider(),
                                        RichText(
                                          textAlign: TextAlign.left,
                                          text: TextSpan(children: <TextSpan>
                                          [
                                            TextSpan(text:"Location: ",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 13.0)),
                                            TextSpan(text:"Bengaluru",style: TextStyle(color: Colors.black,fontSize: 13.0)),
                                          ]
                                          ),
                                        ),
                                        Divider(),
                                        RichText(
                                          textAlign: TextAlign.left,
                                          text: TextSpan(children: <TextSpan>
                                          [
                                            TextSpan(text:"Reporting Manager: ",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 13.0)),
                                            TextSpan(text:"Sundararajan Aravamudhan",style: TextStyle(color: Colors.black,fontSize: 13.0)),
                                          ]
                                          ),
                                        ),
                                        Divider(),
                                        RichText(
                                          textAlign: TextAlign.left,
                                          text: TextSpan(children: <TextSpan>
                                          [
                                            TextSpan(text:"Remarks: ",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 13.0)),
                                            TextSpan(text:"",style: TextStyle(color: Colors.black,fontSize: 13.0)),
                                          ]
                                          ),
                                        ),
                                      ],
                                    ),
                                  )
                              ),
                            ],
                          ),
                        ),
                      ),
                    ]
                ),
              ),
              Divider(color: Colors.black,),
              Container(
                decoration: BoxDecoration(
                  color: Colors.blue.shade100,
                ),
                child: Column(
                    children: <Widget>[
                      ListTile(
                        dense: true,
                        title:Text('Contact Info',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18.0),),
                      ),
                      Card(
                        child: Container(
                          color: Colors.blue.shade100.withOpacity(0.3),
                          child:Column(
                            children: <Widget>[
                              ListTile(
                                dense: true,
                                title: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: <Widget>[
                                          Text('Primary Contact:',style: TextStyle(fontWeight: FontWeight.bold),),
                                          FloatingActionButton(onPressed: (){showDialog(context:context,builder:(BuildContext context){HapticFeedback.vibrate();return EditPrimaryContactDetails();});},child: Icon(Icons.edit),mini:true ,)
                                        ]
                                    ),
                                  ],
                                ),

                              ),
                              Container(
                                  color: Colors.blue.shade100.withOpacity(0.5),
                                  child:
                                  ListTile(
                                    title: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: <Widget>[
                                        RichText(
                                          textAlign: TextAlign.left,
                                          text: TextSpan(children: <TextSpan>
                                          [
                                            TextSpan(text:"Address: ",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 13.0)),
                                            TextSpan(text:"#206, sanjeevini desai, channasandra main road, hope farm circle, whitefield bengaluru, KA 560066 India",style: TextStyle(color: Colors.black,fontSize: 13.0)),
                                          ]
                                          ),
                                        ),
                                        Divider(),
                                        RichText(
                                          textAlign: TextAlign.left,
                                          text: TextSpan(children: <TextSpan>
                                          [
                                            TextSpan(text:"Phone Number: ",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 13.0)),
                                            TextSpan(text:"8792875549",style: TextStyle(color: Colors.black,fontSize: 13.0)),
                                          ]
                                          ),
                                        ),
                                        Divider(),
                                        RichText(
                                          textAlign: TextAlign.left,
                                          text: TextSpan(children: <TextSpan>
                                          [
                                            TextSpan(text:"Email: ",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 13.0)),
                                            TextSpan(text:"dipujames7@gmail.com",style: TextStyle(color: Colors.black,fontSize: 13.0)),
                                          ]
                                          ),
                                        ),
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
                          color: Colors.blue.shade100.withOpacity(0.3),
                          child:Column(
                            children: <Widget>[ListTile(
                                  dense: true,
                                  title: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: <Widget>[
                                            Text('Secondary Contact:',style: TextStyle(fontWeight: FontWeight.bold),),
                                            FloatingActionButton(onPressed: (){showDialog(context:context,builder:(BuildContext context){HapticFeedback.vibrate();return EditSecondaryContactDetails();});},child: Icon(Icons.edit),mini:true ,)
                                          ]
                                      ),
                                    ],
                                  ),
                              ),

                              Container(
                                  color: Colors.blue.shade100.withOpacity(0.5),
                                  child:
                                  ListTile(
                                    title: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: <Widget>[
                                        RichText(
                                          textAlign: TextAlign.left,
                                          text: TextSpan(children: <TextSpan>
                                          [
                                            TextSpan(text:"Address: ",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 13.0)),
                                            TextSpan(text:"#206, sanjeevini desai, channasandra main road, hope farm circle, whitefield bengaluru, KA 560066 India",style: TextStyle(color: Colors.black,fontSize: 13.0)),
                                          ]
                                          ),
                                        ),
                                        Divider(),
                                        RichText(
                                          textAlign: TextAlign.left,
                                          text: TextSpan(children: <TextSpan>
                                          [
                                            TextSpan(text:"Phone Number: ",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 13.0)),
                                            TextSpan(text:"8792875549",style: TextStyle(color: Colors.black,fontSize: 13.0)),
                                          ]
                                          ),
                                        ),
                                        Divider(),
                                        RichText(
                                          textAlign: TextAlign.left,
                                          text: TextSpan(children: <TextSpan>
                                          [
                                            TextSpan(text:"Email: ",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 13.0)),
                                            TextSpan(text:"dipujames7@gmail.com",style: TextStyle(color: Colors.black,fontSize: 13.0)),
                                          ]
                                          ),
                                        ),
                                      ],
                                    ),
                                  )
                              ),
                            ],
                          ),
                        ),
                      ),
                    ]
                ),
              ),
       ]
             ),
          );
    }


}

