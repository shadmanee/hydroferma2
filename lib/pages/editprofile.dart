import 'package:flutter/material.dart';
import 'package:hydroferma2/pages/Useraccount.dart';
import 'package:hydroferma2/pages/bluetooth1.dart';
import 'package:hydroferma2/pages/lifecycle.dart';
import 'package:hydroferma2/pages/login.dart';
import 'package:hydroferma2/pages/dashboard.dart';
import 'package:hydroferma2/pages/water&nutrient.dart';
import 'package:hydroferma2/pages/notification.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';
import 'package:hydroferma2/pages/sidebar.dart';

class EditProfile extends StatefulWidget {
  const EditProfile({Key? key}) : super(key: key);

  @override
  State<EditProfile> createState() => _EditProfile();
}

var h, w, s;

class _EditProfile extends State<EditProfile> {
  var formKey = GlobalKey<FormState>();
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
          padding: EdgeInsets.only(top: 10),
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
              Container(
                //color: Color(0xffC9F3E9),
                margin: EdgeInsets.only(left: w * 0.03, right: w * 0.03),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  color: Color(0xffC9F3E9),
                ),
                child: Column(children: <Widget>[
                  Column(children: [
                    Container(
                      child: IconButton(
                        iconSize: w / 5,
                        icon: Image.asset('images/catto.png'),
                        onPressed: () {},
                      ),
                    ),
                    Container(
                      child: Row(
                        children: <Widget>[
                          Expanded(
                              child: Container(
                            height: MediaQuery.of(context).size.aspectRatio * 1,
                            //padding:
                            //  EdgeInsets.only(bottom: h * 0.01, top: h * 0.01),
                            //margin:
                            //  EdgeInsets.only(bottom: h * 0.01, top: h * 0.001)
                          )),
                          Container(
                              height:
                                  MediaQuery.of(context).size.aspectRatio * 900,
                              width:
                                  MediaQuery.of(context).size.aspectRatio * 540,
                              color: Color(0xff92D8BD),
                              //BorderRadius.all(Radius.circular(6.0)), color: Color(0xff88E2BF),
                              margin: EdgeInsets.only(bottom: h * 0.01),
                              padding: EdgeInsets.only(
                                  bottom: h * 0.001,
                                  top: h * 0.001,
                                  left: w * 0.04,
                                  right: w * 0.04),
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
                                                labelText:
                                                    'Update Email Address'),
                                            validator: (value) {
                                              // if(value.length==0) return ('Email or Phone');
                                            },
                                          ),
                                        ),
                                        Container(
                                          child: TextFormField(
                                            decoration: InputDecoration(
                                                labelText:
                                                    'Update Phone Number'),
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
                                            decoration: InputDecoration(
                                                labelText: 'Location'),
                                            validator: (value) {
                                              // if(value.length==0) return ('Email or Phone');
                                            },
                                          ),
                                        ),
                                        Container(
                                          height: MediaQuery.of(context)
                                                  .size
                                                  .aspectRatio *
                                              150,
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .aspectRatio *
                                              600,
                                          margin: EdgeInsets.only(top: 10),
                                          child: Container(
                                            child: Row(
                                              children: [
                                                IconButton(
                                                  iconSize: w / 10,
                                                  icon: Image.asset(
                                                      'images/no.png'),
                                                  onPressed: () {
                                                    Route route =
                                                        MaterialPageRoute(
                                                            builder: (context) =>
                                                                UserAccount());
                                                    Navigator.push(
                                                        context, route);
                                                  },
                                                ),
                                                IconButton(
                                                  iconSize: w / 10,
                                                  icon: Image.asset(
                                                      'images/yes.png'),
                                                  onPressed: () {
                                                    Route route =
                                                        MaterialPageRoute(
                                                            builder: (context) =>
                                                                UserAccount());
                                                    Navigator.push(
                                                        context, route);
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
                                  height:
                                      MediaQuery.of(context).size.aspectRatio *
                                          10,
                                  margin: EdgeInsets.only(
                                      bottom: h * 0.05, top: h * 0.05)))
                        ],
                      ),
                    ),
                  ]),
                ]),
              )
            ]),

            //form
          ])),
    );
  }
}
