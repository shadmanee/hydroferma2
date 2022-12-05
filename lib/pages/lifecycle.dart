import 'package:flutter/material.dart';
import 'package:hydroferma2/pages/dashboard.dart';

class lifecycle1 extends StatefulWidget {
  const lifecycle1({Key? key}) : super(key: key);

  @override
  State<lifecycle1> createState() => _lifecycle1();
}

class _lifecycle1 extends State<lifecycle1> {
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
                    child: Text('Connect System',
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
                  padding: EdgeInsets.only(top: 100),
                  child: Column(children: <Widget>[
                    Container(
                      child: Center(
                        child: IconButton(
                          iconSize: 250,
                          icon: Image.asset('images/lifecycle1.png'),
                          onPressed: () {
                            Navigator.of(context).push(_createRoute());
                          },
                        ),
                      ),
                    ),
                    Container(
                      child: Center(
                        child: Text(
                          "Upload photo",
                          style: TextStyle(fontSize: 40),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    )
                  ])),
            ])));
  }
}

Route _createRoute() {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => const lifecycle2(),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      return child;
    },
  );
}

class lifecycle2 extends StatefulWidget {
  const lifecycle2({Key? key}) : super(key: key);

  @override
  State<lifecycle2> createState() => _lifecycle2State();
}

class _lifecycle2State extends State<lifecycle2> {
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
                    child: Text('Connect System',
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
                  padding: EdgeInsets.only(top: 100),
                  child: Column(children: <Widget>[
                    Container(
                      child: Center(
                        child: IconButton(
                          iconSize: 300,
                          icon: Image.asset('images/loading.png'),
                          onPressed: () {
                            Navigator.of(context).push(_createforth());
                          },
                        ),
                      ),
                    ),
                    Container(
                      child: Center(
                        child: Text(
                          "Processing...",
                          style: TextStyle(fontSize: 30),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    )
                  ])),
            ])));
  }
}

Route _createforth() {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => const lifecycle3(),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      return child;
    },
  );
}

class lifecycle3 extends StatefulWidget {
  const lifecycle3({Key? key}) : super(key: key);

  @override
  State<lifecycle3> createState() => _lifecycle3State();
}

class _lifecycle3State extends State<lifecycle3> {
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
                    child: Text('Connect System',
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
                  padding: EdgeInsets.only(top: 100),
                  child: Column(children: <Widget>[
                    Container(
                      child: Center(
                        child: IconButton(
                          iconSize: 250,
                          icon: Image.asset('images/done.png'),
                          onPressed: () {
                            Navigator.of(context).push(_createback());
                          },
                        ),
                      ),
                    ),
                    Container(
                      child: Center(
                        child: Text(
                          "Processing done!",
                          style: TextStyle(fontSize: 35),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    )
                  ])),
            ])));
  }
}

Route _createback() {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => const lifecycle1(),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      return child;
    },
  );
}
