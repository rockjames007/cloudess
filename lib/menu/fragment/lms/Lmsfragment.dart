import 'package:flutter/material.dart';
void main()=>runApp(lms());
class lms extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return
      Scaffold(
        floatingActionButton: FloatingActionButton(onPressed: null,child: Icon(Icons.add),),
        backgroundColor:Color.fromRGBO(13, 80, 121 , 1.0),
        body:new Container(
          child: new SingleChildScrollView(
            child:Column(
              children: <Widget>[

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
                                        Column(
                                          children: <Widget>[
                                            Text("Relationship Type:", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.deepOrangeAccent), ),
                                            Text("Father"),
                                          ],
                                        ),
                                        Row(
                                          children: <Widget>[
                                            FloatingActionButton(onPressed: null, child: Icon(Icons.edit), mini: true, ),
                                            FloatingActionButton(onPressed: null, child: Icon(Icons.delete), mini: true, ),
                                          ],
                                        )
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
                                        Text("Name:", style: TextStyle(
                                            fontWeight: FontWeight.bold, fontSize: 10.0), ),
                                        Text(
                                          "Saji james",
                                          style: TextStyle(fontSize: 10.0),
                                          textAlign: TextAlign.center, ),
                                        Divider(),
                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: <Widget>[
                                            Column(
                                              children: <Widget>[
                                                Text("Gender:", style: TextStyle(fontSize: 10.0,fontWeight: FontWeight.bold), ),
                                                Text("Male", style: TextStyle(fontSize: 10.0))
                                              ],
                                            ),
                                            Column(
                                              children: <Widget>[
                                                Text("DOB:", style: TextStyle(fontSize: 10.0,fontWeight: FontWeight.bold), ),
                                                Text("05/06/1960", style: TextStyle(fontSize: 10.0))
                                              ],
                                            ),
                                            Column(
                                              children: <Widget>[
                                                Text("Dependent:", style: TextStyle(fontSize: 10.0,fontWeight: FontWeight.bold), ),
                                                Text("yes", style: TextStyle(fontSize: 10.0))
                                              ],
                                            ),
                                            Column(
                                              children: <Widget>[
                                                Text("Phone Number:", style: TextStyle(fontSize: 10.0,fontWeight: FontWeight.bold), ),
                                                Text("999999999", style: TextStyle(fontSize: 10.0))
                                              ],
                                            )
                                          ],
                                        ),
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
