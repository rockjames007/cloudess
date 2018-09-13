import 'package:flutter/material.dart';
import 'package:xmplaressflutter/menu/fragment/Home/HomeFragment.dart';
import 'package:xmplaressflutter/menu/fragment/Home/UserBottomNavigationBar.dart';
void main() => runApp(menu());
class DrawerItem {
  String title;
  IconData icon;
  DrawerItem(this.title, this.icon);
}
class menu extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: new menuPage(),
        debugShowCheckedModeBanner: false,
        theme: new ThemeData
          (
            primarySwatch: Colors.blue
        )
    );
  }

}
class menuPage  extends StatefulWidget
{  final drawerItems = [
  new DrawerItem(" HOME", Icons.home),
  new DrawerItem(" PERSONAL INFO", Icons.person),
  new DrawerItem(" LMS", Icons.perm_contact_calendar),
  new DrawerItem(" TIME SHEET", Icons.timeline),
  new DrawerItem(" EOD REPORT", Icons.timer),
];

@override
State<StatefulWidget> createState() {
  return new menuPageState();
}
}

class menuPageState extends State<menuPage> {
  int _selectedDrawerIndex = 0;

  _getDrawerItemWidget(int pos) {
    switch (pos) {
      case 0:
        return new HomeFragment();
      case 1:
        return new UserBottomNavigationBar();
      default:
        return new Text("Error");
    }
  }

  _onSelectItem(int index) {
    setState(() => _selectedDrawerIndex = index);
    Navigator.of(context).pop(); // close the drawer
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Container(
        child: Row(
            children: <Widget>[
              Icon(widget.drawerItems[_selectedDrawerIndex].icon),
              Text(widget.drawerItems[_selectedDrawerIndex].title)



          ],

        ),
        ),
        backgroundColor: Color.fromRGBO(13, 80, 121 , 1.0),
      ),
      drawer: new Drawer(
          child: new Container(decoration: new BoxDecoration(color: Colors.white),
          child: new ListView(
            padding: const EdgeInsets.all(0.0),
            children: <Widget> [
              new UserAccountsDrawerHeader(
                  
                  accountName: new Text("Dipu S James"), 
                  currentAccountPicture: new Image.asset("assets/xmplarlogo.png"),
                  accountEmail:  new Text("dipujames7@gmail.com"),
                  decoration: new BoxDecoration(color: Color.fromRGBO(13, 80, 121 , 1.0),
                      
                  )
              ),
              new ListTile(
                title: new Text('HOME',style: TextStyle(color: Colors.blue),),
                leading: new Icon(Icons.home,color: Colors.blue,),
                onTap: () => _onSelectItem(0),
                selected: 0 == _selectedDrawerIndex,

              ),
              new Divider(),
              new ListTile(
                title: new Text('PERSONAL INFO',style: TextStyle(color:Colors.black),),
                leading: new Icon(Icons.person,color: Colors.black,),
                onTap: () {
                  _selectedDrawerIndex=1;
                  _onSelectItem(1);
                  },
                selected: 1== _selectedDrawerIndex,
              ),
              new Divider(),
              new ListTile(
                title: new Text('LMS',style: TextStyle(color:Color.fromRGBO(199, 0, 57, 1.0)),),
                leading: new Icon(Icons.perm_contact_calendar,color: Color.fromRGBO(199, 0, 57, 1.0),),
                onTap: () => _onSelectItem(2),
              ),
              new Divider(),
              new ListTile(
                leading: new Icon(Icons.timeline,color:Color.fromRGBO(8, 165, 46, 1.0),),
                title: new Text('TIME SHEET',style: TextStyle(color: Color.fromRGBO(8, 165, 46, 1.0)),),
                onTap: () => _onSelectItem(3),
              ),
              new Divider(),
              new ListTile(
                leading: new Icon(Icons.timer,color:Colors.deepOrange,),
                title: new Text('EOD REPORT',style: TextStyle(color: Colors.deepOrange),),
                onTap: () => _onSelectItem(4),
              ),
              new Divider(),
            ],
          )
          )
      ),
      body: _getDrawerItemWidget(_selectedDrawerIndex),
    );
  }
}