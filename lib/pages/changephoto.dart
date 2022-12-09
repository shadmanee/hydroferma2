// import 'dart:html';
// import 'dart:js';
import 'package:flutter/material.dart';
import 'package:hydroferma2/pages/Useraccount.dart';
import 'package:hydroferma2/pages/bluetooth1.dart';
import 'package:hydroferma2/pages/lifecycle.dart';
import 'package:hydroferma2/pages/login.dart';
import 'package:hydroferma2/pages/dashboard.dart';
import 'package:hydroferma2/pages/water&nutrient.dart';
import 'package:hydroferma2/pages/notification.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';
import 'package:hydroferma2/pages/sidebar.dart';
import 'package:hydroferma2/pages/editprofile.dart';

var h, w, s;

class changephoto extends StatefulWidget {
  const changephoto({Key? key}) : super(key: key);

  @override
  State<changephoto> createState() => _changephoto();
}

class _changephoto extends State<changephoto> {
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
                    padding: EdgeInsets.only(top: 20),
                    //color: Color(0xffC9F3E9),
                    width: w - (3 * w / 40),
                    height: h - (h / 4),

                    child: Container(
                      height: MediaQuery.of(context).size.aspectRatio * 300,
                      width: MediaQuery.of(context).size.aspectRatio * 750,
                      color: Color(0xffC9F3E9),
                      child: Column(
                        children: [
                          Container(
                            padding: EdgeInsets.only(
                                bottom: h * 0.01,
                                top: h * 0.02,
                                left: w * 0.02,
                                right: w * 0.02),
                            child: IconButton(
                              iconSize: w / 3,
                              icon: Image.asset('images/addphoto2.png'),
                              onPressed: () {
                                Route route = MaterialPageRoute(
                                    builder: (context) => changephoto());
                                Navigator.push(context, route);
                              },
                            ),
                          ),
                          Container(
                              padding: EdgeInsets.only(
                                  bottom: h * 0.002,
                                  top: h * 0.001,
                                  left: w * 0.02,
                                  right: w * 0.02),
                              child: Container(
                                height:
                                    MediaQuery.of(context).size.aspectRatio *
                                        100,
                                width: MediaQuery.of(context).size.aspectRatio *
                                    750,
                                color: Color(0xff9AE7C9),
                                child: FlatButton(
                                  child: Row(
                                    children: [
                                      IconButton(
                                        iconSize: w / 8,
                                        icon: Image.asset('images/eye.png'),
                                        onPressed: () {
                                          //Navigator.of(context).push(_createnext());
                                        },
                                      ),
                                      Text('Open',
                                          style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.black)),
                                    ],
                                  ),
                                  onPressed: () {},
                                ),
                              )),
                          Container(
                              padding: EdgeInsets.only(
                                  bottom: h * 0.002,
                                  top: h * 0.001,
                                  left: w * 0.02,
                                  right: w * 0.02),
                              child: Container(
                                height:
                                    MediaQuery.of(context).size.aspectRatio *
                                        100,
                                width: MediaQuery.of(context).size.aspectRatio *
                                    750,
                                color: Color(0xff9AE7C9),
                                child: FlatButton(
                                  child: Row(
                                    children: [
                                      IconButton(
                                        iconSize: w / 8,
                                        icon: Image.asset('images/camera.png'),
                                        onPressed: () {},
                                      ),
                                      Text('Camera',
                                          style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.black)),
                                    ],
                                  ),
                                  onPressed: () {},
                                ),
                              )),
                          Container(
                              padding: EdgeInsets.only(
                                  bottom: h * 0.001,
                                  top: h * 0.002,
                                  left: w * 0.02,
                                  right: w * 0.02),
                              child: Container(
                                height:
                                    MediaQuery.of(context).size.aspectRatio *
                                        100,
                                width: MediaQuery.of(context).size.aspectRatio *
                                    750,
                                color: Color(0xff9AE7C9),
                                child: FlatButton(
                                  child: Row(
                                    children: [
                                      IconButton(
                                        iconSize: w / 8,
                                        icon: Image.asset('images/gallery.png'),
                                        onPressed: () {},
                                      ),
                                      Text('Gallery',
                                          style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.black)),
                                    ],
                                  ),
                                  onPressed: () {},
                                ),
                              )),
                          Container(
                              padding: EdgeInsets.only(
                                  bottom: h * 0.01,
                                  top: h * 0.002,
                                  left: w * 0.02,
                                  right: w * 0.02),
                              child: Container(
                                height:
                                    MediaQuery.of(context).size.aspectRatio *
                                        120,
                                width: MediaQuery.of(context).size.aspectRatio *
                                    750,
                                color: Color(0xff9AE7C9),
                                child: FlatButton(
                                  child: Row(
                                    children: [
                                      IconButton(
                                        iconSize: w / 8,
                                        icon: Image.asset('images/trash.png'),
                                        onPressed: () {},
                                      ),
                                      Text('Delete',
                                          style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.red)),
                                    ],
                                  ),
                                  onPressed: () {},
                                ),
                              )),
                          //BUTTON

                          Container(
                              padding: EdgeInsets.only(
                                  top: h * 0.01,
                                  left: w * 0.1,
                                  right: w * 0.01,
                                  bottom: h * 0.01),
                              child: Container(
                                height:
                                    MediaQuery.of(context).size.aspectRatio *
                                        100,
                                width: MediaQuery.of(context).size.aspectRatio *
                                    250,
                                margin: EdgeInsets.only(top: h * .01),
                                child: Container(
                                  child: Row(
                                    children: [
                                      IconButton(
                                        iconSize: w / 6,
                                        icon: Image.asset('images/no.png'),
                                        onPressed: () {
                                          Route route = MaterialPageRoute(
                                              builder: (context) =>
                                                  UserAccount());
                                          Navigator.push(context, route);
                                        },
                                      ),
                                    ],
                                  ),
                                ),
                              )),
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
