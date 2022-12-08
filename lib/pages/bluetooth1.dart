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

class Bluetooth extends StatefulWidget {
  const Bluetooth({Key? key}) : super(key: key);

  @override
  State<Bluetooth> createState() => _bluetooth();
}

class _bluetooth extends State<Bluetooth> {
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
                    Route route =
                        MaterialPageRoute(builder: (context) => Water());
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
                      // Route route =
                      //     MaterialPageRoute(builder: (context) => *ENTER CLASS_NAME HERE*);
                      // Navigator.push(context, route);
                    },
                  ),
                ),
                Container(
                  child: IconButton(
                    icon: Image.asset('images/user.png'),
                    onPressed: () {
                      Navigator.of(context).push(_createuser());
                    },
                  ),
                )
              ],
            ),
            Container(
              padding: EdgeInsets.only(top: 100),
              child: Column(
                children: <Widget>[
                  Container(
                    child: Center(
                      child: IconButton(
                        iconSize: 300,
                        icon: Image.asset('images/bluetooth1.png'),
                        onPressed: () {
                          Navigator.of(context).push(_createRoute());
                        },
                      ),
                    ),
                  ),
                  Container(
                    child: Center(
                      child: Text(
                        "Tap to connect the system",
                        style: TextStyle(fontSize: 40),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Route _createRoute() {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) =>
        const bluetoothconnect(),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      return child;
    },
  );
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
                      Route route =
                          MaterialPageRoute(builder: (context) => Water());
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
                      onPressed: () {
                        Navigator.of(context).push(_createuser());
                      },
                    ),
                  )
                ],
              ),
              Container(
                padding: EdgeInsets.only(top: 100),
                child: Column(
                  children: <Widget>[
                    Container(
                      child: Center(
                        child: IconButton(
                          iconSize: 300,
                          icon: Image.asset('images/bluetooth2.png'),
                          onPressed: () {
                            Navigator.of(context).push(_createback());
                          },
                        ),
                      ),
                    ),
                    Container(
                      child: Center(
                        child: Text(
                          "Connected!",
                          style: TextStyle(fontSize: 40),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ])));
  }
}

Route _createback() {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => const Bluetooth(),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      return child;
    },
  );
}

Route _createuser() {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) =>
        const UserAccount(),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      return child;
    },
  );
}
