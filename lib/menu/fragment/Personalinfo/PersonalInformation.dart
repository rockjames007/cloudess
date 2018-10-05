import 'package:flutter/material.dart';
import 'package:xmplaressflutter/menu/fragment/Personalinfo/info/info.dart';
import 'package:xmplaressflutter/menu/fragment/Personalinfo/Qualification/qualification.dart';
import 'package:xmplaressflutter/menu/fragment/Personalinfo/document/Document.dart';
import 'package:xmplaressflutter/menu/fragment/Personalinfo/bankDetails/BankDetails.dart';
import 'package:xmplaressflutter/menu/fragment/Personalinfo/fixedAsset/FixedAsset.dart';
import 'package:xmplaressflutter/menu/fragment/Personalinfo/family/Family.dart';
import 'package:xmplaressflutter/menu/fragment/Personalinfo/TrainingDetails/TrainingDetailsFragment.dart';
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
  final List<Widget> _children = [PlaceholderWidget(0),
  PlaceholderWidget(1),
  PlaceholderWidget(2),
  PlaceholderWidget(3),
  PlaceholderWidget(4),
  PlaceholderWidget(5),
  PlaceholderWidget(6),
  ];
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
            title: new Text('Basic Info', textScaleFactor: 0.5,),
          ),
          BottomNavigationBarItem
            (
            icon: new Icon(Icons.school),
            title: new Text('Qualification', textScaleFactor: 0.5,),
          ),
          BottomNavigationBarItem
            (
              icon: Icon(Icons.picture_as_pdf),
              title: Text('Document', textScaleFactor: 0.5,)
          ),
          BottomNavigationBarItem
            (
              icon: Icon(Icons.account_balance),
              title: Text('Bank Details', textScaleFactor: 0.5,)
          ),
          BottomNavigationBarItem
            (
              icon: Icon(Icons.verified_user),
              title: Text('Fixed Asset', textScaleFactor: 0.5,)
          ),
          BottomNavigationBarItem
            (
              icon: Icon(Icons.people),
              title: Text('Family', textScaleFactor: 0.5,)
          ),
          BottomNavigationBarItem
            (
              icon: Icon(Icons.assignment),
              title: Text('Training Details', textScaleFactor: 0.5,)
          ),
        ],

      ),
    ) ;
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
        return new info();
      case 1:
        return new Qualification();
      case 2:
        return new Document();
      case 3:
        return new BankDetails();
      case 4:
        return new FixedAsset();
      case 5:
        return new Family();
      case 6:
        return new TrainingDetailsFragment();
    }
    }
  }