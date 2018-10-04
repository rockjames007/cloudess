import 'package:flutter/material.dart';
void main()=>runApp(Family());
class Family extends StatelessWidget {
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
            Container(
              decoration: BoxDecoration(
                color: Colors.blue.shade100,
              ),
              child:  ListTile(
                dense: true,
                title:Text('Family Member',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 21.0),),
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
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    RichText(
                                      textAlign: TextAlign.left,
                                      text: TextSpan(children: <TextSpan>
                                      [
                                        TextSpan(text:"Relationship Type: ",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 10.0)),
                                        TextSpan(text:"Father",style: TextStyle(color: Colors.black,fontSize: 10.0)),
                                      ]
                                      ),
                                    ),
                                    Divider(),
                                    RichText(
                                      textAlign: TextAlign.left,
                                      text: TextSpan(children: <TextSpan>
                                      [
                                        TextSpan(text:"Name: ",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 10.0)),
                                        TextSpan(text:"Saji james",style: TextStyle(color: Colors.black,fontSize: 10.0)),
                                      ]
                                      ),
                                    ),
                                    Divider(),
                                    RichText(
                                      textAlign: TextAlign.left,
                                      text: TextSpan(children: <TextSpan>
                                      [
                                        TextSpan(text:"Gender: ",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 10.0)),
                                        TextSpan(text:"Male",style: TextStyle(color: Colors.black,fontSize: 10.0)),
                                      ]
                                      ),
                                    ),
                                    Divider(),
                                    RichText(
                                      textAlign: TextAlign.left,
                                      text: TextSpan(children: <TextSpan>
                                      [
                                        TextSpan(text:"Date Of Birth ",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 10.0)),
                                        TextSpan(text:"10/02/1975",style: TextStyle(color: Colors.black,fontSize: 10.0)),
                                      ]
                                      ),
                                    ),
                                    Divider(),
                                    RichText(
                                      textAlign: TextAlign.left,
                                      text: TextSpan(children: <TextSpan>
                                      [
                                        TextSpan(text:"Dependent: ",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 10.0)),
                                        TextSpan(text:"No",style: TextStyle(color: Colors.black,fontSize: 10.0)),
                                      ]
                                      ),
                                    ),
                                    Divider(),
                                    RichText(
                                      textAlign: TextAlign.left,
                                      text: TextSpan(children: <TextSpan>
                                      [
                                        TextSpan(text:"phone Number: ",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 10.0)),
                                        TextSpan(text:"999999999",style: TextStyle(color: Colors.black,fontSize: 10.0)),
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
