import 'package:flutter/material.dart';
import 'package:hydroferma2/pages/Useraccount.dart';
import 'package:hydroferma2/pages/bluetooth1.dart';
import 'package:hydroferma2/pages/lifecycle.dart';
import 'package:hydroferma2/pages/sidebar.dart';
import 'package:hydroferma2/pages/water&nutrient.dart';

var h, w, s;

class Notifications extends StatefulWidget {
  const Notifications({Key? key}) : super(key: key);

  @override
  State<Notifications> createState() => _Notifications();
}

class _Notifications extends State<Notifications> {
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
                      icon: Image.asset('images/noti-blue.png'),
                      iconSize: w / 8,
                      onPressed: () {
                        Navigator.pop(context);
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
              Container(
                // margin: EdgeInsets.fromLTRB(15, 60, 15, 15),
                margin: EdgeInsets.only(top: h / 40),
                height: h - (h / 5),
                width: w - (w / 10),
                child: ListView(
                  children: <Widget>[
                    Card(
                      color: Color(0xccffffff),
                      shape: RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.all(Radius.circular(20.0))),
                      clipBehavior: Clip.antiAlias,
                      child: Column(
                        children: [
                          ListTile(
                              title: Container(
                            child: Row(
                              children: [
                                Text(
                                  'Water & Nutrient Supply',
                                  style: TextStyle(
                                      color: Colors.grey[600],
                                      fontWeight: FontWeight.w800),
                                ),
                                Expanded(child: Container()),
                                Text('56m',
                                    style: TextStyle(
                                        color: Colors.grey[400],
                                        fontWeight: FontWeight.w600))
                              ],
                            ),
                          )),
                          Container(
                            color: Colors.white,
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                      top: 13, left: 16, right: 16, bottom: 10),
                                  child: Text(
                                    'Your system supplied 0.53 mg of MgPH to the nutrient medium.',
                                    style: TextStyle(
                                        color: Colors.black.withOpacity(0.6),
                                        fontSize: 17),
                                  ),
                                ),
                                ButtonBar(
                                  alignment: MainAxisAlignment.end,
                                  children: [
                                    FlatButton(
                                      textColor: const Color(0xFF408FD0),
                                      onPressed: () {
                                        // Perform some action
                                      },
                                      child: const Text('Okay'),
                                    )
                                  ],
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    Card(
                      color: Color(0xccffffff),
                      shape: RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.all(Radius.circular(20.0))),
                      clipBehavior: Clip.antiAlias,
                      child: Column(
                        children: [
                          ListTile(
                              title: Container(
                            child: Row(
                              children: [
                                Text(
                                  'Power Usage',
                                  style: TextStyle(
                                      color: Colors.grey[600],
                                      fontWeight: FontWeight.w800),
                                ),
                                Expanded(child: Container()),
                                Text('2h',
                                    style: TextStyle(
                                        color: Colors.grey[400],
                                        fontWeight: FontWeight.w600))
                              ],
                            ),
                          )),
                          Container(
                            color: Colors.white,
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                      top: 13, left: 16, right: 16, bottom: 10),
                                  child: Text(
                                    'Not enough sunlight! Switch to battery backup?',
                                    style: TextStyle(
                                        color: Colors.black.withOpacity(0.6),
                                        fontSize: 17),
                                  ),
                                ),
                                ButtonBar(
                                  alignment: MainAxisAlignment.end,
                                  children: [
                                    FlatButton(
                                      textColor: const Color(0xFF408FD0),
                                      onPressed: () {
                                        // Perform some action
                                      },
                                      child: const Text('Switch'),
                                    ),
                                    FlatButton(
                                      textColor: const Color(0xFF408FD0),
                                      onPressed: () {
                                        // Perform some action
                                      },
                                      child: const Text('Ignore'),
                                    )
                                  ],
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
                decoration: BoxDecoration(
                    color: Color(0xc977AAD4),
                    borderRadius: BorderRadius.all(Radius.circular(12))),
              )
            ])
          ]),
        ));
  }
}
