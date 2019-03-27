import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

void main() => runApp(EditPrimaryContactDetails());
class EditPrimaryContactDetails extends StatefulWidget {
  State<StatefulWidget> createState() {
    return _EditPrimaryContactDetailsState();
  }
}
class StatesIn {
  const StatesIn(this.name,this.id);

  final String name;
  final String id;
}
class _EditPrimaryContactDetailsState extends State<EditPrimaryContactDetails>
{
  StatesIn selectst;
List<String> _countries = <String>['India','USA'];
List<StatesIn> _states = <StatesIn>[const StatesIn('ANDAMAN AND NICOBAR','AN'),
  const StatesIn('ANDHRA PRADESH','AP'),
  const StatesIn('ARUNACHAL PRADESH','AR'),
  const StatesIn('BIHAR','BH'),
  const StatesIn('CHANDIGARH','CH'),
  const StatesIn('CHHATTISGARH','CT'),
  const StatesIn('DADRA AND NAGER HAVELI','DH'),
  const StatesIn('DAMAN AND DIU','DD'),
  const StatesIn('GUJARAT','GJ'),
  const StatesIn('HARYANA','HR'),
  const StatesIn('HIMACHAL PRADESH','HP'),
  const StatesIn('JAMMU AND KASHMIR','JK'),
  const StatesIn('KARNATAKA','KA'),
  const StatesIn('KERALA','KL'),
  const StatesIn('LAKSHADWEEP','LW'),
  const StatesIn('MADHYA PRADESH','MH'),
  const StatesIn('MANIPUR','MR'),
  const StatesIn('MEGHALAYA','MG'),
  const StatesIn('MIZORAM','MZ'),
  const StatesIn('NAGALAND','NG'),
  const StatesIn('NEW DELHI','DL'),
  const StatesIn('ORISSA','OR'),
  const StatesIn('PONDICHERRY','PY'),
  const StatesIn('PUNJAB','PJ'),
  const StatesIn('RAJASTHAN','RJ'),
  const StatesIn('SIKKIM','SK'),
  const StatesIn('TAMILNADU','TN'),
  const StatesIn('TRIPURA','TR'),
  const StatesIn('UTTARANCHAL','UT'),
  const StatesIn('UTTAR PRADESH','UP'),
  const StatesIn('WEST BENGAL','WB'),
  ];
String _country = 'India';
  int state=0;
  final addressController = TextEditingController();
  final cityController = TextEditingController();
  final postController = TextEditingController();
  final contactController = TextEditingController();
  final emailController = TextEditingController();
  @override
  void dispose() {
    // Clean up the controller when the Widget is disposed
    addressController.dispose();
    cityController.dispose();
    postController.dispose();
    contactController.dispose();
    emailController.dispose();
    super.dispose();
  }
  @override
  void initState() {
    selectst=_states[0];
    print(_states[0]);
  }
@override
Widget build(BuildContext context) {
  return FutureBuilder(
      future: FirebaseAuth.instance.currentUser(),
     builder: (context, AsyncSnapshot<FirebaseUser> snapshot) {
       if (snapshot.hasData) {
       return AlertDialog(
        titlePadding: EdgeInsets.all(0.0),
        title:Container(
         height: 50.0,
         decoration: BoxDecoration(
         color: Color.fromRGBO(13, 80, 121, 1.0),
         ),
         child:Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Update Primary Contact ',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18.0,color: Colors.white),textAlign: TextAlign.center, ),
            Icon(Icons.edit,color: Colors.white,)
          ] ),
         ),
        contentPadding:EdgeInsets.all(0.0),
        content: SingleChildScrollView(
        child:StreamBuilder(
       stream: Firestore.instance.collection('users').document(snapshot.data.uid).collection('myprofile').document('primarycontact').snapshots(),
      builder: (context, snapshot) {
      if (!snapshot.hasData)
        return new CircularProgressIndicator();
       else {
        var userDocument = snapshot.data;
        addressController.value=new TextEditingController.fromValue(new TextEditingValue(text: userDocument['add'])).value;
        cityController.value=new TextEditingController.fromValue(new TextEditingValue(text: userDocument['city'])).value;
        postController.value=new TextEditingController.fromValue(new TextEditingValue(text: userDocument['postal'])).value;
        contactController.value=new TextEditingController.fromValue(new TextEditingValue(text: userDocument['contact'])).value;
        emailController.value=new TextEditingController.fromValue(new TextEditingValue(text: userDocument['emailid'])).value;
        if(state==0) {
          selectst = _states[_states.indexOf(userDocument['state'],)];
          _country=userDocument['country'];
        }
        return Container(
        height: 480.0,
        child: Column(
          children: <Widget>[
        Container(
        color: Colors.white,
          child:Column(
            children: <Widget>[
              ListTile(
                title:new TextFormField(
                  controller: addressController,
                  decoration: const InputDecoration(
                    icon: const Icon(Icons.location_on),
                    labelText: 'Address',
                  ),
                ),
              ),
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
                              state=1;
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
              ),
              ListTile(
                title:Column(
                  children: <Widget>[
                    new InputDecorator(
                      decoration: const InputDecoration(
                        icon: const Icon(Icons.gps_not_fixed),
                        labelText: 'State',
                      ),
                      child: new DropdownButtonHideUnderline(
                        child: new DropdownButton<StatesIn>(
                          value: selectst,
                          isDense: true,
                          onChanged: (StatesIn newValue) {
                            setState(() {
                              selectst = newValue;
                              state=1;
                            });
                          },
                          items: _states.map((StatesIn st) {
                            return new DropdownMenuItem<StatesIn>(
                              value: st,
                              child: new Text(st.name,style: TextStyle(fontSize: 13.0),),
                            );
                          }).toList(),
                        ),
                      ),
                    )
                  ],
                ) ,
              ),
              ListTile(
                title:new TextFormField(
                  controller: cityController,
                  decoration: const InputDecoration(
                    icon: const Icon(Icons.location_city),
                    labelText: 'City',
                  ),
                ),
              ),
              ListTile(
                title:new TextFormField(
                  controller: postController,
                  decoration: const InputDecoration(
                    icon: const Icon(Icons.markunread_mailbox),
                    labelText: 'Postal Code',
                  ),
                ),
              ),
              ListTile(
                title:new TextFormField(
                  controller: contactController,
                  decoration: const InputDecoration(
                    icon: const Icon(Icons.phone),
                    labelText: 'Contact Number',
                  ),
                ),
              ),
              ListTile(
                title:new TextFormField(
                  controller: emailController,
                  decoration: const InputDecoration(
                    icon: const Icon(Icons.email),
                    labelText: 'Email ID',
                  ),
                ),
              ),
            ],
          )

         ),
          ],
        ),
      );
      }
      }
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
  else
  {
    return CircularProgressIndicator();
  }
  }
  );
}

}
