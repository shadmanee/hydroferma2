import 'dart:async';
import 'package:hydroferma2/pages/checkprogresscircular.dart';
import 'package:hydroferma2/pages/checkslidingpanel.dart';
import 'package:hydroferma2/pages/crops.dart';
import 'package:hydroferma2/pages/settings.dart';
// import 'package:hydroferma2/pages/checkwater.dart';
import 'package:hydroferma2/pages/dashboard.dart';
import 'package:hydroferma2/pages/devinfo.dart';
import 'package:hydroferma2/pages/emptypagetotest.dart';
import 'package:hydroferma2/pages/login.dart';
import 'package:hydroferma2/pages/loginsignup.dart';
import 'package:hydroferma2/pages/powersystem.dart';
import 'package:hydroferma2/pages/sidebar.dart';
import 'package:hydroferma2/pages/signup.dart';
import 'package:hydroferma2/pages/water&nutrient.dart';
import 'package:hydroferma2/pages/waterchart.dart';
import 'package:path/path.dart' as Path;
import 'package:flutter/material.dart';
import 'package:hydroferma2/pages/Useraccount.dart';
import 'package:hydroferma2/pages/bluetooth1.dart';
import 'package:hydroferma2/pages/waterdevices.dart';
import 'package:hydroferma2/pages/editprofile.dart';
import 'package:hydroferma2/pages/changephoto.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_animation_progress_bar/flutter_animation_progress_bar.dart';

// import 'package:google_fonts/google_fonts.dart';
void main() {
  runApp(MaterialApp(title: 'Hydroferma', home: UserAccount()));
}

class Land extends StatefulWidget {
  const Land({Key? key}) : super(key: key);
  @override
  State<Land> createState() => _LandState();
}

class _LandState extends State<Land> {
  @override
  void initState() {
    super.initState();
    startTimer();
  }

  startTimer() async {
    var duration = Duration(seconds: 7);
    return Timer(duration, route);
  }

  route() {
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => LoginSignup()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xff77AAD4),
        body: Container(
          child: Center(
            child: Column(
              children: [
                Expanded(
                  child: Container(),
                ),
                Row(children: [
                  Expanded(child: Container()),
                  Column(
                    children: [
                      Container(
                        height: MediaQuery.of(context).size.aspectRatio * 600,
                        child: Image.asset('images/logo-blue.png'),
                      ),
                      Text(
                        'Hydroferma',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize:
                                MediaQuery.of(context).size.aspectRatio * 90,
                            color: Colors.white),
                      ),
                      Container(
                          width: MediaQuery.of(context).size.width / 1.7,
                          padding: EdgeInsets.only(top: 30),
                          child: FAProgressBar(
                            progressColor: Colors.white,
                            displayTextStyle:
                                TextStyle(color: Colors.grey[500]),
                            maxValue: 100,
                            currentValue: 100,
                            displayText: '%',
                            direction: Axis.horizontal,
                            animatedDuration: Duration(seconds: 6),
                          ))
                    ],
                  ),
                  Expanded(child: Container())
                ]),
                Expanded(child: Container())
              ],
            ),
          ),
        ));
  }
}
