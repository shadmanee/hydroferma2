import 'dart:math';

import 'package:flutter/material.dart';
import 'package:hydroferma2/pages/bluetooth1.dart';
import 'package:hydroferma2/pages/lifecycle.dart';
import 'package:hydroferma2/pages/notification.dart';
import 'package:hydroferma2/pages/waterdata.dart';
import 'package:hydroferma2/pages/waterdevices.dart';

import 'weekly_chart.dart';

class WaterNutrient extends StatelessWidget {
  final List<double> data = [
    2,
    2.3,
    4.4,
    2.3,
    5.4,
    5.9,
    6.5,
    5.8,
    7,
    6.9,
    5.1,
    5.2,
    4
  ];
  GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    BuildContext ctx;
    return Scaffold(
        key: _scaffoldKey,
        backgroundColor: Colors.white,
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
            child: Stack(children: [
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
                        // Route route =
                        //     MaterialPageRoute(builder: (context) => *ENTER CLASS_NAME HERE*);
                        // Navigator.push(context, route);
                      },
                    ),
                  ),
                  Container(
                    child: IconButton(
                      icon: Image.asset('images/user.png'),
                      onPressed: () {},
                    ),
                  )
                ],
              ),
              Container(
                  margin: EdgeInsets.only(top: 48),
                  child: Padding(
                    padding: EdgeInsets.all(8),
                    child: Row(
                      children: [
                        Container(
                          height: 30,
                          child: FlatButton(
                              child: Text('Water'),
                              onPressed: () {},
                              shape: Border(
                                bottom:
                                    BorderSide(color: Colors.black, width: 3),
                              )),
                        ),
                        Container(
                            height: 30,
                            child: TextButton(
                              child: Text('Nutrient',
                                  style: TextStyle(color: Color(0xff616161))),
                              onPressed: () {
                                ctx = context;
                                Route route = MaterialPageRoute(
                                    builder: (ctx) => WaterDevices());
                                Navigator.push(ctx, route);
                              },
                            ))
                      ],
                    ),
                  )),
              ListView(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 30),
                    height: 270,
                    child: Row(
                      children: [
                        Expanded(
                            child: Container(
                          padding: EdgeInsets.only(top: 20),
                        )),
                        Container(
                          padding: EdgeInsets.only(top: 20),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: Color(0xffE6F3FE),
                              boxShadow: [
                                BoxShadow(
                                  color: Color(0x26000000),
                                  spreadRadius: 0.3,
                                ), //BoxShadow
                              ]),
                          margin: EdgeInsets.only(right: 6),
                          height: 150,
                          width: 120,
                          // child: ,
                        ),
                        Container(
                          padding: EdgeInsets.only(top: 20),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: Color(0xffE6F3FE),
                              boxShadow: [
                                BoxShadow(
                                  color: Color(0x26000000),
                                  spreadRadius: 0.3,
                                ), //BoxShadow
                              ]),
                          margin: EdgeInsets.only(left: 6),
                          height: 150,
                          width: 120,
                        ),
                        Expanded(
                            child: Container(
                          padding: EdgeInsets.only(top: 20),
                        ))
                      ],
                    ),
                  ),
                  Divider(),
                  Container(
                    child: FlatButton(
                      child: Row(
                        children: [
                          Text('Water Usage',
                              style: TextStyle(fontWeight: FontWeight.w400)),
                          Expanded(
                            child: Container(),
                          ),
                          Container(
                            alignment: Alignment(1, -1),
                            child: IconButton(
                                onPressed: () {
                                  Route route = MaterialPageRoute(
                                      builder: (context) => WeeklyChart(data));
                                  Navigator.push(context, route);
                                },
                                icon: Icon(Icons.arrow_forward_ios)),
                          )
                        ],
                      ),
                      onPressed: () {},
                    ),
                  ),
                  Divider(),
                  Container(
                    child: FlatButton(
                      child: Row(
                        children: [
                          Text('Connected Devices',
                              style: TextStyle(fontWeight: FontWeight.w400)),
                          Expanded(
                            child: Container(),
                          ),
                          Container(
                            alignment: Alignment(1, -1),
                            child: IconButton(
                                onPressed: () {
                                  Route route = MaterialPageRoute(
                                      builder: (context) => WaterDevices());
                                  Navigator.push(context, route);
                                },
                                icon: Icon(Icons.arrow_forward_ios)),
                          )
                        ],
                      ),
                      onPressed: () {},
                    ),
                  ),
                  Divider(),
                  Container(
                    child: FlatButton(
                      child: Row(
                        children: [
                          Text('Alerts & Notifications',
                              style: TextStyle(fontWeight: FontWeight.w400)),
                          Expanded(
                            child: Container(),
                          ),
                          Container(
                            alignment: Alignment(1, -1),
                            child: IconButton(
                                onPressed: () {},
                                icon: Icon(Icons.arrow_forward_ios)),
                          )
                        ],
                      ),
                      onPressed: () {
                        Route route = MaterialPageRoute(
                                        builder: (context) => Notifications());
                                    Navigator.push(context, route);
                      },
                    ),
                  ),
                  Divider(),
                  Container(
                    child: FlatButton(
                      child: Row(
                        children: [
                          Text('About',
                              style: TextStyle(fontWeight: FontWeight.w400)),
                          Expanded(
                            child: Container(),
                          ),
                          Container(
                            alignment: Alignment(1, -1),
                            child: IconButton(
                                onPressed: () {},
                                icon: Icon(Icons.info_outline)),
                          )
                        ],
                      ),
                      onPressed: () {},
                    ),
                  )
                ],
              )
              // WeeklyChart(data)
            ])));
  }
}

