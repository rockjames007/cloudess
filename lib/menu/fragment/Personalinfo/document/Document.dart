import 'package:flutter/material.dart';
void main()=>runApp(Document());
class Document extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: null,child: Icon(Icons.add),),
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
                title:Text('Document',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 21.0),),
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
                                    Column(
                                      children: <Widget>[
                                        Text("Document Type:", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.deepOrangeAccent), ),
                                        Text("Aadhar Card", style: TextStyle(fontSize: 10.5),),
                                      ],
                                    ),
                                    Row(
                                      children: <Widget>[
                                        FloatingActionButton(onPressed: null, child: Icon(Icons.remove_red_eye), mini: true, ),
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
                                    Row(children: <Widget>[
                                      Text("Unique Number:", style: TextStyle(
                                          fontWeight: FontWeight.bold, fontSize: 10.0), ),
                                      Text(
                                        "1231313131231313",
                                        style: TextStyle(fontSize: 10.0),
                                        textAlign: TextAlign.center, ),
                                      ]
                                    ),
                                    Divider(),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: <Widget>[
                                        Column(
                                          children: <Widget>[
                                            Text("Country Issued:", style: TextStyle(fontSize: 10.0,fontWeight: FontWeight.bold), ),
                                            Text("India", style: TextStyle(fontSize: 10.0))
                                          ],
                                        ),
                                        Column(
                                          children: <Widget>[
                                            Text("Issue Date:", style: TextStyle(fontSize: 10.0,fontWeight: FontWeight.bold), ),
                                            Text("01/08/2014", style: TextStyle(fontSize: 10.0))
                                          ],
                                        ),
                                        Column(
                                          children: <Widget>[
                                            Text("Expiry Date:", style: TextStyle(fontSize: 10.0,fontWeight: FontWeight.bold), ),
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
