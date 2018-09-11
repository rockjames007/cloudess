import 'package:flutter/material.dart';
import 'package:xmplaressflutter/menu/fragment/Home/UserBottomNavigationBar.dart';
void main() => runApp(HomeFragment());
class HomeFragment extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
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
                     maxHeight: 360.0,
                     maxWidth: double.infinity,
                     minHeight: 360.0,
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
                                 title: Text("Dash Board",style: TextStyle(fontSize: 20.0,color: Colors.blueAccent,),),
                                 leading: Icon(Icons.dashboard),
                                )
                           ),
                           new Divider(color: Color.fromRGBO(13, 80, 121 , 1.0),indent: 1.0,),



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
