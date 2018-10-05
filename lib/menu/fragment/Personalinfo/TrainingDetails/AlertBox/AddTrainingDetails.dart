import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:datetime_picker_formfield/datetime_picker_formfield.dart';
void main() => runApp(AddTrainingDetails());
class AddTrainingDetails extends StatefulWidget {
  State<StatefulWidget> createState() {
    return _AddTrainingDetailsState();
  }
}
class _AddTrainingDetailsState extends State<AddTrainingDetails>
{  int _currentIndex = 0;
List<String> _trainings = <String>['Certification','Training','Training come Certification'];
String _training = 'Certification';
@override
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
            Text('Add Training Details',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18.0),textAlign: TextAlign.center, ),
            Icon(Icons.add)
          ] ),
    ),
    contentPadding:EdgeInsets.all(0.0),
    content: SingleChildScrollView(
      child:
      new Container(
        height: 275.0,
        decoration: BoxDecoration(
          color: Color.fromRGBO(13, 80, 121 , 1.0),
        ),
        child: Column(
          children: <Widget>[
            Container(
                color: Color.fromRGBO(224, 251, 253, 1.0),
                child:
                ListTile(
                  title:Column(
                    children: <Widget>[
                      new InputDecorator(
                        decoration: const InputDecoration(
                          icon: const Icon(Icons.receipt),
                          labelText: 'Training Type',
                        ),
                        child: new DropdownButtonHideUnderline(
                          child: new DropdownButton<String>(
                            value: _training,
                            isDense: true,
                            onChanged: (String newValue) {
                              setState(() {
                                _training = newValue;
                              });
                            },
                            items: _trainings.map((String value) {
                              return new DropdownMenuItem<String>(
                                value: value,
                                child: new Text(value,style: TextStyle(fontSize: 15.0),),
                              );
                            }).toList(),
                          ),
                        ),
                      )
                    ],
                  ) ,
                )
            ),Container(
        color: Color.fromRGBO(240, 252, 253, 1.0),
        child:
        ListTile(
          title:new TextFormField(
            decoration: const InputDecoration(
              icon: const Icon(Icons.location_city),
              labelText: 'Training Description:',
            ),
          ),
        )
        ),
            Container(
                color: Color.fromRGBO(224, 251, 253, 1.0),
                child:
                ListTile(
                  title:DateTimePickerFormField( format: DateFormat("dd/MM/yyyy"),
                      textAlign: TextAlign.start,
                      dateOnly: true,
                      decoration: new InputDecoration(icon: const Icon(Icons.calendar_today),labelText: "From Date"),
                      onChanged: (date) {
                        Scaffold
                            .of(context)
                            .showSnackBar(SnackBar(content: Text('$date'),));
                      }
                  ) ,
                )
            ),
            Container(
                color: Color.fromRGBO(224, 251, 253, 1.0),
                child:
                ListTile(
                  title:DateTimePickerFormField( format: DateFormat("dd/MM/yyyy"),
                      textAlign: TextAlign.start,
                      dateOnly: true,
                      decoration: new InputDecoration(icon: const Icon(Icons.calendar_view_day),labelText: "Thru Date"),
                      onChanged: (date) {
                        Scaffold
                            .of(context)
                            .showSnackBar(SnackBar(content: Text('$date'),));
                      }
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
