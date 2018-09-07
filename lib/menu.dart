import 'package:flutter/material.dart';
import 'HomeFragment.dart';
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
  new DrawerItem(" LMS", Icons.perm_contact_calendar),
  new DrawerItem(" TIME SHEET", Icons.timeline)
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
                title: new Text('HOME'),
                leading: new Icon(Icons.home),
                onTap: () => _onSelectItem(0),

              ),
              new Divider(),
              new ListTile(
                title: new Text('LMS'),
                leading: new Icon(Icons.perm_contact_calendar),
                onTap: () => _onSelectItem(1),
              ),
              new Divider(),
              new ListTile(
                leading: new Icon(Icons.timeline),
                title: new Text('TIME SHEET'),
                onTap: () => _onSelectItem(2),
              ),
              new Divider(),
              new Container(
                child:
                new DecoratedBox(decoration: BoxDecoration(color: Colors.greenAccent))

              ),
            ],
          )
          )
      ),
      body: _getDrawerItemWidget(_selectedDrawerIndex),
    );
  }
}