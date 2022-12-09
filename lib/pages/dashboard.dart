import 'package:flutter/material.dart';
import 'package:hydroferma2/pages/Useraccount.dart';
import 'package:hydroferma2/pages/bluetooth1.dart';
import 'package:hydroferma2/pages/crops.dart';
import 'package:hydroferma2/pages/devinfo.dart';
import 'package:hydroferma2/pages/lifecycle.dart';
import 'package:hydroferma2/pages/notification.dart';
import 'package:hydroferma2/pages/power.dart';
import 'package:hydroferma2/pages/settings.dart';
import 'package:hydroferma2/pages/water&nutrient.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

var h, w, s;

class DashBoard extends StatefulWidget {
  const DashBoard({Key? key}) : super(key: key);

  @override
  State<DashBoard> createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {
  GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    h = MediaQuery.of(context).size.height;
    w = MediaQuery.of(context).size.width;
    s = MediaQuery.of(context).size.aspectRatio;
    return Scaffold(
        key: _scaffoldKey,
        backgroundColor: Colors.white,
        drawer: Container(
          width: w / 1.25,
          child: Drawer(
            backgroundColor: Color(0xff89B6DC),
            child: Center(
                child: Column(
              children: [
                Container(
                  height: h / 4,
                  child: UserAccountsDrawerHeader(
                    decoration: BoxDecoration(
                      color: Color(0xff89B6DC),
                      image: new DecorationImage(
                        fit: BoxFit.cover,
                        colorFilter: new ColorFilter.mode(
                            Colors.black.withOpacity(0.2), BlendMode.dstATop),
                        image: AssetImage('images/cat.jpg'),
                      ),
                    ),
                    accountName: Text('Shadmanee Tasneem'),
                    accountEmail: Text('shadmanee@gmail.com'),
                    currentAccountPicture: Container(
                      child: CircleAvatar(
                        backgroundImage: AssetImage('images/cat.jpg'),
                        radius: w / 20,
                      ),
                    ),
                  ),
                ),
                Container(
                  height: h / 55,
                ),
                Container(
                  height: h / 14,
                  width: w / 1.5,
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
                      Route route =
                          MaterialPageRoute(builder: (context) => Water());
                      Navigator.push(context, route);
                    },
                  ),
                ),
                Divider(),
                Container(
                  height: h / 14,
                  width: w / 1.5,
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
                    onPressed: () {
                      Route route =
                          MaterialPageRoute(builder: (context) => Power());
                      Navigator.push(context, route);
                    },
                  ),
                ),
                Divider(),
                Container(
                  height: h / 14,
                  width: w / 1.5,
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
                    onPressed: () {
                      Route route =
                          MaterialPageRoute(builder: (context) => Crops());
                      Navigator.push(context, route);
                    },
                  ),
                ),
                Divider(),
                Container(
                  height: h / 14,
                  width: w / 1.5,
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
                  height: h / 14,
                  width: w / 1.5,
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
                  height: h / 60,
                ),
                Container(
                  alignment: Alignment(1, -1),
                  padding: EdgeInsets.only(right: ((w / 1.25) - (w / 1.5)) / 2),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            'Home',
                            style: TextStyle(color: Colors.white),
                          ),
                          IconButton(
                            iconSize: w / 14,
                            onPressed: () {
                              if (_scaffoldKey.currentState!.isDrawerOpen) {
                                Navigator.pop(context);
                                Route route = MaterialPageRoute(
                                    builder: (context) => DashBoard());
                                Navigator.push(context, route);
                              }
                            },
                            icon: Icon(Icons.home),
                            color: Colors.white,
                          )
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            'Settings',
                            style: TextStyle(color: Colors.white),
                          ),
                          IconButton(
                            iconSize: w / 14,
                            onPressed: () {
                              if (_scaffoldKey.currentState!.isDrawerOpen) {
                                Navigator.pop(context);
                                Route route = MaterialPageRoute(
                                    builder: (context) => Settings());
                                Navigator.push(context, route);
                              }
                            },
                            icon: Icon(Icons.settings),
                            color: Colors.white,
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            'About',
                            style: TextStyle(color: Colors.white),
                          ),
                          IconButton(
                            iconSize: w / 14,
                            onPressed: () {
                              if (_scaffoldKey.currentState!.isDrawerOpen) {
                                Navigator.pop(context);
                                Route route = MaterialPageRoute(
                                    builder: (context) => Info());
                                Navigator.push(context, route);
                              }
                            },
                            icon: Icon(Icons.info_outline),
                            color: Colors.white,
                          )
                        ],
                      )
                    ],
                  ),
                )
              ],
            )),
          ),
        ),
        body: SlidingUpPanel(
          color: Colors.transparent,
          minHeight: h / 25,
          panel: Container(
            decoration: BoxDecoration(
                color: Colors.blueGrey[50],
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20))),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [BarIndicator(), Container()],
            ),
          ),
          body: Container(
            padding: EdgeInsets.only(top: 20),
            child: Stack(
              children: [
                Column(
                  children: [
                    SizedBox(height: h / 33),
                    Row(
                      children: <Widget>[
                        Container(
                          child: IconButton(
                            iconSize: w / 8,
                            icon: Image.asset('images/logo-white.png'),
                            onPressed: () {
                              _scaffoldKey.currentState!.openDrawer();
                            },
                          ),
                        ),
                        Expanded(child: Container()),
                        Container(
                          child: IconButton(
                            icon: Image.asset('images/noti.png'),
                            iconSize: w / 8,
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
                            iconSize: w / 8,
                            onPressed: () {
                              Route route = MaterialPageRoute(
                                  builder: (context) => UserAccount());
                              Navigator.push(context, route);
                            },
                          ),
                        )
                      ],
                    ),
                    Center(
                        child: Container(
                            child: Container(
                      margin: EdgeInsets.only(top: w * 0.1),
                      child: Column(
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              Expanded(child: Container()),
                              Column(
                                children: <Widget>[
                                  Container(
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(30),
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
                                    margin: EdgeInsets.only(
                                        right: w * 0.01, bottom: w * 0.02),
                                    height: h / 3.2,
                                    width: w * 0.42,
                                  ),
                                  // 0xff8BD9C7
                                  Container(
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(30),
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
                                        ]),
                                    margin: EdgeInsets.only(
                                        right: w * 0.01, bottom: w * 0.02),
                                    height: h / 2.3,
                                    width: w * 0.42,
                                  )
                                ],
                              ),
                              Column(
                                children: <Widget>[
                                  Container(
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(30),
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
                                        ]),
                                    margin: EdgeInsets.only(
                                        left: w * 0.01, bottom: w * 0.02),
                                    height: (h / 2.3) - 4,
                                    width: w * 0.42,
                                  ),
                                  // 0xff8BD9C7
                                  Container(
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(30),
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
                                    margin: EdgeInsets.only(
                                        left: w * 0.01, bottom: w * 0.02),
                                    height: (h / 3.2) + 4,
                                    width: w * 0.42,
                                  )
                                ],
                              ),
                              Container(),
                              Expanded(child: Container()),
                            ],
                          )
                        ],
                      ),
                    )))
                  ],
                )
              ],
            ),
          ),
        ));
  }
}

class BarIndicator extends StatefulWidget {
  const BarIndicator({Key? key}) : super(key: key);

  @override
  State<BarIndicator> createState() => _BarIndicatorState();
}

class _BarIndicatorState extends State<BarIndicator> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(20),
      child: Column(
        children: [
          Container(
            width: w / 6,
            height: 3,
            decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.all(Radius.circular(15))),
          )
        ],
      ),
    );
  }
}