Route _createRoute() {
  return PageRouteBuilder(
    pageBuilder: (ctx, animation, secondaryAnimation) => Nutrient(),
    transitionsBuilder: (ctx, animation, secondaryAnimation, child) {
      return child;
    },
  );
}

class Nutrient extends StatelessWidget {
  GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: _scaffoldKey,
        backgroundColor: Colors.white,
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
            child: Stack(children: [
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
                        // Route route =
                        //     MaterialPageRoute(builder: (context) => *ENTER CLASS_NAME HERE*);
                        // Navigator.push(context, route);
                      },
                    ),
                  ),
                  Container(
                    child: IconButton(
                      icon: Image.asset('images/user.png'),
                      onPressed: () {},
                    ),
                  )
                ],
              ),
              Container(
                  margin: EdgeInsets.only(top: 48),
                  child: Padding(
                    padding: EdgeInsets.all(8),
                    child: Row(
                      children: [
                        Container(
                            height: 30,
                            child: FlatButton(
                              child: Text('Water',
                                  style: TextStyle(color: Color(0xff616161))),
                              onPressed: () {
                                Navigator.of(context).push(_createRoute2());
                              },
                            )),
                        Container(
                          height: 30,
                          child: FlatButton(
                              child: Text('Nutrient'),
                              onPressed: () {},
                              shape: Border(
                                bottom:
                                    BorderSide(color: Colors.black, width: 3),
                              )),
                        )
                      ],
                    ),
                  )),
              ListView(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 90, right: 10, left: 10),
                    height: 230,
                    child: Column(
                      children: [
                        Container(
                          padding: EdgeInsets.only(top: 20),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: Color(0xffE6F3FE),
                              boxShadow: [
                                BoxShadow(
                                  color: Color(0x26000000),
                                  spreadRadius: 0.3,
                                ), //BoxShadow
                              ]),
                          margin: EdgeInsets.only(right: 6, left: 6),
                          height: 100,
                          width: 300,
                          // child: ,
                        ),
                        SizedBox(height: 20),
                        Container(
                          padding: EdgeInsets.only(top: 20),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: Color(0xffE6F3FE),
                              boxShadow: [
                                BoxShadow(
                                  color: Color(0x26000000),
                                  spreadRadius: 0.3,
                                ), //BoxShadow
                              ]),
                          margin: EdgeInsets.only(left: 6, right: 6),
                          height: 100,
                          width: 300,
                        )
                      ],
                    ),
                  ),
                  Container(
                      margin: EdgeInsets.only(right: 8),
                      alignment: Alignment(1, -1),
                      child: TextButton(
                        child: Text(
                          'Add More+',
                          style:
                              TextStyle(fontSize: 12, color: Colors.grey[500]),
                        ),
                        onPressed: () {},
                      ))
                ],
              )
              // WeeklyChart(data)
            ])));
  }
}

Route _createRoute2() {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => WaterNutrient(),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      return child;
    },
  );
}
