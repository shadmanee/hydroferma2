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

class Settingss extends StatefulWidget {
  const Settingss({Key? key}) : super(key: key);

  @override
  State<Settingss> createState() => _SettingssState();
}

class _SettingssState extends State<Settingss> {
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
                  padding: EdgeInsets.only(top: h / 40, left: w / 30),
                  child: Container(
                      child: Row(children: <Widget>[
                    Container(
                      child: Text(
                        'Preferences',
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
                            'Language',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w400),
                            softWrap: false,
                            overflow: TextOverflow.ellipsis,
                            maxLines: 1,
                          ),
                          Expanded(child: Container()),
                          Container(
                              child: IconButton(
                                  onPressed: () {},
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
                            'Background Power Consumption',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w400),
                            softWrap: false,
                            overflow: TextOverflow.fade,
                            maxLines: 1,
                          ),
                          Expanded(child: Container()),
                          Container(
                              child: IconButton(
                                  onPressed: () {},
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
                          SizedBox(height: h / 15),
                          Text(
                            'Appearance',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w400),
                            softWrap: false,
                            overflow: TextOverflow.ellipsis,
                            maxLines: 1,
                          ),
                          Expanded(child: Container()),
                          Container(
                              child: IconButton(
                                  onPressed: () {},
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
                          SizedBox(height: h / 15),
                          Text(
                            'Advanced Settings',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w400),
                            softWrap: false,
                            overflow: TextOverflow.ellipsis,
                            maxLines: 1,
                          ),
                          Expanded(child: Container()),
                          Container(
                              child: IconButton(
                                  onPressed: () {},
                                  icon: Icon(Icons.arrow_forward_ios)))
                        ],
                      ),
                      onPressed: () {}),
                ),
                Divider(),
              ])
            ])));
  }
}
