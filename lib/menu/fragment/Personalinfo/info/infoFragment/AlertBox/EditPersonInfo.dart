import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:datetime_picker_formfield/datetime_picker_formfield.dart';

void main() => runApp(EditPersonInfo());
class EditPersonInfo extends StatefulWidget {
  State<StatefulWidget> createState() {
  return _EditPersonInfoState();
  }
  }
  class _EditPersonInfoState extends State<EditPersonInfo>
  {  int _currentIndex = 0;
  @override
  List<String> _bloods = <String>['','O +ve', 'O -ve', 'A1B +ve', 'A1B -ve', 'A2 +ve','A2 -ve','A1 +ve','A1 -ve','A +ve','A -ve','A2B +ve','A2B -ve','B +ve','B -ve','B1 +ve','AB +ve','AB -ve'];
  List<String> _maritals = <String>['','Single', 'Married', 'Separated', 'Divorced', 'Widowed'];
  String _blood = '';
  String _marital = '';
  Widget build(BuildContext context) {
        return AlertDialog(
          titlePadding: EdgeInsets.all(0.0),
            title:Container(
                 height: 50.0,
                 decoration: BoxDecoration(
                   color: Colors.blue.shade100,
                 ),
                 child:Row(
                   mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text('Edit Personal Info',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 21.0),textAlign: TextAlign.center, ),
                  Icon(Icons.edit)
                     ] ),
                  ),
            contentPadding:EdgeInsets.all(0.0),
            content: SingleChildScrollView(
             child:
             new Container(
              height: 280.0,
              decoration: BoxDecoration(
                color: Color.fromRGBO(13, 80, 121 , 1.0),
              ),
              child: Column(
                children: <Widget>[
                  Container(
                      color: Color.fromRGBO(224, 251, 253, 1.0),
                      child:
                      ListTile(
                        title:DateTimePickerFormField( format: DateFormat("dd/MM/yyyy"),
                              textAlign: TextAlign.start,
                              dateOnly: true,
                              decoration: new InputDecoration(icon: const Icon(Icons.cake),labelText: "Date of Birth"),
                              onChanged: (date) {
                                Scaffold
                                    .of(context)
                                    .showSnackBar(SnackBar(content: Text('$date'),));
                              }
                        ) ,
                      )
                  ),
                  Container(
                      color: Color.fromRGBO(240, 252, 253, 1.0),
                      child:
                      ListTile(
                        title:Column(
                          children: <Widget>[
                            new InputDecorator(
                              decoration: const InputDecoration(
                                icon: const Icon(Icons.opacity),
                                labelText: 'Blood Group',
                              ),
                              child: new DropdownButtonHideUnderline(
                                child: new DropdownButton<String>(
                                  value: _blood,
                                  isDense: true,
                                  onChanged: (String newValue) {
                                    setState(() {
                                      _blood = newValue;
                                    });
                                  },
                                  items: _bloods.map((String value) {
                                    return new DropdownMenuItem<String>(
                                      value: value,
                                      child: new Text(value),
                                    );
                                  }).toList(),
                                ),
                              ),
                            )
                          ],
                        ) ,
                      )
                  ),
                  Container(
                      color: Color.fromRGBO(224, 251, 253, 1.0),
                      child:
                      ListTile(
                        title:new TextFormField(
                          decoration: const InputDecoration(
                            icon: const Icon(Icons.person),
                            labelText: 'Mother\'s name',
                          ),
                        ),
                      )
                  ),
                  Container(
                      color: Color.fromRGBO(240, 252, 253, 1.0),
                      child:
                      ListTile(
                        title:Column(
                          children: <Widget>[
                            new InputDecorator(
                              decoration: const InputDecoration(
                                icon: const Icon(Icons.favorite),
                                labelText: 'Marital Status',
                              ),
                              child: new DropdownButtonHideUnderline(
                                child: new DropdownButton<String>(
                                  value: _marital,
                                  isDense: true,
                                  onChanged: (String newValue) {
                                    setState(() {
                                      _marital = newValue;
                                    });
                                  },
                                  items: _maritals.map((String value) {
                                    return new DropdownMenuItem<String>(
                                      value: value,
                                      child: new Text(value),
                                    );
                                  }).toList(),
                                ),
                              ),
                            )
                          ],
                        ) ,
                      )
                  )
                ],
              ),
             ),
            ),

            actions: <Widget>[
              // usually buttons at the bottom of the dialog
              new FlatButton(
                child: new Text("Close"),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ],
        );
      }
}
