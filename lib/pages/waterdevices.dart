import 'package:flutter/material.dart';
import 'package:hydroferma2/pages/bluetooth1.dart';
import 'package:hydroferma2/pages/lifecycle.dart';
import 'package:hydroferma2/pages/water&nutrient.dart';
import 'package:hydroferma2/pages/waterdata.dart';

class WaterDevices extends StatefulWidget {
  const WaterDevices({Key? key}) : super(key: key);

  @override
  State<WaterDevices> createState() => _WaterDevicesState();
}

class _WaterDevicesState extends State<WaterDevices> {
  GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: _scaffoldKey,
        drawer: Container(
          width: 250,
          child: Drawer(
            backgroundColor: Color(0xff89B6DC),
            child: ListView(
              padding: EdgeInsets.fromLTRB(8, 20, 8, 8),
              children: [
                Container(
                  alignment: Alignment(1, -1),
                  child: IconButton(
                      iconSize: 40,
                      onPressed: () {
                        if (_scaffoldKey.currentState!.isDrawerOpen) {
                          Navigator.pop(context);
                        }
                      },
                      icon: Image.asset('images/logo-blue.png')),
                ),
                Container(
                  height: 20,
                ),
                Container(
                  height: 50,
                  child: RaisedButton(
                    color: Color(0xff6CA3D1),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(6.0))),
                    elevation: 5,
                    child: Text('Water & Nutrient Supply',
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Colors.white)),
                    onPressed: () {
                      Route route =
                          MaterialPageRoute(builder: (context) => Water());
                      Navigator.push(context, route);
                    },
                  ),
                ),
                Divider(),
                Container(
                  height: 50,
                  child: RaisedButton(
                    color: Color(0xff6CA3D1),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(6.0))),
                    elevation: 5,
                    child: Text('Power Usage',
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Colors.white)),
                    onPressed: () {},
                  ),
                ),
                Divider(),
                Container(
                  height: 50,
                  child: RaisedButton(
                    color: Color(0xff6CA3D1),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(6.0))),
                    elevation: 5,
                    child: Text('Crop Recommendation',
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Colors.white)),
                    onPressed: () {},
                  ),
                ),
                Divider(),
                Container(
                  height: 50,
                  child: RaisedButton(
                    color: Color(0xff6CA3D1),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(6.0))),
                    elevation: 5,
                    child: Text('Life Cycle',
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Colors.white)),
                    onPressed: () {
                      Route route =
                          MaterialPageRoute(builder: (context) => lifecycle1());
                      Navigator.push(context, route);
                    },
                  ),
                ),
                Divider(),
                Container(
                  height: 50,
                  child: RaisedButton(
                    color: Color(0xff6CA3D1),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(6.0))),
                    elevation: 5,
                    child: Text('Connect System',
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Colors.white)),
                    onPressed: () {
                      Route route =
                          MaterialPageRoute(builder: (context) => Bluetooth());
                      Navigator.push(context, route);
                    },
                  ),
                ),
                Divider(),
                Container(
                  height: 50,
                  child: RaisedButton(
                    color: Color(0xff6CA3D1),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(6.0))),
                    elevation: 5,
                    child: Text('Data Log',
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Colors.white)),
                    onPressed: () {},
                  ),
                ),
                Divider(),
                Container(
                  height: 50,
                  child: RaisedButton(
                    color: Color(0xff6CA3D1),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(6.0))),
                    elevation: 5,
                    child: Text('Preferences',
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Colors.white)),
                    onPressed: () {},
                  ),
                )
              ],
            ),
          ),
        ),
        body: Container(
            padding: EdgeInsets.only(top: 20),
            child: Stack(children: [
              Row(
                children: <Widget>[
                  Container(
                    child: IconButton(
                      iconSize: 40,
                      icon: Image.asset('images/logo-white.png'),
                      onPressed: () {
                        _scaffoldKey.currentState!.openDrawer();
                      },
                    ),
                  ),
                  SizedBox(width: 160),
                  Container(
                    child: IconButton(
                      icon: Image.asset('images/noti.png'),
                      onPressed: () {
                        // Route route =
                        //     MaterialPageRoute(builder: (context) => *ENTER CLASS_NAME HERE*);
                        // Navigator.push(context, route);
                      },
                    ),
                  ),
                  Container(
                    child: IconButton(
                      icon: Image.asset('images/user.png'),
                      onPressed: () {},
                    ),
                  )
                ],
              ),
              Container(
                  padding:
                      EdgeInsets.only(top: 50, left: 6, right: 10, bottom: 10),
                  child: Row(children: <Widget>[
                    IconButton(
                        icon: Icon(Icons.arrow_back_ios),
                        onPressed: () {
                          Route route =
                              MaterialPageRoute(builder: (context) => Water());
                          Navigator.push(context, route);
                        }),
                    Container(
                      width: 250,
                      child: Text(
                        'Connected Devices',
                        style: TextStyle(fontSize: 20),
                        softWrap: false,
                        maxLines: 1,
                        overflow: TextOverflow.fade, // new
                      ),
                    )
                  ])),
              Container(
                margin: EdgeInsets.only(top: 70),
                child: ListView(
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(left: 15),
                      child: Row(
                        children: [
                          SizedBox(
                            height: 20,
                          ),
                          Container(
                              width: 250,
                              child: Text(
                                'Multifunctional Water Quality Tester WRC-1100',
                                style: TextStyle(fontWeight: FontWeight.w400),
                                softWrap: false,
                                overflow: TextOverflow.fade,
                                maxLines: 1,
                              )),
                          Expanded(
                            child: Container(),
                          ),
                          Container(
                            alignment: Alignment(1, -1),
                            child: IconButton(
                                onPressed: () {
                                  Route route = MaterialPageRoute(
                                      builder: (context) => WaterTable());
                                  Navigator.push(context, route);
                                },
                                icon: Icon(Icons.arrow_forward_ios)),
                          )
                        ],
                      ),
                    ),
                    Divider(),
                    Container(
                      margin: EdgeInsets.only(left: 15),
                      child: Row(
                        children: [
                          Container(
                              width: 250,
                              child: Text(
                                'pH Meter',
                                style: TextStyle(fontWeight: FontWeight.w400),
                                softWrap: false,
                                overflow: TextOverflow.fade,
                                maxLines: 1,
                              )),
                          Expanded(
                            child: Container(),
                          ),
                          Container(
                            alignment: Alignment(1, -1),
                            child: IconButton(
                                onPressed: () {},
                                icon: Icon(Icons.arrow_forward_ios)),
                          )
                        ],
                      ),
                    ),
                    Divider(),
                  ],
                ),
              )
            ])));
  }
}
