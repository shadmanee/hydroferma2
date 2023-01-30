// import 'package:flutter/material.dart';
// import 'package:hydroferma2/pages/Useraccount.dart';
// import 'package:hydroferma2/pages/bluetooth1.dart';
// import 'package:hydroferma2/pages/crops.dart';
// import 'package:hydroferma2/pages/devinfo.dart';
// import 'package:hydroferma2/pages/lifecycle.dart';
// import 'package:hydroferma2/pages/notification.dart';
// import 'package:hydroferma2/pages/power.dart';
// import 'package:hydroferma2/pages/settings.dart';
// import 'package:hydroferma2/pages/sidebar.dart';
// import 'package:hydroferma2/pages/water&nutrient.dart';
// import 'package:hydroferma2/pages/waterdevices.dart';
// import 'package:sliding_up_panel/sliding_up_panel.dart';

// var h, w, s;

// class Water extends StatefulWidget {
//   const Water({Key? key}) : super(key: key);

//   @override
//   State<Water> createState() => _WaterState();
// }

// class _WaterState extends State<Water> {
//   GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
//   final pc = PanelController();
//   @override
//   Widget build(BuildContext context) {
//     h = MediaQuery.of(context).size.height;
//     w = MediaQuery.of(context).size.width;
//     s = MediaQuery.of(context).size.aspectRatio;
//     return Scaffold(
//       key: _scaffoldKey,
//       backgroundColor: Colors.white,
//       drawer: SideBarOnly(),
//       body: Container(
//         padding: EdgeInsets.only(top: 20),
//         child: Stack(
//           children: [
//             Column(
//               children: [
//                 SizedBox(height: h / 33),
//                 Row(
//                   children: <Widget>[
//                     Container(
//                       child: IconButton(
//                         iconSize: w / 8,
//                         icon: Image.asset('images/logo-white.png'),
//                         onPressed: () {
//                           _scaffoldKey.currentState!.openDrawer();
//                         },
//                       ),
//                     ),
//                     Expanded(child: Container()),
//                     Container(
//                       child: IconButton(
//                         icon: Image.asset('images/noti.png'),
//                         iconSize: w / 8,
//                         onPressed: () {
//                           Route route = MaterialPageRoute(
//                               builder: (context) => Notifications());
//                           Navigator.push(context, route);
//                         },
//                       ),
//                     ),
//                     Container(
//                       child: IconButton(
//                         icon: Image.asset('images/user.png'),
//                         iconSize: w / 8,
//                         onPressed: () {
//                           Route route = MaterialPageRoute(
//                               builder: (context) => UserAccount());
//                           Navigator.push(context, route);
//                         },
//                       ),
//                     )
//                   ],
//                 ),

