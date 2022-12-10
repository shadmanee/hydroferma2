import 'package:flutter/material.dart';
import 'package:hydroferma2/pages/Useraccount.dart';
import 'package:hydroferma2/pages/water&nutrient.dart';
import 'package:flutter/material.dart';
import 'package:hydroferma2/pages/bluetooth1.dart';
import 'package:hydroferma2/pages/lifecycle.dart';
import 'package:hydroferma2/pages/notification.dart';
import 'package:hydroferma2/pages/waterdata.dart';
import 'package:hydroferma2/pages/waterdevices.dart';
import 'lifecycle.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';
import 'package:hydroferma2/pages/sidebar.dart';

var h, w, s;

class Bluetooth extends StatefulWidget {
  const Bluetooth({Key? key}) : super(key: key);

  @override
  State<Bluetooth> createState() => _bluetooth();
}

class _bluetooth extends State<Bluetooth> {
  GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    h = MediaQuery.of(context).size.height;
    w = MediaQuery.of(context).size.width;
    s = MediaQuery.of(context).size.aspectRatio;
    return Scaffold(
      key: _scaffoldKey,
      backgroundColor: Colors.white,
      drawer: SideBarOnly(),
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
                        iconSize: w / 10,
                        onPressed: () {
                          Route route = MaterialPageRoute(
                              builder: (context) => UserAccount());
                          Navigator.push(context, route);
                        },
                      ),
                    )
                  ],
                ),
                //main kaj
                Column(children: <Widget>[
                  Container(
                    //color: Color(0xffC9F3E9),
                    width: w - (3 * w / 40),
                    height: h - (h / 4),

                    child: Container(
                      height: MediaQuery.of(context).size.aspectRatio * 350,
                      width: MediaQuery.of(context).size.aspectRatio * 750,
                      color: Color(0xffffffff),
                      child: Column(
                        children: [
                          Container(
                            padding: EdgeInsets.only(
                                bottom: h * 0.01,
                                top: h * 0.02,
                                left: w * 0.02,
                                right: w * 0.02),
                            child: IconButton(
                              iconSize: h / 2,
                              icon: Image.asset('images/bluetooth1.png'),
                              onPressed: () {
                                Route route = MaterialPageRoute(
                                    builder: (context) => bluetoothconnect());
                                Navigator.push(context, route);
                              },
                            ),
                          ),
                          Container(
                            child: Center(
                              child: Text(
                                "Tap to connect your system",
                                style: TextStyle(fontSize: 35),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ])
              ],
            )
          ],
        ),
      ),
    );
  }
}

class bluetoothconnect extends StatefulWidget {
  const bluetoothconnect({Key? key}) : super(key: key);

  @override
  State<bluetoothconnect> createState() => _bluetoothconnectState();
}

class _bluetoothconnectState extends State<bluetoothconnect> {
  GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    h = MediaQuery.of(context).size.height;
    w = MediaQuery.of(context).size.width;
    s = MediaQuery.of(context).size.aspectRatio;
    return Scaffold(
      key: _scaffoldKey,
      backgroundColor: Colors.white,
      drawer: SideBarOnly(),
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
                        iconSize: w / 10,
                        onPressed: () {
                          Route route = MaterialPageRoute(
                              builder: (context) => UserAccount());
                          Navigator.push(context, route);
                        },
                      ),
                    )
                  ],
                ),
                //main kaj
                Column(children: <Widget>[
                  Container(
                    //color: Color(0xffC9F3E9),
                    width: w - (3 * w / 40),
                    height: h - (h / 4),

                    child: Container(
                      height: MediaQuery.of(context).size.aspectRatio * 350,
                      width: MediaQuery.of(context).size.aspectRatio * 750,
                      color: Color(0xffffffff),
                      child: Column(
                        children: [
                          Container(
                            padding: EdgeInsets.only(
                                bottom: h * 0.01,
                                top: h * 0.02,
                                left: w * 0.02,
                                right: w * 0.02),
                            child: IconButton(
                              iconSize: h / 2,
                              icon: Image.asset('images/bluetooth2.png'),
                              onPressed: () {
                                Route route = MaterialPageRoute(
                                    builder: (context) => Bluetooth());
                                Navigator.push(context, route);
                              },
                            ),
                          ),
                          Container(
                            child: Center(
                              child: Text(
                                "Connected!",
                                style: TextStyle(fontSize: 35),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ])
              ],
            )
          ],
        ),
      ),
    );
  }
}
