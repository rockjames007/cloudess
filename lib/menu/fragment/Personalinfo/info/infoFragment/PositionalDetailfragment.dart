import 'package:flutter/material.dart';
void main() => runApp(positionalInfoFragment());
class positionalInfoFragment extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        body:new Container(
          color: Color.fromRGBO(13, 80, 121 , 1.0),
          child: new Column(
            children: <Widget>[
              Container(
                decoration: BoxDecoration(
                  color: Colors.blue.shade100,
                ),
                child:  ListTile(
                  title:Text('Training Type',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 21.0),),

                ),
              ),
              ConstrainedBox(
                constraints:new BoxConstraints
                  (
                  maxHeight: 450.0,
                  maxWidth: 350.0,
                  minHeight: 450.0,
                  minWidth: 350.0,
                ),
                child: new DecoratedBox(
                  decoration: new BoxDecoration
                    (
                  ),
                  child: Column(
                    children: <Widget>[
                      Container(
                          color: Color.fromRGBO(224, 251, 253, 1.0),
                          child:
                          ListTile(
                            title:Column(
                              children: <Widget>[
                                Text("Organization:",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15.0),),
                                Text("Xmplar Management Solutions Private Limited",style: TextStyle(fontSize: 15.0),)
                              ],
                            ) ,
                          )
                      ),
                      Container(
                          color: Color.fromRGBO(240, 252, 253, 1.0),
                          child:
                          ListTile(
                            title:Column(
                              children: <Widget>[
                                Text("Employee Position:",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15.0),),
                                Text("java Developer",style: TextStyle(fontSize: 15.0),)
                              ],
                            ) ,
                          )
                      ),
                      Container(
                          color: Color.fromRGBO(224, 251, 253, 1.0),
                          child:
                          ListTile(
                            title:Column(
                              children: <Widget>[
                                Text("Employee Position Date Range:",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15.0),),
                                Text("17/01/2018",style: TextStyle(fontSize: 15.0),)
                              ],
                            ) ,
                          )
                      ),
                      Container(
                          color: Color.fromRGBO(240, 252, 253, 1.0),
                          child:
                          ListTile(
                            title:Column(
                              children: <Widget>[
                                Text("Grade:",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15.0),),
                                Text("JME",style: TextStyle(fontSize: 15.0),)
                              ],
                            ) ,
                          )
                      ),
                      Container(
                          color: Color.fromRGBO(224, 251, 253, 1.0),
                          child:
                          ListTile(
                            title:Column(
                              children: <Widget>[
                                Text("Step:",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15.0),),
                                Text("",style: TextStyle(fontSize: 15.0),)
                              ],
                            ) ,
                          )
                      ),
                      Container(
                          color: Color.fromRGBO(240, 252, 253, 1.0),
                          child:
                          ListTile(
                            title:Column(
                              children: <Widget>[
                                Text("Location:",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15.0),),
                                Text("Bangalore",style: TextStyle(fontSize: 15.0),)
                              ],
                            ) ,
                          )
                      ),
                      Container(
                          color: Color.fromRGBO(224, 251, 253, 1.0),
                          child:
                          ListTile(
                            title:Column(
                              children: <Widget>[
                                Text("Reporting Manager:",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15.0),),
                                Text("Sundararajan Aravamudhan",style: TextStyle(fontSize: 15.0),)
                              ],
                            ) ,
                          )
                      ),
                      Container(
                          color: Color.fromRGBO(240, 252, 253, 1.0),
                          child:
                          ListTile(
                            title:Column(
                              children: <Widget>[
                                Text("Location:",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15.0),),
                                Text("Bangalore",style: TextStyle(fontSize: 15.0),)
                              ],
                            ) ,
                          )
                        )
                    ],
                  ),
                ),
              ),
            ],
          ),
        )

    );
  }
}
