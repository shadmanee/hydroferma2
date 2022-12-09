import 'package:flutter/material.dart';
import 'package:hydroferma2/pages/Useraccount.dart';
import 'package:hydroferma2/pages/bluetooth1.dart';
import 'package:hydroferma2/pages/crops.dart';
import 'package:hydroferma2/pages/devinfo.dart';
import 'package:hydroferma2/pages/lifecycle.dart';
import 'package:hydroferma2/pages/notification.dart';
import 'package:hydroferma2/pages/power.dart';
import 'package:hydroferma2/pages/settings.dart';
import 'package:hydroferma2/pages/sidebar.dart';
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
  final pc = PanelController();
  @override
  Widget build(BuildContext context) {
    h = MediaQuery.of(context).size.height;
    w = MediaQuery.of(context).size.width;
    s = MediaQuery.of(context).size.aspectRatio;
    return Scaffold(
        key: _scaffoldKey,
        backgroundColor: Colors.white,
        drawer: SideBarOnly(),
        body: SlidingUpPanel(
          controller: pc,
          backdropTapClosesPanel: true,
          backdropEnabled: true,
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
                                  GestureDetector(
                                    onTap: () {
                                      pc.open();
                                    },
                                    child: Container(
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(30),
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
                                  ),
                                  // 0xff8BD9C7
                                  GestureDetector(
                                    onTap: () {
                                      pc.open();
                                    },
                                    child: Container(
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(30),
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
                                    ),
                                  )
                                ],
                              ),
                              Column(
                                children: <Widget>[
                                  GestureDetector(
                                    onTap: () {
                                      pc.open();
                                    },
                                    child: Container(
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(30),
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
                                  ),
                                  // 0xff8BD9C7
                                  GestureDetector(
                                    onTap: () {
                                      pc.open();
                                    },
                                    child: Container(
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(30),
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
                                    ),
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
