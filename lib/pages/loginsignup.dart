import 'dart:async';

import 'package:flutter/material.dart';
import 'package:hydroferma2/pages/Useraccount.dart';
import 'package:hydroferma2/pages/bluetooth1.dart';
import 'package:hydroferma2/pages/dashboard.dart';
import 'package:hydroferma2/pages/lifecycle.dart';
import 'package:hydroferma2/pages/login.dart';
import 'package:hydroferma2/pages/signup.dart';
import 'package:hydroferma2/pages/notification.dart';
import 'package:hydroferma2/pages/lifecycle.dart';
import 'package:hydroferma2/pages/water&nutrient.dart';
import 'package:hydroferma2/pages/waterdata.dart';
import 'package:hydroferma2/pages/waterdevices.dart';
import 'package:hydroferma2/pages/editprofile.dart';
import 'package:hydroferma2/pages/changephoto.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
// import 'package:google_fonts/google_fonts.dart';

class LoginSignup extends StatefulWidget {
  const LoginSignup({Key? key}) : super(key: key);

  @override
  State<LoginSignup> createState() => _LoginSignupState();
}

class _LoginSignupState extends State<LoginSignup> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          child: Column(
            children: [
              SizedBox(height: MediaQuery.of(context).size.height / 4.5),
              Container(
                  height: MediaQuery.of(context).size.aspectRatio * 400,
                  child: Image.asset('images/logo-white.png')),
              Padding(
                padding: EdgeInsets.all(30),
                child: Column(
                  children: [
                    Container(
                        margin: EdgeInsets.only(top: 12),
                        height: MediaQuery.of(context).size.height / 12.5,
                        width: MediaQuery.of(context).size.width / 2.25,
                        child: RaisedButton(
                          child: Text('Log In',
                              textAlign: TextAlign.center,
                              style:
                                  TextStyle(color: Colors.white, fontSize: 25)),
                          color: Color(0xff48BF91),
                          elevation: 10,
                          shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(6.0))),
                          onPressed: () {
                            Route route = MaterialPageRoute(
                                builder: (context) => LogIn());
                            Navigator.push(context, route);
                          },
                        )),
                    Container(
                        margin: EdgeInsets.only(top: 20),
                        height: MediaQuery.of(context).size.height / 12.5,
                        width: MediaQuery.of(context).size.width / 2.25,
                        child: RaisedButton(
                          child: Text('Sign Up',
                              textAlign: TextAlign.center,
                              style:
                                  TextStyle(color: Colors.white, fontSize: 25)),
                          color: Color(0xff48BF91),
                          elevation: 10,
                          shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(6.0))),
                          onPressed: () {
                            Route route = MaterialPageRoute(
                                builder: (context) => SignUp());
                            Navigator.push(context, route);
                          },
                        ))
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
