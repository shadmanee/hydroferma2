import 'package:flutter/material.dart';
import 'package:hydroferma2/pages/Useraccount.dart';
import 'package:hydroferma2/pages/water&nutrient.dart';
import 'package:flutter/material.dart';
import 'package:hydroferma2/pages/bluetooth1.dart';
import 'package:hydroferma2/pages/powersystem.dart';
import 'package:hydroferma2/pages/lifecycle.dart';
import 'package:hydroferma2/pages/notification.dart';
import 'package:hydroferma2/pages/waterdata.dart';
import 'package:hydroferma2/pages/waterdevices.dart';
import 'lifecycle.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';
import 'package:hydroferma2/pages/sidebar.dart';
import 'checkprogresscircular.dart';

var h, w, s;

class Powersys extends StatefulWidget {
  const Powersys({Key? key}) : super(key: key);

  @override
  State<Powersys> createState() => _Powersys();
}

class _Powersys extends State<Powersys> {
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
                      padding: EdgeInsets.only(top: h * 0.04),
                      color: Color(0xffffffff),
                      child: Column(
                        children: [
                          Container(
                            child: Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  // color: Color(0xff95D8EB),
                                  color: Color(0xff8FDBBB),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Color(0x26000000),
                                      offset: const Offset(
                                        5.0,
                                        5.0,
                                      ),
                                      blurRadius: 10.0,
                                      spreadRadius: 3.0,
                                    ), //BoxShadow
                                  ]),
                              margin: EdgeInsets.only(
                                  left: w * 0.01, bottom: w * 0.02),
                              height: (h / 3.2) + 6,
                              width: w * 1.2,
                              child: Column(
                                children: [
                                  Expanded(child: Container()),
                                  Center(
                                    child: Column(
                                      children: [
                                        Container(
                                          color: Colors.transparent,
                                          height: ((h / 2.8) + 4) / 1.5,
                                          width: ((h / 2.8) + 4) / 1.5,
                                          child: ProgressCircular2(),
                                        ),
                                        Text('Power Usage'),
                                      ],
                                    ),
                                  ),
                                  Expanded(child: Container())
                                ],
                              ),
                            ),
                          ),
                          Container(
                              //ekhane add kor sakiiiiiii
                              // child: Center(
                              //   child: Text(
                              //     "Tap to connect your system",
                              //     style: TextStyle(fontSize: 35),
                              //     textAlign: TextAlign.center,
                              //   ),
                              // ),
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