//                 //MAIN BODY
//                 Container(
//                   // margin: EdgeInsets.only(top: 48),
//                   child: Row(
//                     children: [
//                       Container(
//                         width: w / 3,
//                         padding: EdgeInsets.all(w / 30),
//                         child: FlatButton(
//                             child: Text(
//                               'Water',
//                               style: TextStyle(fontSize: s * 33),
//                             ),
//                             onPressed: () {},
//                             shape: Border(
//                               bottom: BorderSide(color: Colors.black, width: 3),
//                             )),
//                       ),
//                       Container(
//                           width: w / 3,
//                           padding: EdgeInsets.all(w / 30),
//                           child: TextButton(
//                             child: Text(
//                               'Nutrient',
//                               style: TextStyle(
//                                   fontSize: s * 33, color: Colors.grey[500]),
//                             ),
//                             onPressed: () {
//                               Route route = MaterialPageRoute(
//                                   builder: (context) => Nutrient());
//                               Navigator.push(context, route);
//                               // Navigator.of(context).push(_createRoute());
//                             },
//                           ))
//                     ],
//                   ),
//                 ),
//                 Container(
//                   margin: EdgeInsets.only(top: h / 50),
//                   child: Row(children: [
//                     Expanded(
//                       child: Container(),
//                     ),
//                     Container(
//                       decoration: BoxDecoration(
//                           borderRadius: BorderRadius.circular(8),
//                           color: Color(0xffE6F3FE),
//                           boxShadow: [
//                             BoxShadow(
//                               color: Color(0x26000000),
//                               offset: const Offset(
//                                 5.0,
//                                 5.0,
//                               ),
//                               blurRadius: 10.0,
//                               spreadRadius: 2.0,
//                             ), //BoxShadow
//                           ]),
//                       margin: EdgeInsets.only(right: w * 0.02),
//                       height: h / 4,
//                       width: w / 3,
//                       // child: ,
//                     ),
//                     Container(
//                         padding: EdgeInsets.only(top: 20),
//                         decoration: BoxDecoration(
//                             borderRadius: BorderRadius.circular(8),
//                             color: Color(0xffE6F3FE),
//                             boxShadow: [
//                               BoxShadow(
//                                 color: Color(0x26000000),
//                                 offset: const Offset(
//                                   5.0,
//                                   5.0,
//                                 ),
//                                 blurRadius: 10.0,
//                                 spreadRadius: 2.0,
//                               ), //BoxShadow
//                             ]),
//                         margin: EdgeInsets.only(left: w * 0.02),
//                         height: h / 4,
//                         width: w / 3),
//                     Expanded(child: Container())
//                   ]),
//                 ),
//                 SizedBox(height: h / 15),
//                 Container(
//                   child: FlatButton(
//                       child: Row(
//                         children: [
//                           Text('Water Usage',
//                               style: TextStyle(fontWeight: FontWeight.w400)),
//                           Expanded(child: Container()),
//                           Container(
//                               alignment: Alignment(1, -1),
//                               child: IconButton(
//                                   onPressed: () {},
//                                   icon: Icon(Icons.arrow_forward_ios)))
//                         ],
//                       ),
//                       onPressed: () {}),
//                 ),
//                 Divider(),
//                 Container(
//                   child: FlatButton(
//                       child: Row(
//                         children: [
//                           Text('Connected Devices',
//                               style: TextStyle(fontWeight: FontWeight.w400)),
//                           Expanded(child: Container()),
//                           Container(
//                               alignment: Alignment(1, -1),
//                               child: IconButton(
//                                   onPressed: () {
//                                     Route route = MaterialPageRoute(
//                                         builder: (context) => WaterDevices());
//                                     Navigator.push(context, route);
//                                   },
//                                   icon: Icon(Icons.arrow_forward_ios)))
//                         ],
//                       ),
//                       onPressed: () {}),
//                 ),
//                 Divider(),
//                 Container(
//                   child: FlatButton(
//                       child: Row(
//                         children: [
//                           Text('Alerts & Notifications',
//                               style: TextStyle(fontWeight: FontWeight.w400)),
//                           Expanded(child: Container()),
//                           Container(
//                               alignment: Alignment(1, -1),
//                               child: IconButton(
//                                   onPressed: () {},
//                                   icon: Icon(Icons.arrow_forward_ios)))
//                         ],
//                       ),
//                       onPressed: () {}),
//                 )
//               ],
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }

// class Nutrient extends StatefulWidget {
//   const Nutrient({Key? key}) : super(key: key);

//   @override
//   State<Nutrient> createState() => _NutrientState();
// }

// class _NutrientState extends State<Nutrient> {
//   GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
//   final pc = PanelController();
//   @override
//   Widget build(BuildContext context) {
//     h = MediaQuery.of(context).size.height;
//     w = MediaQuery.of(context).size.width;
//     s = MediaQuery.of(context).size.aspectRatio;
//     return Scaffold(
//         key: _scaffoldKey,
//         backgroundColor: Colors.white,
//         drawer: SideBarOnly(),
//         body: Container(
//             padding: EdgeInsets.only(top: 20),
//             child: Stack(
//               children: [
//                 Column(children: [
//                   SizedBox(height: h / 33),
//                   Row(
//                     children: <Widget>[
//                       Container(
//                         child: IconButton(
//                           iconSize: w / 8,
//                           icon: Image.asset('images/logo-white.png'),
//                           onPressed: () {
//                             _scaffoldKey.currentState!.openDrawer();
//                           },
//                         ),
//                       ),
//                       Expanded(child: Container()),
//                       Container(
//                         child: IconButton(
//                           icon: Image.asset('images/noti.png'),
//                           iconSize: w / 8,
//                           onPressed: () {
//                             Route route = MaterialPageRoute(
//                                 builder: (context) => Notifications());
//                             Navigator.push(context, route);
//                           },
//                         ),
//                       ),
//                       Container(
//                         child: IconButton(
//                           icon: Image.asset('images/user.png'),
//                           iconSize: w / 8,
//                           onPressed: () {
//                             Route route = MaterialPageRoute(
//                                 builder: (context) => UserAccount());
//                             Navigator.push(context, route);
//                           },
//                         ),
//                       )
//                     ],
//                   ),

