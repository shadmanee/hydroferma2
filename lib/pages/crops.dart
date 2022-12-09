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
                          width: w / 3,
                          padding: EdgeInsets.all(w / 30),
                          child: Text(
                            'Crop Recommendation',
                            style: TextStyle(fontSize: s * 31.5),
                          ))
                    ],
                  ),
                  Row(children: [])
                ]))
              ])
            ])));
  }
}
