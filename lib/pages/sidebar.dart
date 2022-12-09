import 'package:flutter/material.dart';
import 'package:hydroferma2/pages/power.dart';
import 'package:hydroferma2/pages/settings.dart';
import 'package:hydroferma2/pages/water&nutrient.dart';

import 'bluetooth1.dart';
import 'crops.dart';
import 'dashboard.dart';
import 'devinfo.dart';
import 'lifecycle.dart';

var h, w, s;

class SideBarOnly extends StatefulWidget {
  const SideBarOnly({Key? key}) : super(key: key);

  @override
  State<SideBarOnly> createState() => _SideBarOnlyState();
}

class _SideBarOnlyState extends State<SideBarOnly> {
  GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    h = MediaQuery.of(context).size.height;
    w = MediaQuery.of(context).size.width;
    s = MediaQuery.of(context).size.aspectRatio;
    return Container(
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
                          Navigator.pop(context);
                          Route route = MaterialPageRoute(
                              builder: (context) => DashBoard());
                          Navigator.push(context, route);
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
                            Route route =
                                MaterialPageRoute(builder: (context) => Info());
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
    );
  }
}
