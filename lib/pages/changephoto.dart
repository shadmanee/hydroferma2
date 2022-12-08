// import 'dart:html';
// import 'dart:js';
import 'package:flutter/material.dart';
import 'package:hydroferma2/pages/Useraccount.dart';
import 'package:hydroferma2/pages/bluetooth1.dart';
import 'package:hydroferma2/pages/lifecycle.dart';
import 'package:hydroferma2/pages/login.dart';
import 'package:hydroferma2/pages/dashboard.dart';
import 'package:hydroferma2/pages/water&nutrient.dart';

class changephoto extends StatefulWidget {
  const changephoto({Key? key}) : super(key: key);

  @override
  State<changephoto> createState() => _changephoto();
}

class _changephoto extends State<changephoto> {
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
                    icon: Image.asset('images/user-blue.png'),
                    onPressed: () {},
                  ),
                )
              ],
            ),
            Container(
              margin: EdgeInsets.fromLTRB(15, 60, 15, 15),
              child: Column(
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
                            height: 600,
                            width: 500,
                            margin: EdgeInsets.only(top: 2),
                            color: Color(0xffC9F3E9),
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                      top: 10, left: 10, right: 10, bottom: 30),
                                  child: IconButton(
                                    iconSize: 150,
                                    icon: Image.asset('images/addphoto2.png'),
                                    onPressed: () {
                                      //Navigator.of(context).push(_createnext());
                                    },
                                  ),
                                ),

                                ///username and all
                                Padding(
                                    padding: const EdgeInsets.only(
                                        top: 5, left: 7, right: 7, bottom: 1),
                                    child: Container(
                                      width: 1200,
                                      height: 80,
                                      color: Color(0xff9AE7C9),
                                      child: FlatButton(
                                        child: Row(
                                          children: [
                                            IconButton(
                                              iconSize: 20,
                                              icon:
                                                  Image.asset('images/eye.png'),
                                              onPressed: () {
                                                //Navigator.of(context).push(_createnext());
                                              },
                                            ),
                                            Text('Open',
                                                style: TextStyle(
                                                    fontSize: 20,
                                                    fontWeight: FontWeight.bold,
                                                    color: Colors.black)),
                                          ],
                                        ),
                                        onPressed: () {},
                                      ),
                                    )),
                                Padding(
                                    padding: const EdgeInsets.only(
                                        top: 0, left: 7, right: 7, bottom: 1),
                                    child: Container(
                                      width: 1200,
                                      height: 80,
                                      color: Color(0xff9AE7C9),
                                      child: FlatButton(
                                        child: Row(
                                          children: [
                                            IconButton(
                                              iconSize: 20,
                                              icon: Image.asset(
                                                  'images/camera.png'),
                                              onPressed: () {
                                                //Navigator.of(context).push(_createnext());
                                              },
                                            ),
                                            Text('Camera',
                                                style: TextStyle(
                                                    fontSize: 20,
                                                    fontWeight: FontWeight.bold,
                                                    color: Colors.black)),
                                          ],
                                        ),
                                        onPressed: () {},
                                      ),
                                    )),
                                Padding(
                                    padding: const EdgeInsets.only(
                                        top: 0, left: 7, right: 7, bottom: 1),
                                    child: Container(
                                      width: 1200,
                                      height: 80,
                                      color: Color(0xff9AE7C9),
                                      child: FlatButton(
                                        child: Row(
                                          children: [
                                            IconButton(
                                              iconSize: 20,
                                              icon: Image.asset(
                                                  'images/gallery.png'),
                                              onPressed: () {
                                                //Navigator.of(context).push(_createnext());
                                              },
                                            ),
                                            Text('Gallery',
                                                style: TextStyle(
                                                    fontSize: 20,
                                                    fontWeight: FontWeight.bold,
                                                    color: Colors.black)),
                                          ],
                                        ),
                                        onPressed: () {},
                                      ),
                                    )),
                                Padding(
                                    padding: const EdgeInsets.only(
                                        top: 0, left: 7, right: 7, bottom: 5),
                                    child: Container(
                                      width: 1200,
                                      height: 80,
                                      color: Color(0xff9AE7C9),
                                      child: FlatButton(
                                        child: Row(
                                          children: [
                                            IconButton(
                                              iconSize: 20,
                                              icon: Image.asset(
                                                  'images/trash.png'),
                                              onPressed: () {
                                                //Navigator.of(context).push(_createnext());
                                              },
                                            ),
                                            Text('Delete',
                                                style: TextStyle(
                                                    fontSize: 20,
                                                    fontWeight: FontWeight.bold,
                                                    color: Colors.red)),
                                          ],
                                        ),
                                        onPressed: () {},
                                      ),
                                    )),
                                Padding(
                                    padding: const EdgeInsets.only(
                                        top: 10, left: 7, right: 7, bottom: 2),
                                    child: Container(
                                      child: Container(
                                        margin: EdgeInsets.only(
                                            left: 50, right: 10),
                                        padding: EdgeInsets.only(
                                            left: 50, right: 10),
                                        child: Row(
                                          children: [
                                            Expanded(
                                              child: Container(),
                                            ),
                                            IconButton(
                                              iconSize: 30,
                                              icon:
                                                  Image.asset('images/no.png'),
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

Route _createlogout() {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) =>
        const UserAccount(),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      return child;
    },
  );
}
