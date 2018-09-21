import 'package:flutter/material.dart';
void main() => runApp(PersonalInfoFragment());
class PersonalInfoFragment extends StatelessWidget {
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
                    title:Text('Personal Info',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 21.0),),
                  trailing: FloatingActionButton(elevation: 22.0,mini: true,child:new Icon(Icons.edit),onPressed: null),
                        
                ),
              ),
             ConstrainedBox(
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
                     color: Colors.white,
                     border: new Border.all(color: Color.fromRGBO(13, 80, 121 , 1.0),width: 5.0),
                   ),
                   child: Column(
                     children: <Widget>[
                       Container(
                         color: Color.fromRGBO(224, 251, 253, 1.0),
                      child:
                       ListTile(
                         title:Column(
                           children: <Widget>[
                             Text("Gender:",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15.0),),
                             Text("Male",style: TextStyle(fontSize: 15.0),)
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
                                 Text("Date of Birth:",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15.0),),
                                 Text("10/01/1997",style: TextStyle(fontSize: 15.0),)
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
                                 Text("Blood Group:",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15.0),),
                                 Text("O+",style: TextStyle(fontSize: 15.0),)
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
                                 Text("Mother's Name:",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15.0),),
                                 Text("Mrudula Saji",style: TextStyle(fontSize: 15.0),)
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
                                 Text("Marital Status:",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15.0),),
                                 Text("Single",style: TextStyle(fontSize: 15.0),)
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
                                 Text("Employee Status:",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15.0),),
                                 Text("Flutter Developer",style: TextStyle(fontSize: 15.0),)
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
