import 'package:flutter/material.dart';
void main() => runApp(HomeFragment());
class HomeFragment extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      bottomNavigationBar:BottomNavigationBar
        (
          type : BottomNavigationBarType.fixed,

        items:
        [
         BottomNavigationBarItem
           (
          icon: new Icon(Icons.info),
          title: new Text('Info',textScaleFactor: 0.7,),

           ),
          BottomNavigationBarItem
            (
          icon: new Icon(Icons.school),
          title: new Text('Qualification',textScaleFactor: 0.7,),
            ),
          BottomNavigationBarItem
            (
            icon: Icon(Icons.picture_as_pdf),
            title: Text('Document',textScaleFactor: 0.7,)
            ),
         BottomNavigationBarItem
           (
             icon: Icon(Icons.account_balance),
             title: Text('Bank Details',textScaleFactor: 0.7,)
         ),
         BottomNavigationBarItem
           (
             icon: Icon(Icons.verified_user),
             title: Text('Fixed Asset',textScaleFactor: 0.7,)
         ),
         BottomNavigationBarItem
           (
             icon: Icon(Icons.people),
             title: Text('Family',textScaleFactor: 0.7,)
         ),
        ],

        ) ,
        body: new SingleChildScrollView(

            child: new Column
              (
              children: <Widget>
              [
                new Container
                  (
                    height: 200.0,
                    width: double.infinity,
                    decoration: new BoxDecoration
                      (
                      color: Color.fromRGBO(13, 80, 121 , 0.7),
                      ),
                  child:Column
                    (
                       mainAxisAlignment: MainAxisAlignment.center,
                       crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>
                      [
                         Container(
                                  width: 100.0,
                                  height: 100.0,
                                  decoration: new BoxDecoration
                                    (
                                      shape: BoxShape.circle,
                                      image: DecorationImage
                                        (image: NetworkImage("https://pbs.twimg.com/profile_images/958027004724461569/O_AiyJhe_400x400.jpg"),
                                          fit: BoxFit.fill
                                        )
                                    ),
                                  ),
                          Column
                           (
                             children: <Widget>
                             [
                             Container
                               (
                               child: Text("Dipu s james",style: TextStyle(fontStyle: FontStyle.italic,fontSize: 25.0),),
                               ),
                               Text("XMS-INT-005")
                             ],
                           ),

                      ],
                  ),

                ),
               new ConstrainedBox
                 (
                   constraints:new BoxConstraints
                     (
                     maxHeight: 550.0,
                     maxWidth: double.infinity,
                     minHeight: 550.0,
                     minWidth: double.infinity
                     ),
                 child: new DecoratedBox(
                   decoration: new BoxDecoration
                     ( 
                       color: Colors.white24,
                     border: new Border.all(color: Color.fromRGBO(13, 80, 121 , 1.0),width: 5.0),
                    ),
                   child: new Column(
                     children: <Widget>[
                       new Column(
                         children: <Widget>
                         [new Container(
                               height: 40.0,
                             child:new ListTile(
                                 title: Text("Personal Information",style: TextStyle(fontSize: 20.0,color: Colors.blueAccent,),),
                                 leading: Icon(Icons.perm_contact_calendar),
                                )
                           ),
                           new Divider(color: Color.fromRGBO(13, 80, 121 , 1.0),indent: 1.0,),
                           new ListTile(
                             title:Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,children: <Widget>
                             [
                               new Container(
                                   height: 50.0,
                                   width: 150.0,
                                 decoration: new BoxDecoration(
                                   shape: BoxShape.rectangle,
                                   borderRadius: BorderRadius.only(topLeft: Radius.circular(46.0)),
                                   border: new Border.all(
                                     color: Colors.black,
                                     width: 1.0,

                                   ),
                                 ),
                                 child:Column(
                                  children: <Widget>[
                                    Text("DOB:",style: TextStyle(color: Colors.indigo),),
                                    Text("10/01/1997",)
                                  ],
                                 )
                                 ),
                               new Container(
                                   height: 50.0,
                                   width: 150.0,
                                   decoration: new BoxDecoration(
                                     shape: BoxShape.rectangle,
                                     borderRadius: BorderRadius.only(topRight: Radius.circular(46.0)),
                                     border: new Border.all(
                                       color: Colors.black,
                                       width: 1.0,
                                     ),
                                   ),
                                   child:Column(
                                     children: <Widget>[
                                       Text("Gender:",style: TextStyle(color: Colors.indigo),),
                                       Text("Male",)
                                     ],
                                   )
                               ),
                                ]
                                 ),
                               ),


                         ],
                       )     
                   ],
                   ),

                 )
               )
               ],

            )
            )
        
    );
  }
}
