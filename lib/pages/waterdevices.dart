import 'package:flutter/material.dart';
import 'package:hydroferma2/pages/bluetooth1.dart';
import 'package:hydroferma2/pages/lifecycle.dart';
import 'package:hydroferma2/pages/phdata.dart';
import 'package:hydroferma2/pages/sidebar.dart';
import 'package:hydroferma2/pages/water&nutrient.dart';
import 'package:hydroferma2/pages/waterdata.dart';

import 'Useraccount.dart';
import 'notification.dart';

var h, s, w;

class WaterDevices extends StatefulWidget {
  const WaterDevices({Key? key}) : super(key: key);

  @override
  State<WaterDevices> createState() => _WaterDevicesState();
}

class _WaterDevicesState extends State<WaterDevices> {
  GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    h = MediaQuery.of(context).size.height;
    w = MediaQuery.of(context).size.width;
    s = MediaQuery.of(context).size.aspectRatio;
    return Scaffold(
        key: _scaffoldKey,
        drawer: SideBarOnly(),
        body: Container(
            padding: EdgeInsets.only(top: 20),
            child: Stack(children: [
              Column(children: [
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
                //MAIN BODY
                Padding(
                  padding: EdgeInsets.only(top: h / 50, left: w / 30),
                  child: Container(
                      child: Row(children: <Widget>[
                    IconButton(
                        icon: Icon(Icons.arrow_back_ios),
                        onPressed: () {
                          Route route =
                              MaterialPageRoute(builder: (context) => Water());
                          Navigator.push(context, route);
                        }),
                    Container(
                      child: Text(
                        'Connected Devices',
                        style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.w800,
                            color: Colors.grey[600]),
                        softWrap: false,
                        maxLines: 1,
                        overflow: TextOverflow.fade, // new
                      ),
                    )
                  ])),
                ),
                Container(
                  child: FlatButton(
                      child: Row(
                        children: [
                          SizedBox(height: h / 15),
                          Text(
                            'Multifunctional Water Quality Test...',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w400),
                            softWrap: false,
                            overflow: TextOverflow.ellipsis,
                            maxLines: 1,
                          ),
                          Expanded(child: Container()),
                          Container(
                              child: IconButton(
                                  onPressed: () {
                                    Route route = MaterialPageRoute(
                                        builder: (context) => WaterTable());
                                    Navigator.push(context, route);
                                  },
                                  icon: Icon(Icons.arrow_forward_ios)))
                        ],
                      ),
                      onPressed: () {}),
                ),
                Divider(),
                Container(
                  child: FlatButton(
                      child: Row(
                        children: [
                          Text(
                            'pH Meter',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w400),
                            softWrap: false,
                            overflow: TextOverflow.fade,
                            maxLines: 1,
                          ),
                          Expanded(child: Container()),
                          Container(
                              child: IconButton(
                                  onPressed: () {
                                    Route route = MaterialPageRoute(
                                        builder: (context) => PhTable());
                                    Navigator.push(context, route);
                                  },
                                  icon: Icon(Icons.arrow_forward_ios)))
                        ],
                      ),
                      onPressed: () {}),
                ),
              ])
            ])));
  }
}


// Container(
//                     padding: EdgeInsets.only(
//                         top: 50, left: 6, right: 10, bottom: 10),
//                     child: Row(children: <Widget>[
//                       IconButton(
//                           icon: Icon(Icons.arrow_back_ios),
//                           onPressed: () {
//                             Route route = MaterialPageRoute(
//                                 builder: (context) => Water());
//                             Navigator.push(context, route);
//                           }),
//                       Container(
//                         width: 250,
//                         child: Text(
//                           'Connected Devices',
//                           style: TextStyle(fontSize: 20),
//                           softWrap: false,
//                           maxLines: 1,
//                           overflow: TextOverflow.fade, // new
//                         ),
//                       )
//                     ])),
//                 Container(
//                   child: ListView(
//                     children: <Widget>[
//                       Container(
//                         child: Row(
//                           children: [
//                             SizedBox(
//                               height: 20,
//                             ),
//                             Container(
//                                 width: w - (2 * w / 33),
//                                 child: Text(
//                                   'Multifunctional Water Quality Tester WRC-1100',
//                                   style: TextStyle(fontWeight: FontWeight.w400),
//                                   softWrap: false,
//                                   overflow: TextOverflow.fade,
//                                   maxLines: 1,
//                                 )),
//                             Expanded(
//                               child: Container(),
//                             ),
//                             Container(
//                               alignment: Alignment(1, -1),
//                               child: IconButton(
//                                   onPressed: () {
//                                     Route route = MaterialPageRoute(
//                                         builder: (context) => WaterTable());
//                                     Navigator.push(context, route);
//                                   },
//                                   icon: Icon(Icons.arrow_forward_ios)),
//                             )
//                           ],
//                         ),
//                       ),
//                       Divider(),
//                       Container(
//                         margin: EdgeInsets.only(left: 15),
//                         child: Row(
//                           children: [
//                             Container(
//                                 width: 250,
//                                 child: Text(
//                                   'pH Meter',
//                                   style: TextStyle(fontWeight: FontWeight.w400),
//                                   softWrap: false,
//                                   overflow: TextOverflow.fade,
//                                   maxLines: 1,
//                                 )),
//                             Expanded(
//                               child: Container(),
//                             ),
//                             Container(
//                               alignment: Alignment(1, -1),
//                               child: IconButton(
//                                   onPressed: () {},
//                                   icon: Icon(Icons.arrow_forward_ios)),
//                             )
//                           ],
//                         ),
//                       ),
//                       Divider(),
//                     ],
//                   ),
//                 )