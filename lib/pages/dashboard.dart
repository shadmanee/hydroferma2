import 'package:flutter/material.dart';
import 'package:hydroferma2/pages/options.dart';

class DashBoard extends StatefulWidget {
  const DashBoard({Key? key}) : super(key: key);

  @override
  State<DashBoard> createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {
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
          height: 530,
          child: ListView(
            children: <Widget>[_dashBoardRow(), _dashBoardRow()],
          ))
    ]));
  }
}

Widget _dashBoardRow() {
  return Column(
    children: <Widget>[
      Row(
        children: <Widget>[
          Expanded(child: Container()),
          Column(
            children: <Widget>[
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Color(0xff95D8EB),
                    boxShadow: [
                      BoxShadow(
                        color: Color(0x26000000),
                        offset: const Offset(
                          5.0,
                          5.0,
                        ),
                        blurRadius: 10.0,
                        spreadRadius: 2.0,
                      ), //BoxShadow
                    ]),
                margin: EdgeInsets.only(right: 6, bottom: 12),
                height: 150,
                width: 120,
              ),
              Container(
                  margin: EdgeInsets.only(right: 6, bottom: 12),
                  height: 200,
                  width: 120,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Color(0xff8BD9C7),
                      boxShadow: [
                        BoxShadow(
                          color: Color(0x26000000),
                          offset: const Offset(
                            5.0,
                            5.0,
                          ),
                          blurRadius: 10.0,
                          spreadRadius: 2.0,
                        ), //BoxShadow
                      ]))
            ],
          ),
          Column(
            children: <Widget>[
              Container(
                  margin: EdgeInsets.only(left: 6, bottom: 12),
                  height: 200,
                  width: 120,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Color(0xff8BD9C7),
                      boxShadow: [
                        BoxShadow(
                          color: Color(0x26000000),
                          offset: const Offset(
                            5.0,
                            5.0,
                          ),
                          blurRadius: 10.0,
                          spreadRadius: 2.0,
                        ), //BoxShadow
                      ])),
              Container(
                  margin: EdgeInsets.only(left: 6, bottom: 12),
                  height: 150,
                  width: 120,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Color(0xff95D8EB),
                      boxShadow: [
                        BoxShadow(
                          color: Color(0x26000000),
                          offset: const Offset(
                            5.0,
                            5.0,
                          ),
                          blurRadius: 10.0,
                          spreadRadius: 2.0,
                        ), //BoxShadow
                      ]))
            ],
          ),
          Container(),
          Expanded(child: Container()),
        ],
      )
    ],
  );
}
