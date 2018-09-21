import 'package:flutter/material.dart';
import 'package:xmplaressflutter/menu/fragment/Personalinfo/info/infoFragment/PersonalInfoFragment.dart';
import 'package:xmplaressflutter/menu/fragment/Personalinfo/info/infoFragment/OfficialInfoFragment.dart';
import 'package:xmplaressflutter/menu/fragment/Personalinfo/info/infoFragment/PositionalDetailfragment.dart';
import 'package:xmplaressflutter/menu/fragment/Personalinfo/info/infoFragment/ContactInfofragment.dart';
import 'package:xmplaressflutter/menu/fragment/Personalinfo/info/infoFragment/TrainingDetailsFragment.dart';
void main() => runApp(info());
class info extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _InfoState();
  }
}
class _InfoState extends State<info>
{  int _currentIndex = 0;
final List<Widget> _children = [PlaceholderWidget(0),
PlaceholderWidget(1),
PlaceholderWidget(2),
PlaceholderWidget(3),
PlaceholderWidget(4),
];
  @override
    Widget build(BuildContext context) {
    return new SingleChildScrollView(

        child: new Column
          (
            children: <Widget>
            [
              new Container
                (
                height: 150.0,
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
              ),new ConstrainedBox
                (
                  constraints:new BoxConstraints
                    (
                      maxHeight: 490.0,
                      maxWidth: double.infinity,
                      minHeight: 490.0,
                      minWidth: double.infinity
                  ),
                  child: new DecoratedBox(

                    decoration: new BoxDecoration
                      (
                      color: Colors.white24,
                      border: new Border.all(color: Color.fromRGBO(13, 80, 121 , 1.0),width: 5.0),
                    ),
                    child: new Column
                      (
                      children: <Widget>
                       [
                        BottomNavigationBar
                          (
                          type: BottomNavigationBarType.fixed,
                          onTap: onTabTapped, // new
                          currentIndex: _currentIndex,
                          fixedColor: Colors.red,
                          items:
                          [
                            BottomNavigationBarItem
                              (
                              icon: new Icon(Icons.person_pin),
                              title: new Text('Personal Info', textScaleFactor: 0.7,),
                            ),
                            BottomNavigationBarItem
                              (
                              icon: new Icon(Icons.assistant),
                              title: new Text('Official Info', textScaleFactor: 0.7,),
                            ),
                            BottomNavigationBarItem
                              (
                                icon: Icon(Icons.adjust),
                                title: Text('Position Details', textScaleFactor: 0.7,)
                            ),
                            BottomNavigationBarItem
                              (
                                icon: Icon(Icons.phone),
                                title: Text('Contact Info', textScaleFactor: 0.7,)
                            ),
                            BottomNavigationBarItem
                              (
                                icon: Icon(Icons.assignment),
                                title: Text('Training Details', textScaleFactor: 0.7,)
                            ),
                          ],

                        ),
                        Container(
                           height: 430.0,
                          width: double.infinity,
                          child: Scaffold(
                            body: _children[_currentIndex],
                          ),
                        )
                        ]
                      ),
                   ),
                ),
            ]
             ),
          );
    }
  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

}
class PlaceholderWidget extends StatelessWidget {
  int _selectedDrawerIndex;

  PlaceholderWidget(int pos) {
    _selectedDrawerIndex = pos;
  }

  @override
  Widget build(BuildContext context) {
    switch (_selectedDrawerIndex) {
      case 0:
        return new PersonalInfoFragment();
      case 1:
        return new officialInfoFragment();
      case 2:
        return new positionalInfoFragment();
      case 3:
        return new ContactInfoFragment();
      case 4:
        return new TrainingDetailsFragment();
      default:
        return new Text("Error");
    }
  }
}