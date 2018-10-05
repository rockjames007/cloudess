import 'package:flutter/material.dart';
void main()=>runApp(Qualification());
class Qualification extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: null,child: Icon(Icons.add),),
      backgroundColor:Color.fromRGBO(13, 80, 121 , 1.0),
      body:new Container(
        child:new SingleChildScrollView(
      child:Column(
          children: <Widget>[
        Container(
        decoration: BoxDecoration(
          color: Colors.blue.shade100,
        ),
        child:  ListTile(
          dense: true,
          title:Text('Qualification',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18.0),),
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
              FloatingActionButton(onPressed: null, child: Icon(Icons.edit), mini: true, ),
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
                    TextSpan(text:"Qualification Type: ",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 13.0)),
                    TextSpan(text:"Secondary School Leaving Certificate",style: TextStyle(color: Colors.black,fontSize: 13.0)),
                  ]
                  ),
                ),
                Divider(),
                RichText(
                  textAlign: TextAlign.left,
                  text: TextSpan(children: <TextSpan>
                  [
                    TextSpan(text:"Institution/Organization: ",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 13.0)),
                    TextSpan(text:"VEMANA INSTITUTE OF TECHNOLOGY",style: TextStyle(color: Colors.black,fontSize: 13.0)),
                  ]
                  ),
                ),
              Divider(),
                RichText(
                  textAlign: TextAlign.left,
                  text: TextSpan(children: <TextSpan>
                  [
                    TextSpan(text:"Qualification/Designation: ",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 13.0)),
                    TextSpan(text:"B.E. computer science",style: TextStyle(color: Colors.black,fontSize: 13.0)),
                  ]
                  ),
                ),
                Divider(),
                RichText(
                  textAlign: TextAlign.left,
                  text: TextSpan(children: <TextSpan>
                  [
                    TextSpan(text:"From Date: ",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 13.0)),
                    TextSpan(text:"01/08/2014",style: TextStyle(color: Colors.black,fontSize: 13.0)),
                  ]
                  ),
                ),
                Divider(),
                RichText(
                  textAlign: TextAlign.left,
                  text: TextSpan(children: <TextSpan>
                  [
                    TextSpan(text:"Thru Date: ",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 13.0)),
                    TextSpan(text:"05/06/2018",style: TextStyle(color: Colors.black,fontSize: 13.0)),
                  ]
                  ),
                ),
                Divider(),
                RichText(
                  textAlign: TextAlign.left,
                  text: TextSpan(children: <TextSpan>
                  [
                  TextSpan(text:"Status: ",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 13.0)),
                  TextSpan(text:"Verified",style: TextStyle(color: Colors.green,fontSize: 13.0)),
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
