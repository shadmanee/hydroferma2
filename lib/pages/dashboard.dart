import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:hydroferma2/pages/Useraccount.dart';
import 'package:hydroferma2/pages/bluetooth1.dart';
import 'package:hydroferma2/pages/crops.dart';
import 'package:hydroferma2/pages/devinfo.dart';
import 'package:hydroferma2/pages/lifecycle.dart';
import 'package:hydroferma2/pages/notification.dart';
import 'package:hydroferma2/pages/power.dart';
import 'package:hydroferma2/pages/powersystem.dart';
import 'package:hydroferma2/pages/settings.dart';
import 'package:hydroferma2/pages/sidebar.dart';
import 'package:hydroferma2/pages/water&nutrient.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';
import 'package:charcode/charcode.dart';

import 'checkprogresscircular.dart';

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
          minHeight: h / 20,
          maxHeight: h / 1.5,
          panel: Container(
            decoration: BoxDecoration(
                color: Colors.blueGrey[50],
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20))),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                BarIndicator(),
                Container(
                  padding: EdgeInsets.only(left: w / 12),
                  child: Row(
                    children: [
                      Container(
                          child: Row(children: <Widget>[
                        Center(
                            child: Text(
                          'Module : ',
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: Colors.black),
                        )),
                        Container(
                          padding: EdgeInsets.only(left: w / 30),
                          child: DropdownButtonExample(),
                        ),
                      ]))
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: h / 40),
                  width: MediaQuery.of(context).size.width / 1.2,
                  color: Colors.transparent,
                  child: Column(
                    children: [
                      Row(children: [
                        Container(
                          padding: EdgeInsets.only(
                              bottom: MediaQuery.of(context).size.height / 33),
                          child: Text(
                            'Water Supply',
                            style: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.w400,
                                color: Colors.grey[600]),
                          ),
                        )
                      ]),
                      Text(
                        'A hydroponic vertical farm requires at most 5-6 L of water every day, depending on the area of the farm, and the temperature, pressure and humidity of the surroundings.',
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w300,
                            color: Colors.grey[600]),
                      ),
                      Padding(
                          padding: EdgeInsets.only(
                              top: MediaQuery.of(context).size.height / 40)),
                      Text(
                        'Hydroponic systems use less water — as much as 10 times less water — than traditional field crop watering methods.',
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w300,
                            color: Colors.grey[600]),
                      ),
                      TextButton(
                          onPressed: () {},
                          child: Text(
                            'Read More',
                            style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w600,
                                color: Colors.black),
                          ))
                    ],
                  ),
                )
              ],
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
                      child: Column(
                        children: <Widget>[
                          Container(
                            padding: EdgeInsets.only(bottom: s * 30),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  padding: EdgeInsets.only(
                                      left: s * 20, right: s * 20),
                                  child: IconButton(
                                      onPressed: () {
                                        Route route = MaterialPageRoute(
                                            builder: (context) => Water());
                                        Navigator.push(context, route);
                                      },
                                      icon:
                                          Image.asset('images/water-tap.png')),
                                ),
                                Container(
                                  padding: EdgeInsets.only(
                                      left: s * 20, right: s * 20),
                                  child: IconButton(
                                      onPressed: () {
                                        Route route = MaterialPageRoute(
                                            builder: (context) => Powersys());
                                        Navigator.push(context, route);
                                      },
                                      icon: Image.asset('images/energy.png')),
                                ),
                                Container(
                                  padding: EdgeInsets.only(
                                      left: s * 20, right: s * 20),
                                  child: IconButton(
                                      onPressed: () {
                                        Route route = MaterialPageRoute(
                                            builder: (context) => Crops());
                                        Navigator.push(context, route);
                                      },
                                      icon: Image.asset(
                                          'images/agriculture.png')),
                                ),
                                Container(
                                  padding: EdgeInsets.only(
                                      left: s * 20, right: s * 20),
                                  child: IconButton(
                                      onPressed: () {
                                        Route route = MaterialPageRoute(
                                            builder: (context) => lifecycle1());
                                        Navigator.push(context, route);
                                      },
                                      icon:
                                          Image.asset('images/lifecycle.png')),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.only(bottom: s * 30),
                            child: Center(
                              child: Text(
                                'Quick Access',
                                style: TextStyle(
                                    fontSize: 12, fontWeight: FontWeight.w100),
                              ),
                            ),
                          ),
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
                                        height: h / 4,
                                        width: w * 0.42,
                                        child: Column(
                                          children: [
                                            Expanded(child: Container()),
                                            Center(
                                              child: Column(
                                                children: [
                                                  Text(
                                                    '4.7',
                                                    style: TextStyle(
                                                        fontSize: 50,
                                                        fontWeight:
                                                            FontWeight.w200,
                                                        color: Colors.black),
                                                  ),
                                                  Text(
                                                    'L/m2/day',
                                                    style: TextStyle(
                                                        fontSize: 16,
                                                        fontWeight:
                                                            FontWeight.w100,
                                                        color: Colors.black),
                                                  ),
                                                  Text(
                                                    'Current Water',
                                                    style: TextStyle(
                                                        fontSize: 12,
                                                        fontWeight:
                                                            FontWeight.w400,
                                                        color: Colors.black),
                                                  ),
                                                  Text(
                                                    'Consumption',
                                                    style: TextStyle(
                                                        fontSize: 12,
                                                        fontWeight:
                                                            FontWeight.w400,
                                                        color: Colors.black),
                                                  )
                                                ],
                                              ),
                                            ),
                                            Expanded(child: Container())
                                          ],
                                        )),
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
                                      height: h / 2.875,
                                      width: w * 0.42,
                                      child: Column(
                                        children: [
                                          Expanded(child: Container()),
                                          Center(
                                            child: Column(
                                              children: [
                                                Text(
                                                  'Current',
                                                  style: TextStyle(
                                                      fontSize: 20,
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      color: Colors.black),
                                                ),
                                                Text(
                                                  'Plants',
                                                  style: TextStyle(
                                                      fontSize: 20,
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      color: Colors.black),
                                                ),
                                                SizedBox(
                                                  height: h / 50,
                                                ),
                                                Text(
                                                  '1. Coriander',
                                                  style: TextStyle(
                                                      fontSize: 16,
                                                      fontWeight:
                                                          FontWeight.w300,
                                                      color: Colors.black),
                                                ),
                                                Text(
                                                  '2. Malabar',
                                                  style: TextStyle(
                                                      fontSize: 16,
                                                      fontWeight:
                                                          FontWeight.w300,
                                                      color: Colors.black),
                                                ),
                                                Text(
                                                  'Spinach',
                                                  style: TextStyle(
                                                      fontSize: 16,
                                                      fontWeight:
                                                          FontWeight.w300,
                                                      color: Colors.black),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Expanded(child: Container())
                                        ],
                                      ),
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
                                      height: (h / 2.875) - 4,
                                      width: w * 0.42,
                                      child: Column(
                                        children: [
                                          Expanded(child: Container()),
                                          Center(
                                            child: Column(
                                              children: [
                                                Text('3h',
                                                    style: TextStyle(
                                                        fontSize: 50,
                                                        fontWeight:
                                                            FontWeight.w200,
                                                        color: Colors.black)),
                                                Text('9m',
                                                    style: TextStyle(
                                                        fontSize: 50,
                                                        fontWeight:
                                                            FontWeight.w200,
                                                        color: Colors.black)),
                                                Text('Since Last'),
                                                Text('Water Change')
                                              ],
                                            ),
                                          ),
                                          Expanded(child: Container())
                                        ],
                                      ),
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
                                      height: (h / 4) + 4,
                                      width: w * 0.42,
                                      child: Column(
                                        children: [
                                          Expanded(child: Container()),
                                          Center(
                                            child: Column(
                                              children: [
                                                Container(
                                                  color: Colors.transparent,
                                                  height: ((h / 3.2) + 4) / 2,
                                                  width: ((h / 3.2) + 4) / 2,
                                                  child: ProgressCircular(),
                                                ),
                                                Text('Power Usage')
                                              ],
                                            ),
                                          ),
                                          Expanded(child: Container())
                                        ],
                                      ),
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

const List<String> list = <String>[
  'Water Supply',
  'Water Change',
  'Crop Recommendation',
  'Power Usage'
];

class DropdownButtonExample extends StatefulWidget {
  const DropdownButtonExample({Key? key}) : super(key: key);

  @override
  State<DropdownButtonExample> createState() => _DropdownButtonExampleState();
}

class _DropdownButtonExampleState extends State<DropdownButtonExample> {
  String dropdownValue = list.first;

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      icon: const Icon(Icons.arrow_drop_down),
      value: dropdownValue,
      elevation: 3,
      items: list.map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(
            value,
            style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
                color: Colors.grey[500]),
          ),
        );
      }).toList(),
      onChanged: (String? value) {
        setState(() {
          dropdownValue = value!;
        });
      },
    );
  }
}
