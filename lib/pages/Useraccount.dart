import 'package:flutter/material.dart';
import 'package:hydroferma2/pages/changephoto.dart';
import 'package:hydroferma2/pages/emptypagetotest.dart';
import 'package:hydroferma2/pages/lifecycle.dart';
import 'package:hydroferma2/pages/login.dart';
import 'package:hydroferma2/pages/dashboard.dart';
import 'package:hydroferma2/pages/editprofile.dart';
import 'package:hydroferma2/pages/loginsignup.dart';
import 'package:hydroferma2/pages/notification.dart';
import 'package:hydroferma2/pages/water&nutrient.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';
import 'package:hydroferma2/pages/sidebar.dart';
import 'bluetooth1.dart';

var h, w, s;

class UserAccount extends StatefulWidget {
  const UserAccount({Key? key}) : super(key: key);

  @override
  State<UserAccount> createState() => _UserAccount();
}

class _UserAccount extends State<UserAccount> {
  GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  final pc = PanelController();
  bool passenable = true;
  TextEditingController myinput = TextEditingController();
  @override
  void initState() {
    myinput.text = "need_some_sleep";
    super.initState();
  }

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
                        icon: Image.asset('images/user-blue.png'),
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
                              icon: Image.asset('images/addphoto.png'),
                              onPressed: () {
                                Route route = MaterialPageRoute(
                                    builder: (context) => changephoto());
                                Navigator.push(context, route);
                              },
                            ),
                          ),
                          Container(
                              padding: EdgeInsets.only(
                                  bottom: h * 0.001,
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
                                        icon: Image.asset('images/user2.png'),
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
                          Container(
                              padding: EdgeInsets.only(
                                  bottom: h * 0.001,
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
                                        icon: Image.asset(
                                            'images/smartphone.png'),
                                        onPressed: () {},
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
                          Container(
                              padding: EdgeInsets.only(
                                  bottom: h * 0.001,
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
                                        icon: Image.asset('images/padlock.png'),
                                        onPressed: () {},
                                      ),
                                      // Text('***',
                                      //     style: TextStyle(
                                      //         fontSize: 16,
                                      //         fontWeight: FontWeight.bold,
                                      //         color: Colors.black)),
                                      Expanded(
                                          child: TextField(
                                        obscureText: passenable,
                                        decoration: InputDecoration(
                                            border: InputBorder.none,
                                            suffix: IconButton(
                                                onPressed: () {
                                                  setState(() {
                                                    //refresh UI
                                                    if (passenable) {
                                                      //if passenable == true, make it false
                                                      passenable = false;
                                                    } else {
                                                      passenable =
                                                          true; //if passenable == false, make it true
                                                    }
                                                  });
                                                },
                                                icon: Icon(
                                                  passenable == true
                                                      ? Icons.visibility_off
                                                      : Icons.remove_red_eye,
                                                ))),
                                        controller: myinput,
                                        style: TextStyle(
                                            fontSize: 16.0,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.black),
                                        readOnly: true,
                                      )),
                                    ],
                                  ),
                                  onPressed: () {},
                                ),
                              )),
                          Container(
                              padding: EdgeInsets.only(
                                  bottom: h * 0.02,
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
                                        icon: Image.asset(
                                            'images/placeholder.png'),
                                        onPressed: () {},
                                      ),
                                      Text('Mirpur DOHS, Dhaka.',
                                          style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.black)),
                                    ],
                                  ),
                                  onPressed: () {},
                                ),
                              )),
                          //BUTTON
                          Container(
                              padding: EdgeInsets.only(
                                  top: h * 0.001,
                                  left: w * 0.1,
                                  right: w * 0.1,
                                  bottom: h * 0.02),
                              child: Container(
                                height:
                                    MediaQuery.of(context).size.aspectRatio *
                                        80,
                                width: MediaQuery.of(context).size.aspectRatio *
                                    250,
                                margin: EdgeInsets.only(top: 5),
                                child: RaisedButton(
                                  child: Text('Edit Profile',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold)),
                                  color: Color(0xff79C3FF),
                                  elevation: 15,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(20.0))),
                                  onPressed: () {
                                    Route route = MaterialPageRoute(
                                        builder: (context) => EditProfile());
                                    Navigator.push(context, route);
                                  },
                                ),
                              )),
                          Container(
                              padding: EdgeInsets.only(
                                  top: h * 0.001,
                                  left: w * 0.001,
                                  right: w * 0.001,
                                  bottom: h * 0.001),
                              child: Container(
                                height:
                                    MediaQuery.of(context).size.aspectRatio *
                                        100,
                                width: MediaQuery.of(context).size.aspectRatio *
                                    250,
                                //margin: EdgeInsets.only(top: h * .001),
                                child: Container(
                                  child: Row(
                                    children: [
                                      IconButton(
                                        iconSize: w / 9,
                                        icon: Image.asset('images/logout.png'),
                                        onPressed: () {
                                          Route route = MaterialPageRoute(
                                              builder: (context) =>
                                                  LoginSignup());
                                          Navigator.push(context, route);
                                        },
                                      ),
                                      IconButton(
                                        iconSize: w / 9,
                                        icon:
                                            Image.asset('images/poweroff.png'),
                                        onPressed: () {
                                          Route route = MaterialPageRoute(
                                              builder: (context) => LogIn());
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
