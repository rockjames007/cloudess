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
                dense: true,
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
                            dense:true,
                            title: Column(
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
                                      text: TextSpan(
                                          children:<TextSpan>[TextSpan(text:"Fixed Asset ID:",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 10.0)),
                                          TextSpan(text:"10023",style: TextStyle(color: Colors.black,fontSize: 10.0)),
                                          ]
                                      ),
                                    ),
                                    Divider(),
                                    RichText(
                                      textAlign: TextAlign.left,
                                      text: TextSpan(
                                          children:<TextSpan>[TextSpan(text:"Fixed Asset Name: ",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 10.0)),
                                          TextSpan(text:"Lenovo C40-30",style: TextStyle(color: Colors.black,fontSize: 10.0)),
                                          ]
                                      ),
                                    ),
                                    Divider(),
                                    RichText(
                                      textAlign: TextAlign.left,
                                      text: TextSpan(
                                          children:<TextSpan>[TextSpan(text:"From Date: ",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 10.0)),
                                          TextSpan(text:"01/08/2014",style: TextStyle(color: Colors.black,fontSize: 10.0)),
                                          ]
                                      ),
                                    ),
                                    Divider(),
                                    RichText(
                                      textAlign: TextAlign.left,
                                      text: TextSpan(
                                          children:<TextSpan>[TextSpan(text:"Thru Date: ",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 10.0)),
                                          TextSpan(text:"05/06/2018",style: TextStyle(color: Colors.black,fontSize: 10.0)),
                                          ]
                                      ),
                                    ),
                                    Divider(),
                                    RichText(
                                      textAlign: TextAlign.left,
                                      text: TextSpan(
                                          children:<TextSpan>[TextSpan(text:"Status:",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 10.0)),
                                          TextSpan(text:"Unassigned",style: TextStyle(color: Colors.red,fontSize: 10.0)),
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
