import 'package:flutter/material.dart';
import 'package:hydroferma2/pages/bluetooth1.dart';
import 'package:hydroferma2/pages/dashboard.dart';
import 'package:hydroferma2/pages/water&nutrient.dart';
import 'package:hydroferma2/pages/Useraccount.dart';
import 'package:hydroferma2/pages/Notification.dart';
import 'dart:async';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';
import 'package:hydroferma2/pages/sidebar.dart';

var h, s, w;

class lifecycle1 extends StatefulWidget {
  const lifecycle1({Key? key}) : super(key: key);
  @override
  State<lifecycle1> createState() => _lifecycle1();
}

class _lifecycle1 extends State<lifecycle1> {
  GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  // @override
  // void initState() {
  //   super.initState();
  //   startTimer();
  // }

  // startTimer() async {
  //   var duration = Duration(seconds: 12);
  //   return Timer(duration, route);
  // }

  // route() {
  //   Navigator.pushReplacement(
  //       context, MaterialPageRoute(builder: (context) => lifecycle3()));
  // }

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
                      color: Color(0xffffffff),
                      child: Column(
                        children: [
                          Container(
                            padding: EdgeInsets.only(
                                bottom: h * 0.01,
                                top: h * 0.02,
                                left: w * 0.02,
                                right: w * 0.02),
                            child: IconButton(
                              iconSize: h / 2,
                              icon: Image.asset('images/lifecycle1.png'),
                              onPressed: () {
                                Route route = MaterialPageRoute(
                                    builder: (context) => lifecycle2());
                                Navigator.push(context, route);
                              },
                            ),
                          ),
                          Container(
                            child: Center(
                              child: Text(
                                "Upload photo",
                                style: TextStyle(fontSize: 35),
                                textAlign: TextAlign.center,
                              ),
                            ),
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
  void initState() {
    super.initState();
    startTimer();
  }

  startTimer() async {
    var duration = Duration(seconds: 12);
    return Timer(duration, route);
  }

  route() {
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => lifecycle3()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: _scaffoldKey,
        body: Container(
            padding: EdgeInsets.only(top: 20),
            child: Stack(children: [
              Container(
                  padding: EdgeInsets.only(top: 200),
                  child: Column(children: <Widget>[
                    Container(
                      child: Center(
                        child: SpinKitPouringHourGlassRefined(
                          duration: const Duration(seconds: 3),
                          color: Colors.green,
                          size: 100.0,
                        ),
                      ),
                    ),
                    Container(
                      child: Center(
                        child: Text(
                          "Please wait....",
                          style: TextStyle(fontSize: 20),
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
                      color: Color(0xffffffff),
                      child: Column(
                        children: [
                          Container(
                            padding: EdgeInsets.only(
                                bottom: h * 0.01,
                                top: h * 0.02,
                                left: w * 0.02,
                                right: w * 0.02),
                            child: IconButton(
                              iconSize: h / 2,
                              icon: Image.asset('images/done.png'),
                              onPressed: () {
                                Route route = MaterialPageRoute(
                                    builder: (context) => lifecycle4());
                                Navigator.push(context, route);
                              },
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

Route _createfinal() {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => const lifecycle4(),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      return child;
    },
  );
}

class lifecycle4 extends StatefulWidget {
  const lifecycle4({Key? key}) : super(key: key);

  @override
  State<lifecycle4> createState() => _lifecycle4State();
}

class _lifecycle4State extends State<lifecycle4> {
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
                  // Container(
                  //   color: Colors.red,
                  //   width: w - (3 * w / 33),
                  //   height: h - (h / 4.5),
                  //   child: Container(
                  //     height: MediaQuery.of(context).size.aspectRatio * 350,
                  //     width: MediaQuery.of(context).size.aspectRatio * 750,
                  //
                  Column(
                    children: [
                      Container(
                          width: w - (3 * w / 33),
                          height: h - (h / 3),
                          color: Color(0xffffffff),
                          child: Card(
                            color: Color(0xffD6EAFA),
                            shape: RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20.0))),
                            clipBehavior: Clip.antiAlias,
                            child: Column(
                              children: [
                                Container(
                                  child: ListTile(
                                    title: const Text(
                                      'Life Cycle Stage',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: Color(0x85000000),
                                        fontSize: 30,
                                        //fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  // height: MediaQuery.of(context)
                                  //         .size
                                  //         .aspectRatio *
                                  //     700,
                                  // width: MediaQuery.of(context)
                                  //         .size
                                  //         .aspectRatio *
                                  //     570,
                                  // padding: EdgeInsets.only(
                                  //     left: w * 0.001, right: w * 0.002),
                                  decoration: BoxDecoration(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(12.0)),
                                    color: Color(0xffACD6F9),
                                  ),
                                  child: Column(
                                    children: [
                                      Container(
                                        padding: EdgeInsets.only(
                                            top: h * 0.005,
                                            left: w * 0.20,
                                            right: w * 0.20,
                                            bottom: h * 0.0020),
                                        child: Text(
                                          'Stage 5',
                                          style: TextStyle(
                                              color:
                                                  Colors.black.withOpacity(0.7),
                                              fontSize: 30,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                      Container(
                                        color: Color(0xffACD6F9),
                                        padding: EdgeInsets.only(
                                            top: h * 0.0002,
                                            left: w * 0.0010,
                                            right: w * 0.0010,
                                            bottom: h * 0.00020),
                                        child: IconButton(
                                          iconSize: h / 2.5,
                                          icon: Image.asset(
                                              'images/lifestage.png'),
                                          onPressed: () {
                                            //Navigator.of(context).push(_createback());
                                          },
                                        ),
                                      ),
                                      Container(
                                        padding: EdgeInsets.only(
                                            top: h * 0.0002,
                                            left: w * 0.0010,
                                            right: w * 0.0010,
                                            bottom: h * 0.00020),
                                        child: Text(
                                          'Ready to harvest!',
                                          style: TextStyle(
                                              color:
                                                  Colors.black.withOpacity(0.7),
                                              fontWeight: FontWeight.bold,
                                              fontSize: 30),
                                        ),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ))
                    ],
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

///////////////////////////////////
// Column(children: <Widget>[
//   Row(
//     children: <Widget>[
//       Column(children: [
//         Container(
//             padding: EdgeInsets.only(
//               left: w * 0.01,
//               right: w * 0.01,
//             ),
//             height:
//                 MediaQuery.of(context).size.aspectRatio * 1000,
//             width:
//                 MediaQuery.of(context).size.aspectRatio * 635,
//             child: Card(
//               color: Color(0xffD6EAFA),
//               shape: RoundedRectangleBorder(
//                   borderRadius:
//                       BorderRadius.all(Radius.circular(20.0))),
//               clipBehavior: Clip.antiAlias,
//               child: Column(
//                 children: [
//                   Container(
//                     child: ListTile(
//                       title: const Text(
//                         'Life Cycle Stage',
//                         textAlign: TextAlign.center,
//                         style: TextStyle(
//                           color: Color(0x85000000),
//                           fontSize: 30,
//                           //fontWeight: FontWeight.bold,
//                         ),
//                       ),
//                     ),
//                   ),
//                   Container(
//                     height: MediaQuery.of(context)
//                             .size
//                             .aspectRatio *
//                         790,
//                     width: MediaQuery.of(context)
//                             .size
//                             .aspectRatio *
//                         570,
//                     decoration: BoxDecoration(
//                       borderRadius: BorderRadius.all(
//                           Radius.circular(12.0)),
//                       color: Color(0xffACD6F9),
//                     ),
//                     child: Column(
//                       children: [
//                         Container(
//                           padding: EdgeInsets.only(
//                               top: h * 0.005,
//                               left: w * 0.20,
//                               right: w * 0.20,
//                               bottom: h * 0.0020),
//                           child: Text(
//                             'Stage 5',
//                             style: TextStyle(
//                                 color: Colors.black
//                                     .withOpacity(0.7),
//                                 fontSize: 30,
//                                 fontWeight: FontWeight.bold),
//                           ),
//                         ),
//                         Container(
//                           color: Color(0xffACD6F9),
//                           padding: EdgeInsets.only(
//                               top: h * 0.0002,
//                               left: w * 0.0010,
//                               right: w * 0.0010,
//                               bottom: h * 0.00020),
//                           child: IconButton(
//                             iconSize: h / 2.5,
//                             icon: Image.asset(
//                                 'images/lifestage.png'),
//                             onPressed: () {
//                               //Navigator.of(context).push(_createback());
//                             },
//                           ),
//                         ),
//                         Container(
//                           padding: EdgeInsets.only(
//                               top: h * 0.0002,
//                               left: w * 0.0010,
//                               right: w * 0.0010,
//                               bottom: h * 0.00020),
//                           child: Text(
//                             'Ready to harvest!',
//                             style: TextStyle(
//                                 color: Colors.black
//                                     .withOpacity(0.7),
//                                 fontWeight: FontWeight.bold,
//                                 fontSize: 30),
//                           ),
//                         ),
//                       ],
//                     ),
//                   )
//                 ],
//               ),
//             ))
//       ])
//     ],
//   )
// ]),
