import 'package:flutter/material.dart';
import 'package:xmplaressflutter/menu/fragment/Home/HomeFragment.dart';
import 'package:xmplaressflutter/menu/fragment/Personalinfo/PersonalInformation.dart';
import 'package:xmplaressflutter/menu/fragment/lms/Lmsfragment.dart';
import 'package:xmplaressflutter/login/loginpage.dart';
import 'package:xmplaressflutter/menu/fragment/TimeSheet/TimeSheetfragment.dart';
import 'package:xmplaressflutter/menu/fragment/PayStatement/PayStatement.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:xmplaressflutter/auth.dart';
import 'package:xmplaressflutter/root_page.dart';

void main() => runApp(Menu(int));

class DrawerItem {
  String title;
  IconData icon;

  DrawerItem(this.title, this.icon);
}

class Menu extends StatelessWidget {
  int _selectedDrawerIndex;

  Menu(pos) {
    _selectedDrawerIndex = pos;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: new menuPage(_selectedDrawerIndex),
        debugShowCheckedModeBanner: false,
        theme: new ThemeData(primarySwatch: Colors.blue));
  }
}

class menuPage extends StatefulWidget {
  int _selectedDrawer;
  String userid;
  final drawerItems = [
    new DrawerItem("HOME", Icons.home),
    new DrawerItem("MY PROFILE", Icons.person),
    new DrawerItem("LMS", Icons.perm_contact_calendar),
    new DrawerItem("TIME SHEET", Icons.timeline),
    new DrawerItem("PAY STATEMENT", Icons.payment),
  ];

  menuPage(int _selectedDrawerIndex) {
    _selectedDrawer = _selectedDrawerIndex;
  }

  @override
  State<StatefulWidget> createState() {
    return new menuPageState(_selectedDrawer);
  }
}

class menuPageState extends State<menuPage> {
  FirebaseUser _user;
  int _selectedDrawerIndex;
  String username = "";
  String email = "";

  @override
  void initState() {
    super.initState();
    try {
      FirebaseAuth.instance.currentUser().then((_user) =>
          setState(() {
            this._user = _user;
          }));
    } catch (e) {}
  }

  void _signOut() async {
    try {
      await FirebaseAuth.instance.signOut();
      Login();
    } catch (e) {
      print(e);
    }
  }

  menuPageState(int pos) {
    _selectedDrawerIndex = pos;
  }

  _getDrawerItemWidget(int pos) {
    switch (pos) {
      case 0:
        return new HomeFragment();
      case 1:
        return new PersonalInformation();
      case 2:
        return new lms();
      case 3:
        return new TimeSheet();
      case 4:
        return new PayStatement();
      default:
        return new Text("Error");
    }
  }

  _onSelectItem(int index) {
    setState(() {
      _selectedDrawerIndex = index;
    });
    Navigator.of(context).pop(); // close the drawer
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: Text(widget.drawerItems[_selectedDrawerIndex].title,
            style: TextStyle(fontStyle: FontStyle.italic)),
        actions: <Widget>[
          InkWell(
              child: Icon(Icons.notifications),
              onTap: () {})
        ],
        centerTitle: true,
        backgroundColor: Color.fromRGBO(13, 80, 121, 1.0),
      ),
      drawer: new Drawer(
          child: new Container(
              decoration: new BoxDecoration(color: Colors.white),
              child: new FutureBuilder(
                  future: FirebaseAuth.instance.currentUser(),
                  builder: (context, AsyncSnapshot<FirebaseUser> snapshot) {
                    if (snapshot.hasData) {
                      return ListView(
                        padding: const EdgeInsets.all(0.0),
                        children: <Widget>[
                          StreamBuilder(
                              stream: Firestore.instance
                                  .collection('users')
                                  .document(_user.uid)
                                  .snapshots(),
                              builder: (context, snapshot) {
                                if (!snapshot.hasData)
                                  return new CircularProgressIndicator();
                                else {
                                  var userDocument = snapshot.data;
                                  return new UserAccountsDrawerHeader(
                                    accountName: Text(userDocument['name']),
                                    accountEmail: Text(userDocument["email"]),
                                    decoration: new BoxDecoration(
                                      color: Color.fromRGBO(13, 80, 121, 1.0),
                                    ),
                                    currentAccountPicture: Container(
                                      decoration: new BoxDecoration(
                                          shape: BoxShape.circle,
                                          image: DecorationImage(
                                              image: NetworkImage(
                                                  userDocument['image']),
                                              fit: BoxFit.fill)),
                                    ),
                                  );
                                }
                              }),
                          new ListTile(
                            title: new Text('HOME'),
                            leading: new Icon(Icons.home),
                            onTap: () => _onSelectItem(0),
                            selected: 0 == _selectedDrawerIndex,
                          ),
                          new Divider(),
                          new ListTile(
                            title: new Text('MY PROFILE'),
                            leading: new Icon(Icons.person),
                            onTap: () {
                              _onSelectItem(1);
                            },
                            selected: 1 == _selectedDrawerIndex,
                          ),
                          new Divider(),
                          new ListTile(
                            title: new Text('LMS'),
                            leading: new Icon(Icons.perm_contact_calendar),
                            onTap: () => _onSelectItem(2),
                            selected: 2 == _selectedDrawerIndex,
                          ),
                          new Divider(),
                          new ListTile(
                            leading: new Icon(Icons.timeline),
                            title: new Text('TIME SHEET'),
                            onTap: () => _onSelectItem(3),
                            selected: 3 == _selectedDrawerIndex,
                          ),
                          new Divider(),
                          new ListTile(
                            leading: new Icon(Icons.payment),
                            title: new Text('PAY STATEMENT'),
                            onTap: () => _onSelectItem(4),
                            selected: 4 == _selectedDrawerIndex,
                          ),
                          new Divider(),
                          new ListTile(
                              leading: new Icon(Icons.exit_to_app),
                              title: new Text('LOG OUT'),
                              onTap: () {
                                _signOut();
                                Route route = MaterialPageRoute(
                                    builder: (context) =>
                                        RootPage(auth: new Auth()));
                                Navigator.pushReplacement(context, route);
                              }),
                          new Divider(),
                        ],
                      );
                    } else {
                      return CircularProgressIndicator();
                    }
                  }))),
      body: _getDrawerItemWidget(_selectedDrawerIndex),
    );
  }
}
