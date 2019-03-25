import 'package:flutter/material.dart';
import 'package:xmplaressflutter/menu/fragment/Personalinfo/info/infoFragment/AlertBox/EditPersonInfo.dart';
import 'package:flutter/services.dart';
import 'package:xmplaressflutter/menu/fragment/Personalinfo/info/infoFragment/AlertBox/EditPrimaryContactDetails.dart';
import 'package:xmplaressflutter/menu/fragment/Personalinfo/info/infoFragment/AlertBox/EditSecondaryContactDetails.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:intl/intl.dart';
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
    return new FutureBuilder(
        future: FirebaseAuth.instance.currentUser(),
       builder: (context, AsyncSnapshot<FirebaseUser> snapshot) {
            if (snapshot.hasData) {
              return SingleChildScrollView(
              child: new Column
               (
                children: <Widget>
                 [
                  new Container(
                    height: 150.0,
                     width: double.infinity,
                    decoration: new BoxDecoration(
                          color: Color.fromRGBO(13, 80, 121 , 0.5),
                           ),
                    child:Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                     crossAxisAlignment: CrossAxisAlignment.center,
                     children: <Widget>
                      [
                      StreamBuilder(
                      stream: Firestore.instance.collection('users').document(snapshot.data.uid).snapshots(),
                     builder: (context, snapshot) {
                       if (!snapshot.hasData)
                         return new CircularProgressIndicator();
                       else {
                         var userDocument = snapshot.data;
                         return Column(
                             children: <Widget>
                             [
                               Container(
                                 width: 100.0,
                                 height: 100.0,
                                 decoration: new BoxDecoration(
                                     shape: BoxShape.circle,
                                     image: DecorationImage(image: NetworkImage(userDocument['image']),
                                         fit: BoxFit.fill
                                     )
                                 ),
                               ),
                               Column(
                                 children: <Widget>[
                                   Container(
                                     child: Text(userDocument['name'],
                                       style: TextStyle(
                                           fontStyle: FontStyle.italic,
                                           fontSize: 25.0),),
                                   ),
                                   Text(userDocument['id'])
                                 ],
                               ),
                             ]
                         );
                       }
                     }
                      )
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
                 trailing: FloatingActionButton(elevation: 22.0,mini: true,heroTag: null,child:new Icon(Icons.edit),onPressed:(){showDialog(context: context,builder: (BuildContext context){HapticFeedback.vibrate();return EditPersonInfo();
                  });}
                  ),
                ),
                  StreamBuilder(
                  stream: Firestore.instance.collection('users').document(snapshot.data.uid).collection('myprofile').document('personalinfo').snapshots(),
                 builder: (context, snapshot) {
                   if (!snapshot.hasData)
                     return new CircularProgressIndicator();
                   else {
                     var userDocument = snapshot.data;
                     String formattedDate = DateFormat("dd MMM, yyyy").format(userDocument['dob']);
                     return Card(
                       child: Container(
                         child: Column(
                           children: <Widget>[
                             Container(
                                 color: Color.fromRGBO(224, 251, 253, 1.0),
                                 child:
                                 ListTile(
                                   title: Column(
                                     crossAxisAlignment: CrossAxisAlignment
                                         .start,
                                     children: <Widget>[
                                       RichText(
                                         textAlign: TextAlign.left,
                                         text: TextSpan(children: <TextSpan>
                                         [
                                           TextSpan(text: "Gender: ",
                                               style: TextStyle(
                                                   color: Colors.black,
                                                   fontWeight: FontWeight.bold,
                                                   fontSize: 13.0)),
                                           TextSpan(text: userDocument['gender'],
                                               style: TextStyle(
                                                   color: Colors.black,
                                                   fontSize: 13.0)),
                                         ]
                                         ),
                                       ),
                                       Divider(),
                                       RichText(
                                         textAlign: TextAlign.left,
                                         text: TextSpan(children: <TextSpan>
                                         [
                                           TextSpan(text: "Date of Birth: ",
                                               style: TextStyle(
                                                   color: Colors.black,
                                                   fontWeight: FontWeight.bold,
                                                   fontSize: 13.0)),
                                           TextSpan(text: formattedDate,
                                               style: TextStyle(
                                                   color: Colors.black,
                                                   fontSize: 13.0)),
                                         ]
                                         ),
                                       ),
                                       Divider(),
                                       RichText(
                                         textAlign: TextAlign.left,
                                         text: TextSpan(children: <TextSpan>
                                         [
                                           TextSpan(text: "Blood Group: ",
                                               style: TextStyle(
                                                   color: Colors.black,
                                                   fontWeight: FontWeight.bold,
                                                   fontSize: 13.0)),
                                           TextSpan(text: userDocument['blood'],
                                               style: TextStyle(
                                                   color: Colors.black,
                                                   fontSize: 13.0)),
                                         ]
                                         ),
                                       ),
                                       Divider(),
                                       RichText(
                                         textAlign: TextAlign.left,
                                         text: TextSpan(children: <TextSpan>
                                         [
                                           TextSpan(
                                               text: "Mother's Maiden Name: ",
                                               style: TextStyle(
                                                   color: Colors.black,
                                                   fontWeight: FontWeight.bold,
                                                   fontSize: 13.0)),
                                           TextSpan(text: userDocument['mothername'],
                                               style: TextStyle(
                                                   color: Colors.black,
                                                   fontSize: 13.0)),
                                         ]
                                         ),
                                       ),
                                       Divider(),
                                       RichText(
                                         textAlign: TextAlign.left,
                                         text: TextSpan(children: <TextSpan>
                                         [
                                           TextSpan(text: "Marital Status: ",
                                               style: TextStyle(
                                                   color: Colors.black,
                                                   fontWeight: FontWeight.bold,
                                                   fontSize: 13.0)),
                                           TextSpan(text: userDocument['marital'],
                                               style: TextStyle(
                                                   color: Colors.black,
                                                   fontSize: 13.0)),
                                         ]
                                         ),
                                       ),
                                       Divider(),
                                       RichText(
                                         textAlign: TextAlign.left,
                                         text: TextSpan(children: <TextSpan>
                                         [
                                           TextSpan(text: "Employee Status: ",
                                               style: TextStyle(
                                                   color: Colors.black,
                                                   fontWeight: FontWeight.bold,
                                                   fontSize: 13.0)),
                                           TextSpan(text: userDocument['empstatus'],
                                               style: TextStyle(
                                                   color: Colors.black,
                                                   fontSize: 13.0)),
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
                     );
                   }
                 }
               )

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
                    StreamBuilder(
                    stream: Firestore.instance.collection('users').document(snapshot.data.uid).collection('myprofile').document('officialinfo').snapshots(),
                    builder: (context, snapshot) {
                      if (!snapshot.hasData)
                        return new CircularProgressIndicator();
                      else {
                        var userDocument = snapshot.data;
                        var past=userDocument['pastexp'];
                        DateTime doj=userDocument['doj'];
                        var now=DateTime.now();
                        int years = 0;
                        int months = 0, days=0;
                        if ((now.month <= doj.month) && (now.day < doj.day))
                            {
                          // example: March 2010 (3) and January 2011 (1); this should be 10 months.  // 12 - 3 + 1 = 10
                          years = now.year - doj.year-1;
                          months = 12 - doj.month + now.month-1;
                          if(months==12)
                          {
                            months=0;
                            years +=1;
                          }
                        }
                        else if ((now.month <= doj.month) && (now.day >= doj.day)) // i.e.  now = 23Jan15,  dob = 20dec14
                            {
                          // example: March 2010 (3) and January 2011 (1); this should be 10 months.  // 12 - 3 + 1 = 10
                          years = now.year - doj.year - 1;
                          months = 12 - doj.month + now.month;
                          if (months == 12)
                          {
                            months = 0;
                            years += 1;
                          }
                        }
                        else if ((now.month > doj.month) && (now.day < doj.day))  // i.e.  now = 18oct15,  dob = 22feb14
                            {
                          years = now.year - doj.year;
                          months = now.month - doj.month-1;
                        }
                        else if ((now.month > doj.month) && (now.day >= doj.day))  // i.e.  now = 22oct15,  dob = 18feb14
                            {
                          years = now.year - doj.year;
                          months = now.month - doj.month;
                        }
                        return Card(
                          child: Container(
                            child: Column(
                              children: <Widget>[
                                Container(
                                    color: Color.fromRGBO(224, 251, 253, 1.0),
                                    child:
                                    ListTile(
                                      dense: true,
                                      title: Column(
                                        crossAxisAlignment: CrossAxisAlignment
                                            .start,
                                        children: <Widget>[
                                          RichText(
                                            textAlign: TextAlign.left,
                                            text: TextSpan(children: <TextSpan>
                                            [
                                              TextSpan(
                                                  text: "Reporting Manager: ",
                                                  style: TextStyle(
                                                      color: Colors.black,
                                                      fontWeight: FontWeight
                                                          .bold,
                                                      fontSize: 13.0)),
                                              TextSpan(
                                                  text: userDocument['repmgr'],
                                                  style: TextStyle(
                                                      color: Colors.black,
                                                      fontSize: 13.0)),
                                            ]
                                            ),
                                          ),
                                          Divider(),
                                          RichText(
                                            textAlign: TextAlign.left,
                                            text: TextSpan(children: <TextSpan>
                                            [
                                              TextSpan(text: "Position: ",
                                                  style: TextStyle(
                                                      color: Colors.black,
                                                      fontWeight: FontWeight
                                                          .bold,
                                                      fontSize: 13.0)),
                                              TextSpan(text: userDocument['pos'],
                                                  style: TextStyle(
                                                      color: Colors.black,
                                                      fontSize: 13.0)),
                                            ]
                                            ),
                                          ),
                                          Divider(),
                                          RichText(
                                            textAlign: TextAlign.left,
                                            text: TextSpan(children: <TextSpan>
                                            [
                                              TextSpan(text: "Grade: ",
                                                  style: TextStyle(
                                                      color: Colors.black,
                                                      fontWeight: FontWeight
                                                          .bold,
                                                      fontSize: 13.0)),
                                              TextSpan(text: userDocument['grade'],
                                                  style: TextStyle(
                                                      color: Colors.black,
                                                      fontSize: 13.0)),
                                            ]
                                            ),
                                          ),
                                          Divider(),
                                          RichText(text: TextSpan(
                                              text: "Experience: ",
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 13.0))),
                                          Divider(),
                                          RichText(
                                            textAlign: TextAlign.left,
                                            text: TextSpan(children: <TextSpan>
                                            [
                                              TextSpan(text: "Past: ",
                                                  style: TextStyle(
                                                      color: Colors.black,
                                                      fontWeight: FontWeight
                                                          .bold,
                                                      fontSize: 13.0)),
                                              TextSpan(text: past.toString()+"Month(s)",
                                                  style: TextStyle(
                                                      color: Colors.black,
                                                      fontSize: 13.0)),
                                            ]
                                            ),
                                          ),
                                          RichText(
                                            textAlign: TextAlign.left,
                                            text: TextSpan(children: <TextSpan>
                                            [
                                              TextSpan(text: "With Xmplar: ",
                                                  style: TextStyle(
                                                      color: Colors.black,
                                                      fontWeight: FontWeight
                                                          .bold,
                                                      fontSize: 13.0)),
                                              TextSpan(
                                                  text: years.toString()+"Year(s) "+months.toString()+"Month(s)",
                                                  style: TextStyle(
                                                      color: Colors.black,
                                                      fontSize: 13.0)),
                                            ]
                                            ),
                                          ),
                                          RichText(
                                            textAlign: TextAlign.left,
                                            text: TextSpan(children: <TextSpan>
                                            [
                                              TextSpan(text: "Total: ",
                                                  style: TextStyle(
                                                      color: Colors.black,
                                                      fontWeight: FontWeight
                                                          .bold,
                                                      fontSize: 13.0)),
                                              TextSpan(text: years.toString()+"Year(s) "+months.toString()+"Month(s)",
                                                  style: TextStyle(
                                                      color: Colors.black,
                                                      fontSize: 13.0)),
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
                        );
                      }
                    }
                    )
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
                     StreamBuilder(
                     stream: Firestore.instance.collection('users').document(snapshot.data.uid).collection('myprofile').document('posdetails').snapshots(),
                    builder: (context, snapshot) {
                      if (!snapshot.hasData)
                        return new CircularProgressIndicator();
                      else {
                        var userDocument = snapshot.data;
                        List<String> date = List.from(userDocument['empdaterange']);
                        List<String> emppos = List.from(userDocument['emppos']);
                        List<String> grade = List.from(userDocument['grade']);
                        List<String> loc = List.from(userDocument['loc']);
                        List<String> org = List.from(userDocument['org']);
                        List<String> remarks = List.from(userDocument['remarks']);
                        List<String> repmgr = List.from(userDocument['repmgr']);
                        List<num> step = List.from(userDocument['step']);
                          return Card(
                            child: Container(
                              child: Column(
                                children: <Widget>[
                                  Container(
                                      color: Color.fromRGBO(224, 251, 253, 1.0),
                                      child:
                                      ListTile(
                                        dense: true,
                                        title: Column(
                                          crossAxisAlignment: CrossAxisAlignment
                                              .start,
                                          children: <Widget>[
                                            RichText(
                                              textAlign: TextAlign.left,
                                              text: TextSpan(
                                                  children: <TextSpan>
                                                  [
                                                    TextSpan(
                                                        text: "Organization: ",
                                                        style: TextStyle(
                                                            color: Colors.black,
                                                            fontWeight: FontWeight
                                                                .bold,
                                                            fontSize: 13.0)),
                                                    TextSpan(
                                                        text: "Xmplar Management Solutions Private Limited",
                                                        style: TextStyle(
                                                            color: Colors.black,
                                                            fontSize: 13.0)),
                                                  ]
                                              ),
                                            ),
                                            Divider(),
                                            RichText(
                                              textAlign: TextAlign.left,
                                              text: TextSpan(
                                                  children: <TextSpan>
                                                  [
                                                    TextSpan(
                                                        text: "Employee Position: ",
                                                        style: TextStyle(
                                                            color: Colors.black,
                                                            fontWeight: FontWeight
                                                                .bold,
                                                            fontSize: 13.0)),
                                                    TextSpan(
                                                        text: "Java Developer",
                                                        style: TextStyle(
                                                            color: Colors.black,
                                                            fontSize: 13.0)),
                                                  ]
                                              ),
                                            ),
                                            Divider(),
                                            RichText(
                                              textAlign: TextAlign.left,
                                              text: TextSpan(
                                                  children: <TextSpan>
                                                  [
                                                    TextSpan(
                                                        text: "Employee Position Date Range: ",
                                                        style: TextStyle(
                                                            color: Colors.black,
                                                            fontWeight: FontWeight
                                                                .bold,
                                                            fontSize: 13.0)),
                                                    TextSpan(text: "17/01/2018",
                                                        style: TextStyle(
                                                            color: Colors.black,
                                                            fontSize: 13.0)),
                                                  ]
                                              ),
                                            ),
                                            Divider(),
                                            RichText(
                                              textAlign: TextAlign.left,
                                              text: TextSpan(
                                                  children: <TextSpan>
                                                  [
                                                    TextSpan(text: "Grade: ",
                                                        style: TextStyle(
                                                            color: Colors.black,
                                                            fontWeight: FontWeight
                                                                .bold,
                                                            fontSize: 13.0)),
                                                    TextSpan(text: "JME",
                                                        style: TextStyle(
                                                            color: Colors.black,
                                                            fontSize: 13.0)),
                                                  ]
                                              ),
                                            ),
                                            Divider(),
                                            RichText(
                                              textAlign: TextAlign.left,
                                              text: TextSpan(
                                                  children: <TextSpan>
                                                  [
                                                    TextSpan(text: "Step: ",
                                                        style: TextStyle(
                                                            color: Colors.black,
                                                            fontWeight: FontWeight
                                                                .bold,
                                                            fontSize: 13.0)),
                                                    TextSpan(text: step[1].toString(),
                                                        style: TextStyle(
                                                            color: Colors.black,
                                                            fontSize: 13.0)),
                                                  ]
                                              ),
                                            ),
                                            Divider(),
                                            RichText(
                                              textAlign: TextAlign.left,
                                              text: TextSpan(
                                                  children: <TextSpan>
                                                  [
                                                    TextSpan(text: "Location: ",
                                                        style: TextStyle(
                                                            color: Colors.black,
                                                            fontWeight: FontWeight
                                                                .bold,
                                                            fontSize: 13.0)),
                                                    TextSpan(text: "Bengaluru",
                                                        style: TextStyle(
                                                            color: Colors.black,
                                                            fontSize: 13.0)),
                                                  ]
                                              ),
                                            ),
                                            Divider(),
                                            RichText(
                                              textAlign: TextAlign.left,
                                              text: TextSpan(
                                                  children: <TextSpan>
                                                  [
                                                    TextSpan(
                                                        text: "Reporting Manager: ",
                                                        style: TextStyle(
                                                            color: Colors.black,
                                                            fontWeight: FontWeight
                                                                .bold,
                                                            fontSize: 13.0)),
                                                    TextSpan(
                                                        text: "Sundararajan Aravamudhan",
                                                        style: TextStyle(
                                                            color: Colors.black,
                                                            fontSize: 13.0)),
                                                  ]
                                              ),
                                            ),
                                            Divider(),
                                            RichText(
                                              textAlign: TextAlign.left,
                                              text: TextSpan(
                                                  children: <TextSpan>
                                                  [
                                                    TextSpan(text: "Remarks: ",
                                                        style: TextStyle(
                                                            color: Colors.black,
                                                            fontWeight: FontWeight
                                                                .bold,
                                                            fontSize: 13.0)),
                                                    TextSpan(text: "",
                                                        style: TextStyle(
                                                            color: Colors.black,
                                                            fontSize: 13.0)),
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
                          );
                      }
                    }
                    )
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
                                          FloatingActionButton(heroTag: null,onPressed: (){showDialog(context:context,builder:(BuildContext context){HapticFeedback.vibrate();return EditPrimaryContactDetails();});},child: Icon(Icons.edit),mini:true ,)
                                        ]
                                    ),
                                  ],
                                ),

                              ),
                              Container(
                                  color: Color.fromRGBO(224, 251, 253, 1.0),
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
                                            FloatingActionButton(heroTag: null,onPressed: (){showDialog(context:context,builder:(BuildContext context){HapticFeedback.vibrate();return EditSecondaryContactDetails();});},child: Icon(Icons.edit),mini:true ,)
                                          ]
                                      ),
                                    ],
                                  ),
                              ),

                              Container(
                                  color: Color.fromRGBO(224, 251, 253, 1.0),
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
       else
         {
           return CircularProgressIndicator(backgroundColor: Colors.blue,);
         }

    }
    );
  }

}

