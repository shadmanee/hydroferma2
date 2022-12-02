import 'package:flutter/material.dart';

class OptionsBar {
  static Widget options() {
    return Row(
      children: <Widget>[
        Container(
            child: IconButton(
                iconSize: 50,
                icon: Image.asset('images/logo-white.png'),
                onPressed: () {})),
        Expanded(child: Container()),
        Container(
            child: IconButton(
                iconSize: 30,
                icon: Image.asset('images/noti.png'),
                onPressed: () {})),
        Container(
            child: IconButton(
                iconSize: 20,
                icon: Image.asset('images/user.png'),
                onPressed: () {}))
      ],
    );
  }
}
