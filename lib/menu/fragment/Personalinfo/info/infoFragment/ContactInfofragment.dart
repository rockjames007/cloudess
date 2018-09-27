import 'package:flutter/material.dart';
import 'package:xmplaressflutter/menu/fragment/Personalinfo/info/infoFragment/contact/PrimaryContact.dart';
import 'package:xmplaressflutter/menu/fragment/Personalinfo/info/infoFragment/contact/SecondayContact.dart';
import 'package:flutter/services.dart';
void main() => runApp(ContactInfoFragment());
class ContactInfoFragment extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _ContactInfoState();
  }
}
class _ContactInfoState extends State<ContactInfoFragment>
{
  int _currentIndex = 0;
  final List<Widget> _children = [PlaceholderWidget(0),PlaceholderWidget(1)];
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
                  title:Text('Contact Info',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 21.0),),

                ),
              ),
               Row(
                 children: <Widget>[
                   new InkWell(
                     onTap:(){ HapticFeedback.vibrate();onTabTapped(_currentIndex=0);},
                   child:Card(
                     color: Color.fromRGBO(195, 250, 222,1.0),
                     elevation: 250.0,
                     child: Container(
                       height: 25.0,
                       width: 172.0,
                       child: Text("Primary",textAlign: TextAlign.center,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18.0),),
                     ),
                   ),
                   ),
                   new InkWell(
                     onTap:(){ HapticFeedback.vibrate(); onTabTapped(_currentIndex=1);},
                     child:
                   Card(
                       color: Color.fromRGBO(250, 211, 195,1.0),
                       child: Container(
                         height: 25.0,
                         width: 172.0,
                         child: Text("Secondary",textAlign: TextAlign.center,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18.0),),
                       )
                   )
                   ),
                 ],
               ) ,
             ConstrainedBox(
             constraints: new BoxConstraints
             (
              maxHeight: 250.0,
              maxWidth: 350.0,
              minHeight: 250.0,
              minWidth: 350.0,
            ),
             child: _children[_currentIndex],
             ),
            ],
          ),
        )

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
    _selectedDrawerIndex=pos;
  }
  @override
  Widget build(BuildContext context) {

    switch (_selectedDrawerIndex) {
      case 0:
        return new PrimaryContact();
      case 1:
        return new SecondaryContact();
    }
  }
}