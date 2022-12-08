// import 'dart:html';
// import 'dart:js';
import 'package:flutter/material.dart';
import 'package:hydroferma2/pages/Useraccount.dart';
import 'package:hydroferma2/pages/bluetooth1.dart';
import 'package:hydroferma2/pages/lifecycle.dart';
import 'package:hydroferma2/pages/login.dart';
import 'package:hydroferma2/pages/dashboard.dart';
import 'package:hydroferma2/pages/water&nutrient.dart';

class EditProfile extends StatefulWidget {
  const EditProfile({Key? key}) : super(key: key);

  @override
  State<EditProfile> createState() => _EditProfile();
}

class _EditProfile extends State<EditProfile> {
  var formKey = GlobalKey<FormState>();
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
        child: Stack(
          children: [
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
                    icon: Image.asset('images/user-blue.png'),
                    onPressed: () {},
                  ),
                )
              ],
            ),
            Row(),
            Row(
              children: <Widget>[
                //color: Color(0xffC9F3E9),
                Expanded(
                    child: Container(
                        //color: Color(0xffC9F3E9),
                        height: 100,
                        margin: EdgeInsets.only(top: 80))),
                Container(
                  height: 100,
                  width: 100,
                  margin: EdgeInsets.only(top: 80),
                  //color: Color(0xffC9F3E9),
                  child: Image.asset('images/catto.png'),
                ),
                Expanded(
                    child: Container(
                        //color: Color(0xffC9F3E9),
                        height: 100,
                        margin: EdgeInsets.only(top: 80)))
              ],
            ),
            //form
            Row(
              children: <Widget>[
                Expanded(
                    child: Container(
                        height: 500,
                        padding: EdgeInsets.only(bottom: 10, top: 40),
                        margin: EdgeInsets.only(bottom: 10, top: 120))),
                Container(
                    height: 500,
                    width: 500,
                    color: Color(0xff92D8BD),
                    //BorderRadius.all(Radius.circular(6.0)), color: Color(0xff88E2BF),
                    margin: EdgeInsets.only(bottom: 45, top: 200),
                    padding: EdgeInsets.only(
                        bottom: 10, top: 20, left: 20, right: 20),
                    child: Column(
                      children: <Widget>[
                        Form(
                          key: formKey,
                          child: Column(
                            children: <Widget>[
                              Container(
                                child: TextFormField(
                                  decoration: InputDecoration(
                                      labelText: 'Change Username'),
                                  validator: (value) {
                                    // if(value.length==0) return ('Email or Phone');
                                  },
                                ),
                              ),
                              Container(
                                child: TextFormField(
                                  decoration: InputDecoration(
                                      labelText: 'Update Email Address'),
                                  validator: (value) {
                                    // if(value.length==0) return ('Email or Phone');
                                  },
                                ),
                              ),
                              Container(
                                child: TextFormField(
                                  decoration: InputDecoration(
                                      labelText: 'Update Phone Number'),
                                  validator: (value) {
                                    // if(value.length==0) return ('Email or Phone');
                                  },
                                ),
                              ),
                              Container(
                                child: TextFormField(
                                  decoration: InputDecoration(
                                      labelText: 'New Password'),
                                  validator: (value) {
                                    // if(value.length==0) return ('Email or Phone');
                                  },
                                ),
                              ),
                              Container(
                                child: TextFormField(
                                  decoration: InputDecoration(
                                      labelText: 'Confirm Password'),
                                  validator: (value) {
                                    // if(value.length==0) return ('Email or Phone');
                                  },
                                ),
                              ),
                              Container(
                                child: TextFormField(
                                  decoration:
                                      InputDecoration(labelText: 'Location'),
                                  validator: (value) {
                                    // if(value.length==0) return ('Email or Phone');
                                  },
                                ),
                              ),
                              Container(
                                height: 80,
                                width: 120,
                                margin: EdgeInsets.only(top: 20),
                                child: Container(
                                  child: Row(
                                    children: [
                                      IconButton(
                                        iconSize: 28,
                                        icon: Image.asset('images/no.png'),
                                        onPressed: () {
                                          Navigator.of(context)
                                              .push(_createlogout());
                                        },
                                      ),
                                      IconButton(
                                        iconSize: 28,
                                        icon: Image.asset('images/yes.png'),
                                        onPressed: () {
                                          Navigator.of(context)
                                              .push(_createlogout());
                                        },
                                      ),
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    )),
                Expanded(
                    child: Container(
                        height: 100,
                        margin: EdgeInsets.only(bottom: 5, top: 5)))
              ],
            ),
          ],
        ),
      ),
    );
  }
}

Route _createlogout() {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) =>
        const UserAccount(),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      return child;
    },
  );
}