//                   //MAIN BODY
//                   Container(
//                       // margin: EdgeInsets.only(top: 48),
//                       child: Column(children: [
//                     Row(
//                       children: [
//                         Container(
//                           width: w / 3,
//                           padding: EdgeInsets.all(w / 30),
//                           child: TextButton(
//                             child: Text(
//                               'Water',
//                               style: TextStyle(
//                                   fontSize: s * 33, color: Colors.grey[500]),
//                             ),
//                             onPressed: () {
//                               Route route = MaterialPageRoute(
//                                   builder: (context) => Water());
//                               Navigator.push(context, route);
//                             },
//                           ),
//                         ),
//                         Container(
//                             width: w / 2.8,
//                             padding: EdgeInsets.all(w / 30),
//                             child: FlatButton(
//                               shape: Border(
//                                 bottom:
//                                     BorderSide(color: Colors.black, width: 3),
//                               ),
//                               child: Text(
//                                 'Nutrient',
//                                 style: TextStyle(fontSize: s * 31.5),
//                               ),
//                               onPressed: () {
//                                 Navigator.of(context).pop();
//                               },
//                             ))
//                       ],
//                     ),
//                   ])),
//                   Row(
//                     children: [
//                       Container(
//                           width: w / 3.5,
//                           padding:
//                               EdgeInsets.only(left: w / 14, bottom: h / 40),
//                           child: Text(
//                             'Overview',
//                             style: TextStyle(
//                                 fontSize: s * 28,
//                                 color: Colors.grey[400],
//                                 fontWeight: FontWeight.w600),
//                           ))
//                     ],
//                   ),
//                   Column(
//                     children: [
//                       Row(
//                         children: [
//                           Expanded(child: Container()),
//                           Container(
//                             decoration: BoxDecoration(
//                                 borderRadius: BorderRadius.circular(8),
//                                 color: Color(0xffE6F3FE),
//                                 boxShadow: [
//                                   BoxShadow(
//                                     color: Color(0x26000000),
//                                     offset: const Offset(
//                                       5.0,
//                                       5.0,
//                                     ),
//                                     blurRadius: 10.0,
//                                     spreadRadius: 2.0,
//                                   ), //BoxShadow
//                                 ]),
//                             // margin: EdgeInsets.only(right: w * 0.02),
//                             height: h / 4,
//                             width: w - (2 * w / 20),
//                             // child: ,
//                           ),
//                           Expanded(child: Container()),
//                         ],
//                       ),
//                       SizedBox(
//                         height: h / 30,
//                       ),
//                       Row(
//                         children: [
//                           Expanded(child: Container()),
//                           Container(
//                             decoration: BoxDecoration(
//                                 borderRadius: BorderRadius.circular(8),
//                                 color: Color(0xffE6F3FE),
//                                 boxShadow: [
//                                   BoxShadow(
//                                     color: Color(0x26000000),
//                                     offset: const Offset(
//                                       5.0,
//                                       5.0,
//                                     ),
//                                     blurRadius: 10.0,
//                                     spreadRadius: 2.0,
//                                   ), //BoxShadow
//                                 ]),
//                             // margin: EdgeInsets.only(right: w * 0.02),
//                             height: h / 4,
//                             width: w - (2 * w / 20),
//                             // child: ,
//                           ),
//                           Expanded(child: Container()),
//                         ],
//                       ),
//                       Container(
//                         margin: EdgeInsets.all(h / 30),
//                         child: Row(
//                           children: [
//                             Expanded(
//                               child: Container(),
//                             ),
//                             Container(
//                               child: TextButton(
//                                 child: Text(
//                                   '+ Add More',
//                                   style: TextStyle(
//                                       color: Colors.grey[500],
//                                       fontWeight: FontWeight.w600),
//                                 ),
//                                 onPressed: () {
//                                   Route route = MaterialPageRoute(
//                                       builder: (context) => Crops());
//                                   Navigator.push(context, route);
//                                 },
//                               ),
//                             )
//                           ],
//                         ),
//                       )
//                     ],
//                   )
//                 ])
//               ],
//             )));
//   }
// }
