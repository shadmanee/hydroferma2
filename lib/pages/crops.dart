import 'package:flutter/material.dart';
import 'package:hydroferma2/pages/sidebar.dart';

import 'Useraccount.dart';
import 'checkwater.dart';
import 'notification.dart';

var h, w, s;

class Crops extends StatefulWidget {
  const Crops({Key? key}) : super(key: key);

  @override
  State<Crops> createState() => _CropsState();
}

class _CropsState extends State<Crops> {
  List<String> crops = [
    "Tomato",
    "Green Wave",
    "Butter Head",
    "Iceberg Lettuce",
    "Romaine Lettuce",
    "Malabar Spinach",
    "Red Spinach",
    "Coriander",
    "Orchid",
    "Hydrangea"
  ];
  GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    h = MediaQuery.of(context).size.height;
    w = MediaQuery.of(context).size.width;
    s = MediaQuery.of(context).size.aspectRatio;
    return Scaffold(
        resizeToAvoidBottomInset: false,
        key: _scaffoldKey,
        backgroundColor: Colors.white,
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
                Container(
                    // margin: EdgeInsets.only(top: 48),
                    child: Column(children: [
                  Row(
                    children: [
                      Container(
                          width: w,
                          padding: EdgeInsets.all(w / 20),
                          child: Text(
                            'Crop Recommendation',
                            style: TextStyle(
                                fontSize: s * 33,
                                fontWeight: FontWeight.bold,
                                color: Colors.black54),
                          ))
                    ],
                  ),
                  Column(children: [
                    Row(
                      children: [
                        Expanded(child: Container()),
                        Container(
                          height: h / 12,
                          width: w - (2 * w / 33) - (w / 5),
                          child: TextField(
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              hintText: 'Search',
                            ),
                          ),
                        ),
                        SizedBox(
                          width: s * 20,
                        ),
                        IconButton(
                            iconSize: s * 60,
                            onPressed: () {},
                            icon: Icon(Icons.search_rounded)),
                        Expanded(child: Container())
                      ],
                    ),
                  ]),
                  Container(
                      // padding: EdgeInsets.only(top: s * 50),
                      width: w - (3 * w / 35),
                      height: 2 * h / 3,
                      child: Scrollbar(
                          isAlwaysShown: true, //always show scrollbar
                          thickness: 5, //width of scrollbar
                          radius:
                              Radius.circular(20), //corner radius of scrollbar
                          scrollbarOrientation: ScrollbarOrientation
                              .right, //which side to show scrollbar
                          child: ListView(
                            children: crops.map((crop) {
                              return Card(child: ListTile(title: Text(crop)));
                            }).toList(),
                          )))
                ]))
              ])
            ])));
  }
}
