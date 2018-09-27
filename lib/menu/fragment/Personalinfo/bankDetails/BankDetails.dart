import 'package:flutter/material.dart';
void main()=>runApp(BankDetails());
class BankDetails extends StatelessWidget {
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
                title:Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,children: <Widget>[Text('Bank Details',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 21.0),),
                Row(
                  children: <Widget>[
                    FloatingActionButton(onPressed: null,mini: true,child: Icon(Icons.edit),),
                    FloatingActionButton(onPressed: null,mini: true,child: Icon(Icons.delete),),
                  ],),
                  ],
                ),
              ),
            ),
            SingleChildScrollView(

              child: ConstrainedBox(
                constraints:new BoxConstraints
                  (
                  maxHeight: 340.0,
                  maxWidth: 350.0,
                  minHeight: 340.0,
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
                                Text("Name On Account:",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15.0),),
                                Text("DIPU S JAMES",style: TextStyle(fontSize: 15.0),)
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
                                Text("Bank Name:",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15.0),),
                                Text("yes bank",style: TextStyle(fontSize: 15.0),)
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
                                Text("Account Number:",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15.0),),
                                Text("094949848494944884",style: TextStyle(fontSize: 15.0),)
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
                                Text("IFS Code:",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15.0),),
                                Text("YRES000454",style: TextStyle(fontSize: 15.0),)
                              ],
                            ) ,
                          )
                      ),
                    ],
                  ),
                ),
              ),
            ),
      ],
        ),
      ),
      ),
    );
  }
}
