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
                        // margin: EdgeInsets.only(top: 48),
                        child: Row(
                          children: [
                            Container(
                              width: w / 3,
                              padding: EdgeInsets.all(w / 30),
                              child: FlatButton(
                                  child: Text(
                                    'Search',
                                    style: TextStyle(fontSize: s * 33),
                                  ),
                                  onPressed: () {},
                                  shape: Border(
                                    bottom: BorderSide(
                                        color: Colors.black, width: 3),
                                  )),
                            ),
                            Container(
                                width: w / 2.5,
                                padding: EdgeInsets.all(w / 30),
                                child: TextButton(
                                  child: Text(
                                    'Suggestions',
                                    style: TextStyle(
                                        fontSize: s * 33,
                                        color: Colors.grey[500]),
                                  ),
                                  onPressed: () {
                                    Route route = MaterialPageRoute(
                                        builder: (context) => Recommend());
                                    Navigator.push(context, route);
                                    // Navigator.of(context).push(_createRoute());
                                  },
                                ))
                          ],
                        ),
                      ),
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
                      height: 1.9 * h / 3,
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

class Recommend extends StatefulWidget {
  const Recommend({Key? key}) : super(key: key);

  @override
  State<Recommend> createState() => _RecommendState();
}

class _RecommendState extends State<Recommend> {
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
                        // margin: EdgeInsets.only(top: 48),
                        child: Row(
                          children: [
                            Container(
                              width: w / 3,
                              padding: EdgeInsets.all(w / 30),
                              child: TextButton(
                                child: Text(
                                  'Search',
                                  style: TextStyle(
                                      fontSize: s * 33,
                                      color: Colors.grey[500]),
                                ),
                                onPressed: () {
                                  Route route = MaterialPageRoute(
                                      builder: (context) => Crops());
                                  Navigator.push(context, route);
                                  // Navigator.of(context).push(_createRoute());
                                },
                              ),
                            ),
                            Container(
                                width: w / 2,
                                padding: EdgeInsets.all(w / 30),
                                child: FlatButton(
                                    child: Text(
                                      'Suggestions',
                                      style: TextStyle(fontSize: s * 33),
                                    ),
                                    onPressed: () {},
                                    shape: Border(
                                      bottom: BorderSide(
                                          color: Colors.black, width: 3),
                                    )))
                          ],
                        ),
                      ),
                    ],
                  ),
                  Container(
                    child: Column(children: [
                      Row(
                        children: [
                          Expanded(child: Container()),
                          Container(
                            child: Row(
                              children: [
                                Container(
                                  padding: EdgeInsets.all(2 * w / 33),
                                  child: Column(
                                    children: [
                                      Text('Humidity: ',
                                          style: TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.w300,
                                              color: Colors.black)),
                                      Text('73%',
                                          style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.w200,
                                              color: Colors.black38)),
                                      Text('Air Pressure: ',
                                          style: TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.w300,
                                              color: Colors.black)),
                                      Text('35.55 "Hg',
                                          style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.w200,
                                              color: Colors.black38))
                                    ],
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.all(2 * w / 33),
                                  child: Row(
                                    children: [
                                      Container(
                                        child: Column(children: [
                                          Icon(Icons.wb_sunny_outlined,
                                              color: Colors.grey[800]),
                                          Text(
                                            '31 *C',
                                            style: TextStyle(
                                                fontSize: 40,
                                                fontWeight: FontWeight.w200),
                                          ),
                                        ]),
                                      )
                                    ],
                                  ),
                                ),
                                Column()
                              ],
                            ),
                            margin: EdgeInsets.only(top: h / 22),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                color: Color(0xffE6F3FE),
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
                            // margin: EdgeInsets.only(right: w * 0.02),
                            height: h / 5,
                            width: w - (2 * w / 20),
                          ),
                          Expanded(child: Container())
                        ],
                      ),
                    ]),
                  ),
                  Container(
                    padding: EdgeInsets.only(
                        left: 2 * w / 33, top: h / 22, bottom: h / 22),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Text('AI Recommends:',
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.black38))
                          ],
                        ),
                        Divider(),
                        Container(
                            child: Row(
                          children: [
                            Text('Coriander',
                                style: TextStyle(
                                    fontWeight: FontWeight.w400, fontSize: 16)),
                            Expanded(child: Container()),
                            Container(
                                alignment: Alignment(1, -1),
                                child: IconButton(
                                    onPressed: () {},
                                    icon: Icon(Icons.arrow_forward_ios)))
                          ],
                        )),
                        Divider(),
                        Container(
                            child: Row(
                          children: [
                            Text('Malabar Spinach',
                                style: TextStyle(
                                    fontWeight: FontWeight.w400, fontSize: 16)),
                            Expanded(child: Container()),
                            Container(
                                alignment: Alignment(1, -1),
                                child: IconButton(
                                    onPressed: () {},
                                    icon: Icon(Icons.arrow_forward_ios)))
                          ],
                        ))
                      ],
                    ),
                  ),
                ]))
              ])
            ])));
  }
}
