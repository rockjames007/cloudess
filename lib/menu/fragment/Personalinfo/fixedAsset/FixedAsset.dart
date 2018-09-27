import 'package:flutter/material.dart';
void main()=>runApp(FixedAsset());
class FixedAsset extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor:Color.fromRGBO(13, 80, 121 , 1.0),
        body:new Container(
        child: new SingleChildScrollView(
        child:Column(
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                color: Colors.blue.shade100,
              ),
              child:  ListTile(
                title:Text('Fixed Asset',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 21.0),),
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
                            title: Column(
                              children: <Widget>[
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                   Row(
                                  children: <Widget>[
                                        Text("Fixed Asset ID:", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.deepOrangeAccent), ),
                                        Text("10023"),
                                          ],
                                       ),
                                        Text("Unassigned", style: TextStyle(fontWeight: FontWeight.bold,fontSize: 12.0, color: Colors.red ),)
                                      ],
                                    ),
                              ],
                            ),

                          ),
                          Container(
                              color: Color.fromRGBO(255, 237, 232, 1.0),
                              child:
                              ListTile(
                                title: Column(
                                  children: <Widget>[
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: <Widget>[
                                        Column(
                                          children: <Widget>[
                                            Text("Fixed Asset Name:", style: TextStyle(fontSize: 10.0,fontWeight: FontWeight.bold), ),
                                            Text("Lenovo C40-30", style: TextStyle(fontSize: 10.0))
                                          ],
                                        ),
                                        Column(
                                          children: <Widget>[
                                            Text("From Date:", style: TextStyle(fontSize: 10.0,fontWeight: FontWeight.bold), ),
                                            Text("01/08/2014", style: TextStyle(fontSize: 10.0))
                                          ],
                                        ),
                                        Column(
                                          children: <Widget>[
                                            Text("Thru Date:", style: TextStyle(fontSize: 10.0,fontWeight: FontWeight.bold), ),
                                            Text("05/06/2018", style: TextStyle(fontSize: 10.0))
                                          ],
                                        )
                                      ],
                                    )
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
        ),
      ),
    );
  }
}
