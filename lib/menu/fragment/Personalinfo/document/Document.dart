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
                dense: true,
                title:Text('Document',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18.0),),
              ),
            ),
            SingleChildScrollView(

              child: Column(
                children: <Widget>[
                  Card(
                    child: Container(
                      color: Colors.blue.shade100.withOpacity(0.3),
                      child:Column(
                        children: <Widget>[
                          ListTile(
                            title: Column(
                              children: <Widget>[
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Row(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: <Widget>[
                                        Container(
                                          height: 30.0,
                                          width: 30.0,
                                          decoration: BoxDecoration(
                                            border: Border.all(width: 1.0),
                                          ),
                                          child:RichText(
                                            textAlign: TextAlign.center,
                                            text:TextSpan(text:"1",style: TextStyle(color: Colors.black,fontSize:25.0 )),
                                          ),
                                        ),
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
                                        TextSpan(text:"Document Type: ",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 13.0)),
                                        TextSpan(text:"Aadhar Card",style: TextStyle(color: Colors.black,fontSize: 13.0)),
                                      ]
                                      ),
                                    ),
                                    Divider(),
                                    RichText(
                                      textAlign: TextAlign.left,
                                      text: TextSpan(children: <TextSpan>
                                      [
                                        TextSpan(text:"Unique Number: ",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 13.0)),
                                        TextSpan(text:"1231313131231313",style: TextStyle(color: Colors.black,fontSize: 13.0)),
                                      ]
                                      ),
                                    ),
                                    Divider(),
                                    RichText(
                                      textAlign: TextAlign.left,
                                      text: TextSpan(children: <TextSpan>
                                      [
                                        TextSpan(text:"Country Issued: ",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 13.0)),
                                        TextSpan(text:"India",style: TextStyle(color: Colors.black,fontSize: 13.0)),
                                      ]
                                      ),
                                    ),
                                    Divider(),
                                    RichText(
                                      textAlign: TextAlign.left,
                                      text: TextSpan(children: <TextSpan>
                                      [
                                        TextSpan(text:"Issue Date: ",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 13.0)),
                                        TextSpan(text:"01/08/2014",style: TextStyle(color: Colors.black,fontSize: 13.0)),
                                      ]
                                      ),
                                    ),
                                    Divider(),
                                    RichText(
                                      textAlign: TextAlign.left,
                                      text: TextSpan(children: <TextSpan>
                                      [
                                        TextSpan(text:"Expiry Date: ",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 13.0)),
                                        TextSpan(text:"05/06/2018",style: TextStyle(color: Colors.black,fontSize: 13.0)),
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
