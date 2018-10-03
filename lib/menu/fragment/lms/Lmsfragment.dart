import 'package:flutter/material.dart';
void main()=>runApp(lms());
class lms extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return
      Scaffold(
        floatingActionButton: FloatingActionButton(onPressed: null,child: Icon(Icons.add),),
        backgroundColor:Color.fromRGBO(194, 204, 207, 0.7),
        body:new Container(
          child: new SingleChildScrollView(
            child:Column(
              children: <Widget>[

                SingleChildScrollView(

                  child: Column(
                    children: <Widget>[
                      new Card(
                          child: new Column(
                              children: <Widget>[
                                 ListTile(
                                   title: Text("Balance",style: TextStyle(color: Colors.deepOrange,fontWeight: FontWeight.bold,fontSize: 15.0),),
                                   dense: true,
                                 ),
                                Table(
                                    border: TableBorder.all(width: 1.0,color: Color.fromRGBO(13, 80, 121 , 0.7)),
                                    defaultVerticalAlignment: TableCellVerticalAlignment.middle,
                                    children:<TableRow>[
                                      TableRow(
                                        children: <Widget>[
                                          Text(' '),
                                          Text('Opening Balance',style: TextStyle(fontSize: 15.0,fontWeight: FontWeight.bold),textAlign: TextAlign.center,),
                                          Text('Leave Accrued',style: TextStyle(fontSize: 15.0,fontWeight: FontWeight.bold),textAlign: TextAlign.center,),
                                          Text('Leave Taken',style: TextStyle(fontSize: 15.0,fontWeight: FontWeight.bold),textAlign: TextAlign.center,),
                                          Text('Leave Applied',style: TextStyle(fontSize: 15.0,fontWeight: FontWeight.bold),textAlign: TextAlign.center,),
                                          Text('Closing Balance',style: TextStyle(fontSize: 15.0,fontWeight: FontWeight.bold),textAlign: TextAlign.center,),
                                        ],
                                      ),
                                      TableRow(
                                        children: <Widget>[
                                          Text('Earned Leave',style: TextStyle(fontSize: 15.0,fontWeight: FontWeight.bold),textAlign: TextAlign.center,),
                                          Text('2',style: TextStyle(fontSize: 20.0),textAlign: TextAlign.center,),
                                          Text('10.5',style: TextStyle(fontSize: 20.0),textAlign: TextAlign.center,),
                                          Text('2',style: TextStyle(fontSize: 20.0),textAlign: TextAlign.center,),
                                          Text('0.0',style: TextStyle(fontSize: 20.0),textAlign: TextAlign.center,),
                                          Text('10.5',style: TextStyle(fontSize: 20.0),textAlign: TextAlign.center,),
                                        ],
                                      ),
                                      TableRow(
                                        children: <Widget>[
                                          Text('Sick Leave',style: TextStyle(fontSize: 15.0,fontWeight: FontWeight.bold),textAlign: TextAlign.center,),
                                          Text('6',style: TextStyle(fontSize: 20.0),textAlign: TextAlign.center,),
                                          Text('0',style: TextStyle(fontSize: 20.0),textAlign: TextAlign.center,),
                                          Text('1',style: TextStyle(fontSize: 20.0),textAlign: TextAlign.center,),
                                          Text('0.0',style: TextStyle(fontSize:20.0),textAlign: TextAlign.center,),
                                          Text('5',style: TextStyle(fontSize: 20.0),textAlign: TextAlign.center,),
                                        ],
                                      ),
                                    ]
                                )

                              ]
                          )
                      ),
                      Card(
                        child:new Column(
                          children: <Widget>[
                            ListTile(
                            )
                          ],
                        )
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      );
  }
}
