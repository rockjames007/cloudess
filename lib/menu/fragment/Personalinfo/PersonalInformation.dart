import 'package:flutter/material.dart';
void main() => runApp(PersonalInformation());
class PersonalInformation extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _UserInfoState();
  }
}

class _UserInfoState extends State<PersonalInformation>
{
  int _currentIndex = 0;
  final List<Widget> _children = [PlaceholderWidget(Colors.white),
  PlaceholderWidget(Colors.deepOrange),
  PlaceholderWidget(Colors.green)];
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        body: _children[_currentIndex],
        bottomNavigationBar: BottomNavigationBar
        (
        type: BottomNavigationBarType.fixed,// new
          onTap: onTabTapped, // new
          currentIndex: _currentIndex, //
        items:
        [
          BottomNavigationBarItem
            (
            icon: new Icon(Icons.info),
            title: new Text('Info', textScaleFactor: 0.7,),
          ),
          BottomNavigationBarItem
            (
            icon: new Icon(Icons.school),
            title: new Text('Qualification', textScaleFactor: 0.7,),
          ),
          BottomNavigationBarItem
            (
              icon: Icon(Icons.picture_as_pdf),
              title: Text('Document', textScaleFactor: 0.7,)
          ),
          BottomNavigationBarItem
            (
              icon: Icon(Icons.account_balance),
              title: Text('Bank Details', textScaleFactor: 0.7,)
          ),
          BottomNavigationBarItem
            (
              icon: Icon(Icons.verified_user),
              title: Text('Fixed Asset', textScaleFactor: 0.7,)
          ),
          BottomNavigationBarItem
            (
              icon: Icon(Icons.people),
              title: Text('Family', textScaleFactor: 0.7,)
          ),
        ],

      ),
    ) ;
     /*   body: new SingleChildScrollView(

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
          ]
        )
        )
    );*/

  }
  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }
}
class PlaceholderWidget extends StatelessWidget {
  final Color color;

  PlaceholderWidget(this.color);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
    );
  }
}