import 'package:flutter/material.dart';
import 'package:xmplaressflutter/menu/menu.dart';
void main() => runApp(HomeFragment());
class HomeFragment extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        body: new SingleChildScrollView(

            child: new Column
              (
              children: <Widget>
              [
                new Container
                  (
                    height: 200.0,
                    width: double.infinity,
                    decoration: new BoxDecoration
                      (
                      color: Color.fromRGBO(13, 80, 121 , 0.7),
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
               new ConstrainedBox
                 (
                   constraints:new BoxConstraints
                     (
                     maxHeight: 380.0,
                     maxWidth: double.infinity,
                     minHeight: 380.0,
                     minWidth: double.infinity
                     ),
                 child: new DecoratedBox(
                   decoration: new BoxDecoration
                     (
                     color: Color.fromRGBO(194, 204, 207, 0.7),
                      border: new Border.all(color: Color.fromRGBO(13, 80, 121 , 1.0),width: 5.0),
                     ),
                   child: new Column(
                     children: <Widget>[
                       new Column(
                         children: <Widget>
                         [new Container(
                               color:Color.fromRGBO(13, 80, 121 , 0.9),
                             child:new ListTile(
                                 dense: true,
                                 title:Row(children: <Widget>[
                                   Icon(Icons.dashboard,color: Colors.white,),
                                 Text("Dash Board",style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold,color: Colors.white)),

                                  ],
                                 )
                                )
                           ),
                           new ListTile(
                             title:new InkWell(
                               onTap:(){Navigator.push(
                                 context,
                                 MaterialPageRoute(builder: (context) => menu(2)) ,
                               );},
                               child: new Card(
                                   child: new Column(
                                       children: <Widget>[
                                         Row(children: <Widget>[
                                            Icon(Icons.perm_contact_calendar,color:Color.fromRGBO(199, 0, 57, 1.0),size: 30.0),
                                            Text("LMS",style: TextStyle(fontWeight: FontWeight.bold)),
                                           ],
                                           ),
                                         Table(
                                           border: TableBorder.all(width: 1.0,color: Color.fromRGBO(13, 80, 121 , 0.7)),
                                           defaultVerticalAlignment: TableCellVerticalAlignment.middle,
                                           children:<TableRow>[
                                              TableRow(
                                                 children: <Widget>[
                                                   Text(' '),
                                                   Text('Opening Balance',style: TextStyle(fontSize: 10.0,fontWeight: FontWeight.bold),textAlign: TextAlign.center,),
                                                   Text('Leave Accrued',style: TextStyle(fontSize: 10.0,fontWeight: FontWeight.bold),textAlign: TextAlign.center,),
                                                   Text('Leave Taken',style: TextStyle(fontSize: 10.0,fontWeight: FontWeight.bold),textAlign: TextAlign.center,),
                                                   Text('Leave Applied',style: TextStyle(fontSize: 10.0,fontWeight: FontWeight.bold),textAlign: TextAlign.center,),
                                                   Text('Closing Balance',style: TextStyle(fontSize: 10.0,fontWeight: FontWeight.bold),textAlign: TextAlign.center,),
                                                 ],
                                                 ),
                                              TableRow(
                                                children: <Widget>[
                                                  Text('Earned Leave',style: TextStyle(fontSize: 10.0,fontWeight: FontWeight.bold),textAlign: TextAlign.center,),
                                                  Text('2',style: TextStyle(fontSize: 15.0),textAlign: TextAlign.center,),
                                                  Text('10.5',style: TextStyle(fontSize: 15.0),textAlign: TextAlign.center,),
                                                  Text('2',style: TextStyle(fontSize: 15.0),textAlign: TextAlign.center,),
                                                  Text('0.0',style: TextStyle(fontSize: 15.0),textAlign: TextAlign.center,),
                                                  Text('10.5',style: TextStyle(fontSize: 15.0),textAlign: TextAlign.center,),
                                                ],
                                              ),
                                              TableRow(
                                                children: <Widget>[
                                                  Text('Sick Leave',style: TextStyle(fontSize: 10.0,fontWeight: FontWeight.bold),textAlign: TextAlign.center,),
                                                  Text('6',style: TextStyle(fontSize: 15.0),textAlign: TextAlign.center,),
                                                  Text('0',style: TextStyle(fontSize: 15.0),textAlign: TextAlign.center,),
                                                  Text('1',style: TextStyle(fontSize: 15.0),textAlign: TextAlign.center,),
                                                  Text('0.0',style: TextStyle(fontSize:15.0),textAlign: TextAlign.center,),
                                                  Text('5',style: TextStyle(fontSize: 15.0),textAlign: TextAlign.center,),
                                                ],
                                              ),
                                             ]
                                         )

                                       ]
                                   )
                               )
                               ,
                             ),
                           ),
                           new ListTile(
                             title:new InkWell(
                                   onTap:(){Navigator.push(
                                     context,
                                     MaterialPageRoute(builder: (context) => menu(1)) ,
                                   );},
                                   child: new Card(
                                       child: new Row(
                                           children: <Widget>[
                                             Icon(Icons.person,size: 50.0,color:Color.fromRGBO(62, 9, 182, 1.0)),
                                             Text("Personal Info",style: TextStyle(fontWeight: FontWeight.bold))
                                           ]
                                       )
                                   )
                                   ,
                                 ),
                           ),
                           new ListTile(
                             title:new InkWell(
                               onTap:(){Navigator.push(
                                 context,
                                 MaterialPageRoute(builder: (context) => menu(3)) ,
                               );},
                               child: new Card(
                                   child: new Row(
                                       children: <Widget>[
                                         Icon(Icons.timeline,size: 50.0,color:Color.fromRGBO(8, 165, 46, 1.0)),
                                         Text("Time Sheet",style: TextStyle(fontWeight: FontWeight.bold))
                                       ]
                                   )
                               )
                               ,
                             ),
                           ),
                           new ListTile(
                             title:new InkWell(
                               onTap:(){Navigator.push(
                                 context,
                                 MaterialPageRoute(builder: (context) => menu(3)) ,
                               );},
                               child: new Card(
                                   child: new Row(
                                       children: <Widget>[
                                         Icon(Icons.timer,color:Colors.deepOrange,size: 50.0),
                                         Text("Time Sheet Report",style: TextStyle(fontWeight: FontWeight.bold))
                                       ]
                                   )
                               )
                               ,
                             ),
                           ),
                         ],
                       )
                   ],
                   ),

                 )
               )
               ],

            )
            )
        
    );
  }
}
