import 'package:flutter/material.dart';
import 'package:hydroferma2/pages/dashboard.dart';
import 'package:hydroferma2/pages/options.dart';

class Bluetooth extends StatefulWidget {
  const Bluetooth({Key? key}) : super(key: key);

  @override
  State<Bluetooth> createState() => _bluetooth();
}

class _bluetooth extends State<Bluetooth> {
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
        child: OptionsBar.options(),
      ),
      Container(
          margin: EdgeInsets.only(top: 20),
          height: 30,
      ),
      Row(children: <Widget>[
        Container(
          height: 30,
        )
      ]),
      Container(
        child: Center(
        child: IconButton(
          iconSize: 300,
          icon: Image.asset('images/bluetooth1.png'),
          onPressed: () {
            Navigator.of(context).push(_createRoute());
          },
        ),
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

Route _createRoute() {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) =>
        const bluetoothconnect(),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      return child;
    },
  );
}

class bluetoothconnect extends StatefulWidget {
  const bluetoothconnect({Key? key}) : super(key: key);

  @override
  State<bluetoothconnect> createState() => _bluetoothconnectState();
}



class _bluetoothconnectState extends State<bluetoothconnect> {
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
        child: OptionsBar.options(),
      ),
      Container(
          margin: EdgeInsets.only(top: 20),
          height: 30,
      ),
      Row(children: <Widget>[
        Container(
          height: 30,
        )
      ]),
      Container(
        child: Center(
        child: IconButton(
          iconSize: 300,
          icon: Image.asset('images/bluetooth2.png'),
          onPressed: () {
            Navigator.of(context).push(_createback());
          },
        ),
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
                "Connected!",
                style: TextStyle(fontSize: 40),
                textAlign: TextAlign.center,
              ),
            ),
      ),

    ]));
  }
}

Route _createback() {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) =>
        const Bluetooth(),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      return child;
    },
  );
}