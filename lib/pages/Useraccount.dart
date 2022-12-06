// import 'dart:html';
// import 'dart:js';
import 'package:flutter/material.dart';
import 'package:hydroferma2/pages/changephoto.dart';
import 'package:hydroferma2/pages/lifecycle.dart';
import 'package:hydroferma2/pages/login.dart';
import 'package:hydroferma2/pages/dashboard.dart';
import 'package:hydroferma2/pages/editprofile.dart';
import 'package:hydroferma2/pages/notification.dart';
import 'package:hydroferma2/pages/water&nutrient.dart';

import 'bluetooth1.dart';

class UserAccount extends StatefulWidget {
  const UserAccount({Key? key}) : super(key: key);

  @override
  State<UserAccount> createState() => _UserAccount();
}

class _UserAccount extends State<UserAccount> {
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
                    icon: Image.asset('images/user-blue.png'),
                    onPressed: () {},
                  ),
                )
              ],
            ),
            Container(
              margin: EdgeInsets.fromLTRB(15, 60, 15, 15),
              child: ListView(
                children: <Widget>[
                  //function

                  Container(
                    padding: EdgeInsets.only(left: 1, right: 1),
                    child: Card(
                      color: Color(0xffC9F3E9),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(5.0))),
                      clipBehavior: Clip.antiAlias,
                      child: Column(
                        children: [
                          Container(
                            height: 500,
                            width: 300,
                            margin: EdgeInsets.only(top: 2),
                            color: Color(0xffC9F3E9),
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                      top: 10, left: 10, right: 10, bottom: 30),
                                  child: IconButton(
                                    iconSize: 150,
                                    icon: Image.asset('images/addphoto.png'),
                                    onPressed: () {
                                      Navigator.of(context)
                                          .push(_createchange());
                                    },
                                  ),
                                ),

                                ///username and all
                                Padding(
                                    padding: const EdgeInsets.only(
                                        top: 5, left: 7, right: 7, bottom: 1),
                                    child: Container(
                                      width: 120,
                                      height: 60,
                                      color: Color(0xff9AE7C9),
                                      child: FlatButton(
                                        child: Row(
                                          children: [
                                            IconButton(
                                              iconSize: 20,
                                              icon: Image.asset(
                                                  'images/user2.png'),
                                              onPressed: () {
                                                //Navigator.of(context).push(_createnext());
                                              },
                                            ),
                                            Text('Sadia Tasneem Sara',
                                                style: TextStyle(
                                                    fontSize: 16,
                                                    fontWeight: FontWeight.bold,
                                                    color: Colors.black)),
                                          ],
                                        ),
                                        onPressed: () {},
                                      ),
                                    )),
                                Padding(
                                    padding: const EdgeInsets.only(
                                        top: 1, left: 7, right: 7, bottom: 1),
                                    child: Container(
                                      width: 120,
                                      height: 60,
                                      color: Color(0xff9AE7C9),
                                      child: FlatButton(
                                        child: Row(
                                          children: [
                                            IconButton(
                                              iconSize: 20,
                                              icon: Image.asset(
                                                  'images/smartphone.png'),
                                              onPressed: () {
                                                //Navigator.of(context).push(_createnext());
                                              },
                                            ),
                                            Text('01537599843',
                                                style: TextStyle(
                                                    fontSize: 16,
                                                    fontWeight: FontWeight.bold,
                                                    color: Colors.black)),
                                          ],
                                        ),
                                        onPressed: () {},
                                      ),
                                    )),
                                Padding(
                                    padding: const EdgeInsets.only(
                                        top: 1, left: 7, right: 7, bottom: 1),
                                    child: Container(
                                      width: 120,
                                      height: 60,
                                      color: Color(0xff9AE7C9),
                                      child: FlatButton(
                                        child: Row(
                                          children: [
                                            IconButton(
                                              iconSize: 20,
                                              icon: Image.asset(
                                                  'images/padlock.png'),
                                              onPressed: () {
                                                //Navigator.of(context).push(_createnext());
                                              },
                                            ),
                                            Text('**************',
                                                style: TextStyle(
                                                    fontSize: 16,
                                                    fontWeight: FontWeight.bold,
                                                    color: Colors.black)),
                                          ],
                                        ),
                                        onPressed: () {},
                                      ),
                                    )),
                                Padding(
                                    padding: const EdgeInsets.only(
                                        top: 1, left: 7, right: 7, bottom: 5),
                                    child: Container(
                                      width: 120,
                                      height: 60,
                                      color: Color(0xff9AE7C9),
                                      child: FlatButton(
                                        child: Row(
                                          children: [
                                            IconButton(
                                              iconSize: 20,
                                              icon: Image.asset(
                                                  'images/placeholder.png'),
                                              onPressed: () {
                                                //Navigator.of(context).push(_createnext());
                                              },
                                            ),
                                            Text('Mirpur Cantonment, Dhaka',
                                                style: TextStyle(
                                                    fontSize: 16,
                                                    fontWeight: FontWeight.bold,
                                                    color: Colors.black)),
                                          ],
                                        ),
                                        onPressed: () {},
                                      ),
                                    )),
                                Padding(
                                    padding: const EdgeInsets.only(
                                        top: 10, left: 7, right: 7, bottom: 10),
                                    child: Container(
                                      height: 40,
                                      width: 150,
                                      margin: EdgeInsets.only(top: 10),
                                      child: RaisedButton(
                                        child: Text('Edit Profile',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 20,
                                                fontWeight: FontWeight.bold)),
                                        color: Color(0xff79C3FF),
                                        elevation: 15,
                                        shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(10.0))),
                                        onPressed: () {
                                          Route route = MaterialPageRoute(
                                              builder: (context) =>
                                                  EditProfile());
                                          Navigator.push(context, route);
                                        },
                                      ),
                                    )),
                                Padding(
                                    padding: const EdgeInsets.only(
                                        top: 10, left: 7, right: 7, bottom: 2),
                                    child: Container(
                                      child: Container(
                                        margin: EdgeInsets.only(
                                            left: 50, right: 50),
                                        padding: EdgeInsets.only(
                                            left: 50, right: 50),
                                        child: Row(
                                          children: [
                                            IconButton(
                                              iconSize: 70,
                                              icon: Image.asset(
                                                  'images/logout.png'),
                                              onPressed: () {
                                                Navigator.of(context)
                                                    .push(_createlogout());
                                              },
                                            ),
                                            Expanded(
                                              child: Container(),
                                            ),
                                            IconButton(
                                              iconSize: 70,
                                              icon: Image.asset(
                                                  'images/poweroff.png'),
                                              onPressed: () {
                                                Navigator.of(context)
                                                    .push(_createlogout());
                                              },
                                            ),
                                          ],
                                        ),
                                      ),
                                    )),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              decoration: BoxDecoration(
                  color: Color(0xffffffff),
                  borderRadius: BorderRadius.all(Radius.circular(8.0))),
            )
          ],
        ),
      ),
    );
  }
}

Route _createchange() {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) =>
        const changephoto(),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      return child;
    },
  );
}

Route _createlogout() {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => const LogIn(),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      return child;
    },
  );
}
