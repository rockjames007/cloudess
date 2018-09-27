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
          title:Text('Qualification',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 21.0),),
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
              Text("Qualification Type:", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.deepOrangeAccent), ),
              Text("Secondary School Leaving Certificate", style: TextStyle(fontSize: 10.5),),
              Text("Verified", style: TextStyle(fontSize: 10.5, color: Colors.green), ),
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
              color: Color.fromRGBO(255, 237, 232, 1.0),
              child:
              ListTile(
              title: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
              Text("Institution/Organization:", style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 10.0), ),
              Text(
              "VEMANA INSTITUTE OF TECHNOLOGY",
              style: TextStyle(fontSize: 10.0),
              textAlign: TextAlign.center, ),
              Divider(),
              Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Text("Qualification/Designation:", style: TextStyle(fontSize: 10.0,fontWeight: FontWeight.bold), ),
                    Text("B.E. computer science", style: TextStyle(fontSize: 10.0))
                  ],
                ),
              Column(
              children: <Widget>[
              Text("From Date:", style: TextStyle(fontSize: 10.0,fontWeight: FontWeight.bold), ),
              Text("01/08/2014", style: TextStyle(fontSize: 10.0))
              ],
              ),
              Column(
              children: <Widget>[
              Text("Thru Date:", style: TextStyle(fontSize: 10.0,fontWeight: FontWeight.bold), ),
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
