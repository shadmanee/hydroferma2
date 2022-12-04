import 'package:flutter/material.dart';
import 'package:hydroferma2/pages/dashboard.dart';
import 'package:hydroferma2/pages/optionsnoti.dart';

class Notificationn extends StatefulWidget {
  const Notificationn({Key? key}) : super(key: key);

  @override
  State<Notificationn> createState() => _Notificationn();
}

class _Notificationn extends State<Notificationn> {
  @override
  Widget build(BuildContext context) {
   return Scaffold(
        body: Column(children: <Widget>[
      Row(children: <Widget>[
        Container(
          height: 20,
        )
      ]),
      Container(
        child: OptionsBar.optionsnoti(),
      ),
      Container(
          margin: EdgeInsets.only(top: 20),
          height: 30,
      ),
      Row(children: <Widget>[
        Container(
          height: 300,
          color: Color(0xff8bd0c7),
        )
      ]),
      Container(
        child: Center(
      
      ),
      ),
      Row(children: <Widget>[
        Container(
          height: 80,
        )
      ]),
      Container(
           child: Center(
             child: Text(
                "Tap to connect the system",
                style: TextStyle(fontSize: 40),
                textAlign: TextAlign.center,
              ),
            ),
      ),

    ]));
  }
}





