import 'package:flutter/material.dart';

void main() => runApp(EditPrimaryContactDetails());
class EditPrimaryContactDetails extends StatefulWidget {
  State<StatefulWidget> createState() {
    return _EditPrimaryContactDetailsState();
  }
}
class _EditPrimaryContactDetailsState extends State<EditPrimaryContactDetails>
{  int _currentIndex = 0;
List<String> _countries = <String>['India','USA'];
List<String> _states = <String>['ANDAMAN AND NICOBAR','ANDHRA PRADESH','ARUNACHAL PRADESH','BIHAR','CHANDIGARH',
'CHHATTISGARH','DADRA AND NAGER HAVELI','DAMAN AND DIU','GUJARAT','HARYANA','HIMACHAL PRADESH','JAMMU AND KASHMIR',
'JHARKHAND','KARNATAKA','KERALA','LAKSHADWEEP','MADHYA PRADESH','MAHARASHTRA','MANIPUR','MEGHALAYA','MIZORAM',
'NAGALAND','NEW DELHI','ORISSA','PONDICHERRY','PUNJAB','RAJASTHAN','SIKKIM','TAMILNADU','TRIPURA','UTTARANCHAL',
'UTTAR PRADESH','WEST BENGAL'];
String _country = 'India';
String _state = 'KARNATAKA';
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
            Text('Update Primary Contact',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18.0),textAlign: TextAlign.center, ),
            Icon(Icons.edit)
          ] ),
    ),
    contentPadding:EdgeInsets.all(0.0),
    content: SingleChildScrollView(
      child:
      new Container(
        height: 480.0,
        decoration: BoxDecoration(
          color: Color.fromRGBO(13, 80, 121 , 1.0),
        ),
        child: Column(
          children: <Widget>[
        Container(
        color: Color.fromRGBO(224, 251, 253, 1.0),
          child:
          ListTile(
            title:new TextFormField(
              initialValue: "#206, sanjeevini desai, channasandra main road, hope farm circle, whitefield",
              decoration: const InputDecoration(
                icon: const Icon(Icons.location_on),
                labelText: 'Address',
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
                      icon: const Icon(Icons.gps_fixed),
                      labelText: 'Country',
                    ),
                    child: new DropdownButtonHideUnderline(
                      child: new DropdownButton<String>(
                        value: _country,
                        isDense: true,
                        onChanged: (String newValue) {
                          setState(() {
                            _country = newValue;
                          });
                        },
                        items: _countries.map((String value) {
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
              title:Column(
                children: <Widget>[
                  new InputDecorator(
                    decoration: const InputDecoration(
                      icon: const Icon(Icons.gps_not_fixed),
                      labelText: 'State',
                    ),
                    child: new DropdownButtonHideUnderline(
                      child: new DropdownButton<String>(
                        value: _state,
                        isDense: true,
                        onChanged: (String newValue) {
                          setState(() {
                            _state = newValue;
                          });
                        },
                        items: _states.map((String value) {
                          return new DropdownMenuItem<String>(
                            value: value,
                            child: new Text(value,style: TextStyle(fontSize: 13.0),),
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
            color: Color.fromRGBO(240, 252, 253, 1.0),
            child:
            ListTile(
              title:new TextFormField(
                initialValue: "bengaluru",
                decoration: const InputDecoration(
                  icon: const Icon(Icons.location_city),
                  labelText: 'City',
                ),
              ),
            )
        ),
        Container(
            color: Color.fromRGBO(224, 251, 253, 1.0),
            child:
            ListTile(
              title:new TextFormField(
                initialValue: "560066",
                decoration: const InputDecoration(
                  icon: const Icon(Icons.markunread_mailbox),
                  labelText: 'Postal Code',
                ),
              ),
            )
        ),
        Container(
            color: Color.fromRGBO(240, 252, 253, 1.0),
            child:
            ListTile(
              title:new TextFormField(
                initialValue: "8792875549",
                decoration: const InputDecoration(
                  icon: const Icon(Icons.phone),
                  labelText: 'Contact Number',
                ),
              ),
            )
        ),
        Container(
            color: Color.fromRGBO(224, 251, 253, 1.0),
            child:
            ListTile(
              title:new TextFormField(
                initialValue: "dipujames7@gmail.com",
                decoration: const InputDecoration(
                  icon: const Icon(Icons.email),
                  labelText: 'Email ID',
                ),
              ),
            )
        ),
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
