import 'package:flutter/material.dart';
void main() => runApp(positionalInfoFragment());
class positionalInfoFragment extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Container(
        color: Color.fromRGBO(13, 80, 121, 1.0),
        child: new Column(
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                color: Colors.blue.shade100,
              ),
              child: ListTile(
                dense: true,
                title: Text('Positional Details', style: TextStyle(
                    fontWeight: FontWeight.bold, fontSize: 21.0),),

              ),
            ),
            ConstrainedBox(
              constraints: new BoxConstraints
                (
                maxHeight: 450.0,
                maxWidth: 360.0,
                minHeight: 450.0,
                minWidth: 360.0,
              ),
              child: new DecoratedBox(
                decoration: new BoxDecoration
                  (
                ),
                child: Column(
                  children: <Widget>[
                    Card(
                      child: Container(

                        child: Column(
                          children: <Widget>[
                            Container(
                              child:ListTile(
                                dense: true,
                                title: Column(
                                    crossAxisAlignment:CrossAxisAlignment.start,
                                    children: <Widget>[
                                RichText(
                                textAlign: TextAlign.left,
                                    text: TextSpan(children: <TextSpan>
                                    [
                                      TextSpan(text:"Organization: ",style: TextStyle(color: Colors.deepOrange,fontWeight: FontWeight.bold)),
                                      TextSpan(text:"Xmplar Management Solutions Private Limited",style: TextStyle(color: Colors.black)),
                                    ]
                                    ),
                                ),
                                ],
                              ),
                              ),
                            ),
                            Container(
                              color: Color.fromRGBO(224, 251, 253, 1.0),
                              height: 33.0,
                              child:ListTile(
                                dense: true,
                                title: Column(
                                  crossAxisAlignment:CrossAxisAlignment.start,
                                  children: <Widget>[
                                    RichText(
                                      textAlign: TextAlign.left,
                                      softWrap: true,
                                      text: TextSpan(children: <TextSpan>
                                      [
                                        TextSpan(text:"Employee Position: ",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold)),
                                        TextSpan(text:"Java Developer",style: TextStyle(color: Colors.black)),
                                      ]
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              color: Color.fromRGBO(240, 252, 253, 1.0),
                              height: 33.0,
                              child:
                              ListTile(
                                dense: true,
                                title: Row(
                                  crossAxisAlignment: CrossAxisAlignment.stretch,
                                  children: <Widget>
                                  [
                                    RichText(text: TextSpan(children: <TextSpan>[
                                      TextSpan(text:"Employee Position Date Range:",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15.0,color: Colors.black),),
                                      TextSpan(text:"17/01/2018",style: TextStyle(fontSize: 15.0,color: Colors.black),
                                      )
                                    ])
                                    )
                                    ,
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              color: Color.fromRGBO(224, 251, 253, 1.0),
                              height: 33.0,
                              child:
                              ListTile(
                                dense: true,
                                title: Row(
                                  crossAxisAlignment: CrossAxisAlignment.stretch,
                                  children: <Widget>
                                  [
                                    RichText(text: TextSpan(children: <TextSpan>[
                                      TextSpan(text:"Grade: ",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15.0,color: Colors.black),),
                                      TextSpan(text:"JME",style: TextStyle(fontSize: 15.0,color: Colors.black),
                                      )
                                    ])
                                    )
                                    ,
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              color: Color.fromRGBO(240, 252, 253, 1.0),
                              height: 33.0,
                              child:
                              ListTile(
                                dense: true,
                                title: Row(
                                  crossAxisAlignment: CrossAxisAlignment.stretch,
                                  children: <Widget>
                                  [
                                    RichText(text: TextSpan(children: <TextSpan>[
                                      TextSpan(text:"Step: ",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15.0,color: Colors.black),),
                                      TextSpan(text:"",style: TextStyle(fontSize: 15.0,color: Colors.black),
                                      )
                                    ])
                                    )
                                    ,
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              color: Color.fromRGBO(224, 251, 253, 1.0),
                              height: 33.0,
                              child:
                              ListTile(
                                dense: true,
                                title: Row(
                                  crossAxisAlignment: CrossAxisAlignment.stretch,
                                  children: <Widget>
                                  [
                                    RichText(text: TextSpan(children: <TextSpan>[
                                      TextSpan(text:"location: ",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15.0,color: Colors.black),),
                                      TextSpan(text:"bengaluru",style: TextStyle(fontSize: 15.0,color: Colors.black),
                                      )
                                    ])
                                    )
                                    ,
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              color: Color.fromRGBO(240, 252, 253, 1.0),
                              height: 33.0,
                              child:ListTile(
                                dense: true,
                                title: Column(
                                  crossAxisAlignment:CrossAxisAlignment.start,
                                  children: <Widget>[
                                    RichText(
                                      textAlign: TextAlign.left,
                                      text: TextSpan(children: <TextSpan>
                                      [
                                        TextSpan(text:"Reporting Manager: ",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold)),
                                        TextSpan(text:"Sundararajan Aravamudhan",style: TextStyle(color: Colors.black)),
                                      ]
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              color: Color.fromRGBO(224, 251, 253, 1.0),
                              child:
                              ListTile(
                                dense: true,
                                title: Row(
                                  children: <Widget>
                                  [
                                    RichText(text: TextSpan(children: <TextSpan>[
                                      TextSpan(text:"Remark: ",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15.0,color: Colors.black),),
                                      TextSpan(text:"",style: TextStyle(fontSize: 15.0,color: Colors.black),
                                      )
                                    ])
                                    )
                                    ,
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
