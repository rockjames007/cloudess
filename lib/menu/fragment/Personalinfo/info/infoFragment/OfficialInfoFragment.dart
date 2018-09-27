import 'package:flutter/material.dart';
void main() => runApp(officialInfoFragment());
class officialInfoFragment extends StatelessWidget {
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
                  title:Text('Official Info',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 21.0),),

                ),
              ),
              ConstrainedBox(
                constraints:new BoxConstraints
                  (
                  maxHeight: 230.0,
                  maxWidth: 350.0,
                  minHeight: 230.0,
                  minWidth: 350.0,
                ),
                child: new DecoratedBox(
                  decoration: new BoxDecoration
                    (
                    ),
                  child: Column(
                    children: <Widget>[
                      Container(
                          color: Color.fromRGBO(240, 252, 253, 1.0),
                          child:ListTile(
                            title:Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>
                              [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>
                                  [
                                    Text("Position:",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15.0,),),
                                    Text("java Developer",style: TextStyle(fontSize: 15.0,),textAlign: TextAlign.left,overflow: TextOverflow.ellipsis,
                                      maxLines: 2,)
                                  ],) ,
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: <Widget>
                                  [
                                    Text("Grade:",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15.0),),
                                    Text("JME",style: TextStyle(fontSize: 15.0),)
                                  ],) ,
                              ],
                            ),
                          )
                      ),
                      Container(
                          color: Color.fromRGBO(224, 251, 253, 1.0),
                          child:
                          ListTile(
                            title:Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text("Reporting Manager:",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15.0),),
                                Text("Sundararajan Aravamudhan",style: TextStyle(fontSize: 15.0),)
                              ],
                            ) ,
                          )
                      ),
                      Container(
                          color: Color.fromRGBO(253, 240, 251, 1.0),
                          child:
                          ListTile(
                            title:Text("Experience",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16.0),)
                          )
                      ),
                      Container(
                          color: Color.fromRGBO(224, 251, 253, 1.0),
                          child:
                          ListTile(
                            title:Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                            Column(
                              children: <Widget>[
                                Text("Past:",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15.0),),
                                Text("0Month(s)",style: TextStyle(fontSize: 15.0),)
                              ],
                            ) ,
                            Column(
                              children: <Widget>[
                                Text("With Xmplar:",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15.0),),
                                Text("0Year(s) 8Month(s)",style: TextStyle(fontSize: 15.0),)
                              ],
                            ) ,
                            Column(
                              children: <Widget>[
                                Text("Total:",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15.0),),
                                Text("8Month(s)",style: TextStyle(fontSize: 15.0),)
                              ],
                            ) ,
                           ]
                          )
                          )
                      ),
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
