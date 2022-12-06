import 'package:flutter/material.dart';
import 'package:hydroferma2/pages/Useraccount.dart';
import 'package:hydroferma2/pages/bluetooth1.dart';
import 'package:hydroferma2/pages/lifecycle.dart';
import 'package:hydroferma2/pages/notification.dart';
import 'package:hydroferma2/pages/water&nutrient.dart';

class DashBoard extends StatefulWidget {
  const DashBoard({Key? key}) : super(key: key);

  @override
  State<DashBoard> createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {
  GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      drawer: Container(
        width: 250,
        child: Drawer(
          backgroundColor: Color(0xff89B6DC),
          child: ListView(
            padding: EdgeInsets.fromLTRB(8, 20, 8, 8),
            children: [
              Container(
                alignment: Alignment(1, -1),
                child: IconButton(
                    iconSize: 40,
                    onPressed: () {
                      if (_scaffoldKey.currentState!.isDrawerOpen) {
                        Navigator.pop(context);
                      }
                    },
                    icon: Image.asset('images/logo-blue.png')),
              ),
              Container(
                height: 20,
              ),
              Container(
                height: 50,
                child: RaisedButton(
                  color: Color(0xff6CA3D1),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(6.0))),
                  elevation: 5,
                  child: Text('Water & Nutrient Supply',
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.white)),
                  onPressed: () {
                    Route route = MaterialPageRoute(
                        builder: (context) => WaterNutrient());
                    Navigator.push(context, route);
                  },
                ),
              ),
              Divider(),
              Container(
                height: 50,
                child: RaisedButton(
                  color: Color(0xff6CA3D1),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(6.0))),
                  elevation: 5,
                  child: Text('Power Usage',
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.white)),
                  onPressed: () {},
                ),
              ),
              Divider(),
              Container(
                height: 50,
                child: RaisedButton(
                  color: Color(0xff6CA3D1),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(6.0))),
                  elevation: 5,
                  child: Text('Crop Recommendation',
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.white)),
                  onPressed: () {},
                ),
              ),
              Divider(),
              Container(
                height: 50,
                child: RaisedButton(
                  color: Color(0xff6CA3D1),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(6.0))),
                  elevation: 5,
                  child: Text('Life Cycle',
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.white)),
                  onPressed: () {
                    Route route =
                        MaterialPageRoute(builder: (context) => lifecycle1());
                    Navigator.push(context, route);
                  },
                ),
              ),
              Divider(),
              Container(
                height: 50,
                child: RaisedButton(
                  color: Color(0xff6CA3D1),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(6.0))),
                  elevation: 5,
                  child: Text('Connect System',
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.white)),
                  onPressed: () {
                    Route route =
                        MaterialPageRoute(builder: (context) => Bluetooth());
                    Navigator.push(context, route);
                  },
                ),
              ),
              Divider(),
              Container(
                height: 50,
                child: RaisedButton(
                  color: Color(0xff6CA3D1),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(6.0))),
                  elevation: 5,
                  child: Text('Data Log',
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.white)),
                  onPressed: () {},
                ),
              ),
              Divider(),
              Container(
                height: 50,
                child: RaisedButton(
                  color: Color(0xff6CA3D1),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(6.0))),
                  elevation: 5,
                  child: Text('Preferences',
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.white)),
                  onPressed: () {},
                ),
              )
            ],
          ),
        ),
      ),
      body: Container(
        padding: EdgeInsets.only(top: 20),
        child: Stack(
          children: [
            Row(
              children: <Widget>[
                Container(
                  child: IconButton(
                    iconSize: 40,
                    icon: Image.asset('images/logo-white.png'),
                    onPressed: () {
                      _scaffoldKey.currentState!.openDrawer();
                    },
                  ),
                ),
                SizedBox(width: 160),
                Container(
                  child: IconButton(
                    icon: Image.asset('images/noti.png'),
                    onPressed: () {
                      Route route = MaterialPageRoute(
                          builder: (context) => Notifications());
                      Navigator.push(context, route);
                    },
                  ),
                ),
                Container(
                  child: IconButton(
                    icon: Image.asset('images/user.png'),
                    onPressed: () {
                      Route route = MaterialPageRoute(
                          builder: (context) => UserAccount());
                      Navigator.push(context, route);
                    },
                  ),
                )
              ],
            ),
            Column(children: <Widget>[
              Container(
                  margin: EdgeInsets.only(top: 50),
                  height: 570,
                  child: ListView(
                    children: <Widget>[_dashBoardRow(), _dashBoardRow()],
                  ))
            ])
          ],
        ),
      ),
    );
  }
}

Widget _dashBoardRow() {
  return Column(
    children: <Widget>[
      Row(
        children: <Widget>[
          Expanded(child: Container()),
          Column(
            children: <Widget>[
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Color(0xff95D8EB),
                    boxShadow: [
                      BoxShadow(
                        color: Color(0x26000000),
                        offset: const Offset(
                          5.0,
                          5.0,
                        ),
                        blurRadius: 10.0,
                        spreadRadius: 2.0,
                      ), //BoxShadow
                    ]),
                margin: EdgeInsets.only(right: 6, bottom: 12),
                height: 150,
                width: 120,
              ),
              Container(
                  margin: EdgeInsets.only(right: 6, bottom: 12),
                  height: 200,
                  width: 120,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Color(0xff8BD9C7),
                      boxShadow: [
                        BoxShadow(
                          color: Color(0x26000000),
                          offset: const Offset(
                            5.0,
                            5.0,
                          ),
                          blurRadius: 10.0,
                          spreadRadius: 2.0,
                        ), //BoxShadow
                      ]))
            ],
          ),
          Column(
            children: <Widget>[
              Container(
                  margin: EdgeInsets.only(left: 6, bottom: 12),
                  height: 200,
                  width: 120,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Color(0xff8BD9C7),
                      boxShadow: [
                        BoxShadow(
                          color: Color(0x26000000),
                          offset: const Offset(
                            5.0,
                            5.0,
                          ),
                          blurRadius: 10.0,
                          spreadRadius: 2.0,
                        ), //BoxShadow
                      ])),
              Container(
                  margin: EdgeInsets.only(left: 6, bottom: 12),
                  height: 150,
                  width: 120,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Color(0xff95D8EB),
                      boxShadow: [
                        BoxShadow(
                          color: Color(0x26000000),
                          offset: const Offset(
                            5.0,
                            5.0,
                          ),
                          blurRadius: 10.0,
                          spreadRadius: 2.0,
                        ), //BoxShadow
                      ]))
            ],
          ),
          Container(),
          Expanded(child: Container()),
        ],
      )
    ],
  );
}
