import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:xmplaressflutter/menu/menu.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

void main() => runApp(HomeFragment());

class _Listcard {
  var icon;
  var title;
  var description;
  Color color;
  var pos;

  _Listcard(this.icon, this.title, this.description, this.color, this.pos);
}

Widget getListCard(BuildContext context, _Listcard card) {
  return ListTile(
    title: new InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => Menu(card.pos)),
        );
      },
      child: new Card(
        color: card.color,
        child: new Column(children: <Widget>[
          ListTile(
            dense: true,
            title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Icon(
                    card.icon,
                    size: 40.0,
                    color: Colors.white,
                  ),
                  Text(
                    card.title,
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.white),
                  ),
                ]),
          ),
          card.title == 'LMS'
              ? Card(
              color: Colors.white,
              child: Table(
                  border: TableBorder.all(
                      width: 1.0, color: Color.fromRGBO(13, 80, 121, 0.7)),
                  defaultVerticalAlignment:
                  TableCellVerticalAlignment.middle,
                  children: <TableRow>[
                    TableRow(
                      children: <Widget>[
                        Text(' '),
                        Text(
                          'Opening Balance',
                          style: TextStyle(
                              fontSize: 10.0, fontWeight: FontWeight.bold),
                          textAlign: TextAlign.center,
                        ),
                        Text(
                          'Leave Accrued',
                          style: TextStyle(
                              fontSize: 10.0, fontWeight: FontWeight.bold),
                          textAlign: TextAlign.center,
                        ),
                        Text(
                          'Leave Taken',
                          style: TextStyle(
                              fontSize: 10.0, fontWeight: FontWeight.bold),
                          textAlign: TextAlign.center,
                        ),
                        Text(
                          'Leave Applied',
                          style: TextStyle(
                              fontSize: 10.0, fontWeight: FontWeight.bold),
                          textAlign: TextAlign.center,
                        ),
                        Text(
                          'Closing Balance',
                          style: TextStyle(
                              fontSize: 10.0, fontWeight: FontWeight.bold),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                    TableRow(
                      children: <Widget>[
                        Text(
                          'Earned Leave',
                          style: TextStyle(
                              fontSize: 10.0, fontWeight: FontWeight.bold),
                          textAlign: TextAlign.center,
                        ),
                        Text(
                          '2',
                          style: TextStyle(fontSize: 15.0),
                          textAlign: TextAlign.center,
                        ),
                        Text(
                          '10.5',
                          style: TextStyle(fontSize: 15.0),
                          textAlign: TextAlign.center,
                        ),
                        Text(
                          '2',
                          style: TextStyle(fontSize: 15.0),
                          textAlign: TextAlign.center,
                        ),
                        Text(
                          '0.0',
                          style: TextStyle(fontSize: 15.0),
                          textAlign: TextAlign.center,
                        ),
                        Text(
                          '10.5',
                          style: TextStyle(fontSize: 15.0),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                    TableRow(
                      children: <Widget>[
                        Text(
                          'Sick Leave',
                          style: TextStyle(
                              fontSize: 10.0, fontWeight: FontWeight.bold),
                          textAlign: TextAlign.center,
                        ),
                        Text(
                          '6',
                          style: TextStyle(fontSize: 15.0),
                          textAlign: TextAlign.center,
                        ),
                        Text(
                          '0',
                          style: TextStyle(fontSize: 15.0),
                          textAlign: TextAlign.center,
                        ),
                        Text(
                          '1',
                          style: TextStyle(fontSize: 15.0),
                          textAlign: TextAlign.center,
                        ),
                        Text(
                          '0.0',
                          style: TextStyle(fontSize: 15.0),
                          textAlign: TextAlign.center,
                        ),
                        Text(
                          '5',
                          style: TextStyle(fontSize: 15.0),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ]))
              : Card(
              color: Colors.white,
              child: ListTile(
                dense: true,
                title: Text(card.description),
              )),
        ]),
      ),
    ),
  );
}

class HomeFragment extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        body: new FutureBuilder(
            future: FirebaseAuth.instance.currentUser(),
            builder: (context, AsyncSnapshot<FirebaseUser> snapshot) {
              if (snapshot.hasData) {
                return Scaffold(
                    body: Stack(children: <Widget>[
                      Container(
                        constraints: BoxConstraints.expand(),
                        child: new DecoratedBox(
                          decoration: new BoxDecoration(
                            color: Color.fromRGBO(194, 204, 207, 0.7),
                            border: new Border.all(
                                color: Color.fromRGBO(13, 80, 121, 1.0),
                                width: 5.0),
                          ),
                          child: SingleChildScrollView(
                            child: Column(children: <Widget>[
                              new Column(
                                children: <Widget>[
                                  new Container(
                                      color: Color.fromRGBO(13, 80, 121, 0.9),
                                      child: new ListTile(
                                          dense: true,
                                          title: Row(
                                            children: <Widget>[
                                              Icon(
                                                Icons.dashboard,
                                                color: Colors.white,
                                              ),
                                              Text("Dash Board",
                                                  style: TextStyle(
                                                      fontSize: 20.0,
                                                      fontWeight: FontWeight
                                                          .bold,
                                                      color: Colors.white)),
                                            ],
                                          ))),
                                  StreamBuilder(
                                      stream: Firestore.instance
                                          .collection('users')
                                          .document(snapshot.data.uid)
                                          .snapshots(),
                                      builder: (context, snapshot) {
                                        if (!snapshot.hasData)
                                          return new CircularProgressIndicator();
                                        else {
                                          var userDocument = snapshot.data;
                                          int count;
                                          if (MediaQuery
                                              .of(context)
                                              .orientation ==
                                              Orientation.landscape)
                                            count = 2;
                                          else
                                            count = 1;
                                          List<_Listcard> cards = [
                                            _Listcard(
                                                Icons.person,
                                                "Logged in as " +
                                                    userDocument['name'],
                                                "Check My Profile",
                                                Color.fromRGBO(
                                                    85, 180, 255, 1.0),
                                                1),
                                            _Listcard(
                                                Icons.perm_contact_calendar,
                                                "LMS",
                                                "",
                                                Color.fromRGBO(
                                                    255, 183, 85, 1.0),
                                                2),
                                            _Listcard(
                                                Icons.timeline,
                                                "My TimeSheets",
                                                "Review My Timesheet",
                                                Color.fromRGBO(
                                                    151, 255, 74, 0.5),
                                                3),
                                            _Listcard(
                                                Icons.payment,
                                                "Pay Statements",
                                                "Check My Monthly payslip",
                                                Color.fromRGBO(
                                                    255, 126, 126, 1.0),
                                                4),
                                            _Listcard(
                                                Icons.error,
                                                "Report Complaint",
                                                "Check My Complaint Status",
                                                Color.fromRGBO(
                                                    210, 126, 126, 1.0),
                                                4),
                                          ];
                                          List<ListTile> _cardList() {
                                            List<ListTile> cardList =
                                            new List<ListTile>();
                                            for (int i = 0; i <
                                                cards.length; i++) {
                                              cardList.add(
                                                  getListCard(
                                                      context, cards[i]));
                                            }
                                            return cardList;
                                          }

                                          return GridView.count(
                                            primary: false,
                                            crossAxisCount: count,
                                            padding: const EdgeInsets.only(
                                                bottom: 10.0),
                                            childAspectRatio: 3.0,
                                            children: _cardList(),
                                            //new Cards()
                                            shrinkWrap: true,
                                          );
                                        }
                                      }),
                                ],
                              ),
                            ]),
                          ),
                        ),
                      ),
                    ]));
              } else {
                return CircularProgressIndicator();
              }
            }));
  }
}
