import 'package:flutter/material.dart';
void main()=>runApp(BankDetails());
class BankDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return
      Scaffold(
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
                    title:Text('Bank Details',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18.0),),
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
                                dense: true,
                                title: Column(
                                  children: <Widget>[
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: <Widget>[
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
                                            TextSpan(text:"Name On Account: ",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 13.0)),
                                            TextSpan(text:"Dipu s James",style: TextStyle(color: Colors.black,fontSize: 13.0)),
                                          ]
                                          ),
                                        ),
                                        Divider(),
                                        RichText(
                                          textAlign: TextAlign.left,
                                          text: TextSpan(children: <TextSpan>
                                          [
                                            TextSpan(text:"Bank Name: ",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 13.0)),
                                            TextSpan(text:"yes bank",style: TextStyle(color: Colors.black,fontSize: 13.0)),
                                          ]
                                          ),
                                        ),
                                        Divider(),
                                        RichText(
                                          textAlign: TextAlign.left,
                                          text: TextSpan(children: <TextSpan>
                                          [
                                            TextSpan(text:"Account Number: ",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 13.0)),
                                            TextSpan(text:"094568461362161",style: TextStyle(color: Colors.black,fontSize: 13.0)),
                                          ]
                                          ),
                                        ),
                                        Divider(),
                                        RichText(
                                          textAlign: TextAlign.left,
                                          text: TextSpan(children: <TextSpan>
                                          [
                                            TextSpan(text:"IFS Code: ",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 13.0)),
                                            TextSpan(text:"YOLO122313",style: TextStyle(color: Colors.black,fontSize: 13.0)),
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
