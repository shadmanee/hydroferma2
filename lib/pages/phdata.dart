import 'package:flutter/material.dart';
import 'package:hydroferma2/pages/sidebar.dart';

import 'Useraccount.dart';
import 'checkwater.dart';
import 'notification.dart';
import 'water&nutrient.dart';

var h, w, s;

class PhTable extends StatefulWidget {
  const PhTable({Key? key}) : super(key: key);

  @override
  State<PhTable> createState() => _PhTableState();
}

class _PhTableState extends State<PhTable> {
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
                Container(
                    padding: EdgeInsets.only(top: h / 50, left: w / 30),
                    child: Column(
                      children: [
                        Row(children: <Widget>[
                          IconButton(
                              icon: Icon(Icons.arrow_back_ios),
                              onPressed: () {
                                Route route = MaterialPageRoute(
                                    builder: (context) => Water());
                                Navigator.push(context, route);
                              }),
                          Container(
                            child: Text(
                              'pH Meter',
                              style: TextStyle(
                                  fontSize: 22,
                                  fontWeight: FontWeight.w800,
                                  color: Colors.grey[600]),
                              softWrap: false,
                              maxLines: 1,
                              overflow: TextOverflow.fade, // new
                            ),
                          )
                        ]),
                        Row(
                          children: [
                            Container(
                                child: Row(children: <Widget>[
                              Center(
                                  child: Text(
                                '   Scan Frequency: ',
                                style: TextStyle(fontSize: 14),
                              )),
                              DropdownButtonExample(),
                            ]))
                          ],
                        )
                      ],
                    )),
                Container(
                  width: w - (2 * w / 33),
                  height: 2 * h / 3,
                  child: ListView(
                    children: [
                      Table(
                        border: TableBorder(
                            horizontalInside: BorderSide(
                                width: 0.5,
                                color: Colors.grey,
                                style: BorderStyle.solid)),
                        columnWidths: const <int, TableColumnWidth>{
                          0: FixedColumnWidth(30),
                          1: FixedColumnWidth(50),
                          2: FixedColumnWidth(50),
                          3: FixedColumnWidth(50),
                          4: FixedColumnWidth(50),
                          5: FixedColumnWidth(50)
                        },
                        defaultVerticalAlignment:
                            TableCellVerticalAlignment.middle,
                        children: <TableRow>[
                          TableRow(children: <Widget>[
                            TableCell(
                              verticalAlignment:
                                  TableCellVerticalAlignment.middle,
                              child: Container(
                                margin: EdgeInsets.only(bottom: 15),
                                height: 18,
                                width: 10,
                                child: Text('Sl. No.',
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold),
                                    softWrap: false,
                                    overflow: TextOverflow.fade,
                                    maxLines: 1),
                              ),
                            ),
                            TableCell(
                              verticalAlignment:
                                  TableCellVerticalAlignment.middle,
                              child: Container(
                                margin: EdgeInsets.only(bottom: 15),
                                height: 18,
                                width: 10,
                                child: Text('Temperature (degrees C)',
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold),
                                    softWrap: false,
                                    overflow: TextOverflow.fade,
                                    maxLines: 1),
                              ),
                            ),
                            TableCell(
                              verticalAlignment:
                                  TableCellVerticalAlignment.middle,
                              child: Container(
                                margin: EdgeInsets.only(bottom: 15),
                                height: 18,
                                width: 10,
                                child: Text('TDS (mg/L)',
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold),
                                    softWrap: false,
                                    overflow: TextOverflow.fade,
                                    maxLines: 1),
                              ),
                            ),
                            TableCell(
                              verticalAlignment:
                                  TableCellVerticalAlignment.middle,
                              child: Container(
                                margin: EdgeInsets.only(bottom: 15),
                                height: 18,
                                width: 10,
                                child: Text('EC (mS/cm)',
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold),
                                    softWrap: false,
                                    overflow: TextOverflow.fade,
                                    maxLines: 1),
                              ),
                            ),
                            TableCell(
                              verticalAlignment:
                                  TableCellVerticalAlignment.middle,
                              child: Container(
                                margin: EdgeInsets.only(bottom: 15),
                                height: 18,
                                width: 10,
                                child: Text('Water Level',
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold),
                                    softWrap: false,
                                    overflow: TextOverflow.fade,
                                    maxLines: 1),
                              ),
                            ),
                            TableCell(
                              verticalAlignment:
                                  TableCellVerticalAlignment.middle,
                              child: Container(
                                margin: EdgeInsets.only(bottom: 15),
                                height: 18,
                                width: 10,
                                child: Text('Salinity (g/kg)',
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold),
                                    softWrap: false,
                                    overflow: TextOverflow.fade,
                                    maxLines: 1),
                              ),
                            )
                          ]),
                          TableRow(children: <Widget>[
                            TableCell(
                                child: Container(
                              margin: EdgeInsets.only(top: 15, bottom: 15),
                              child: Center(
                                  child: Text('1',
                                      style: TextStyle(fontSize: 12))),
                            )),
                            TableCell(
                              child: Container(
                                  margin: EdgeInsets.all(4),
                                  child: Center(
                                      child: Text('33',
                                          style: TextStyle(fontSize: 12)))),
                            ),
                            TableCell(
                              child: Container(
                                  margin: EdgeInsets.all(6),
                                  child: Center(
                                      child: Text('434',
                                          style: TextStyle(fontSize: 12)))),
                            ),
                            TableCell(
                              child: Container(
                                  margin: EdgeInsets.all(6),
                                  child: Center(
                                      child: Text('1.3',
                                          style: TextStyle(fontSize: 12)))),
                            ),
                            TableCell(
                              child: Container(
                                  margin: EdgeInsets.all(6),
                                  child: Center(
                                      child: Text('0.3',
                                          style: TextStyle(fontSize: 12)))),
                            ),
                            TableCell(
                              child: Container(
                                  margin: EdgeInsets.all(6),
                                  child: Center(
                                      child: Text('23',
                                          style: TextStyle(fontSize: 12)))),
                            ),
                          ]),
                          TableRow(children: <Widget>[
                            TableCell(
                                child: Container(
                              margin: EdgeInsets.only(top: 15, bottom: 15),
                              child: Center(
                                  child: Text('1',
                                      style: TextStyle(fontSize: 12))),
                            )),
                            TableCell(
                              child: Container(
                                  margin: EdgeInsets.all(4),
                                  child: Center(
                                      child: Text('33',
                                          style: TextStyle(fontSize: 12)))),
                            ),
                            TableCell(
                              child: Container(
                                  margin: EdgeInsets.all(6),
                                  child: Center(
                                      child: Text('434',
                                          style: TextStyle(fontSize: 12)))),
                            ),
                            TableCell(
                              child: Container(
                                  margin: EdgeInsets.all(6),
                                  child: Center(
                                      child: Text('1.3',
                                          style: TextStyle(fontSize: 12)))),
                            ),
                            TableCell(
                              child: Container(
                                  margin: EdgeInsets.all(6),
                                  child: Center(
                                      child: Text('0.3',
                                          style: TextStyle(fontSize: 12)))),
                            ),
                            TableCell(
                              child: Container(
                                  margin: EdgeInsets.all(6),
                                  child: Center(
                                      child: Text('23',
                                          style: TextStyle(fontSize: 12)))),
                            ),
                          ]),
                          TableRow(children: <Widget>[
                            TableCell(
                                child: Container(
                              margin: EdgeInsets.only(top: 15, bottom: 15),
                              child: Center(
                                  child: Text('1',
                                      style: TextStyle(fontSize: 12))),
                            )),
                            TableCell(
                              child: Container(
                                  margin: EdgeInsets.all(4),
                                  child: Center(
                                      child: Text('33',
                                          style: TextStyle(fontSize: 12)))),
                            ),
                            TableCell(
                              child: Container(
                                  margin: EdgeInsets.all(6),
                                  child: Center(
                                      child: Text('434',
                                          style: TextStyle(fontSize: 12)))),
                            ),
                            TableCell(
                              child: Container(
                                  margin: EdgeInsets.all(6),
                                  child: Center(
                                      child: Text('1.3',
                                          style: TextStyle(fontSize: 12)))),
                            ),
                            TableCell(
                              child: Container(
                                  margin: EdgeInsets.all(6),
                                  child: Center(
                                      child: Text('0.3',
                                          style: TextStyle(fontSize: 12)))),
                            ),
                            TableCell(
                              child: Container(
                                  margin: EdgeInsets.all(6),
                                  child: Center(
                                      child: Text('23',
                                          style: TextStyle(fontSize: 12)))),
                            ),
                          ]),
                          TableRow(children: <Widget>[
                            TableCell(
                                child: Container(
                              margin: EdgeInsets.only(top: 15, bottom: 15),
                              child: Center(
                                  child: Text('1',
                                      style: TextStyle(fontSize: 12))),
                            )),
                            TableCell(
                              child: Container(
                                  margin: EdgeInsets.all(4),
                                  child: Center(
                                      child: Text('33',
                                          style: TextStyle(fontSize: 12)))),
                            ),
                            TableCell(
                              child: Container(
                                  margin: EdgeInsets.all(6),
                                  child: Center(
                                      child: Text('434',
                                          style: TextStyle(fontSize: 12)))),
                            ),
                            TableCell(
                              child: Container(
                                  margin: EdgeInsets.all(6),
                                  child: Center(
                                      child: Text('1.3',
                                          style: TextStyle(fontSize: 12)))),
                            ),
                            TableCell(
                              child: Container(
                                  margin: EdgeInsets.all(6),
                                  child: Center(
                                      child: Text('0.3',
                                          style: TextStyle(fontSize: 12)))),
                            ),
                            TableCell(
                              child: Container(
                                  margin: EdgeInsets.all(6),
                                  child: Center(
                                      child: Text('23',
                                          style: TextStyle(fontSize: 12)))),
                            ),
                          ]),
                          TableRow(children: <Widget>[
                            TableCell(
                                child: Container(
                              margin: EdgeInsets.only(top: 15, bottom: 15),
                              child: Center(
                                  child: Text('1',
                                      style: TextStyle(fontSize: 12))),
                            )),
                            TableCell(
                              child: Container(
                                  margin: EdgeInsets.all(4),
                                  child: Center(
                                      child: Text('33',
                                          style: TextStyle(fontSize: 12)))),
                            ),
                            TableCell(
                              child: Container(
                                  margin: EdgeInsets.all(6),
                                  child: Center(
                                      child: Text('434',
                                          style: TextStyle(fontSize: 12)))),
                            ),
                            TableCell(
                              child: Container(
                                  margin: EdgeInsets.all(6),
                                  child: Center(
                                      child: Text('1.3',
                                          style: TextStyle(fontSize: 12)))),
                            ),
                            TableCell(
                              child: Container(
                                  margin: EdgeInsets.all(6),
                                  child: Center(
                                      child: Text('0.3',
                                          style: TextStyle(fontSize: 12)))),
                            ),
                            TableCell(
                              child: Container(
                                  margin: EdgeInsets.all(6),
                                  child: Center(
                                      child: Text('23',
                                          style: TextStyle(fontSize: 12)))),
                            ),
                          ]),
                          TableRow(children: <Widget>[
                            TableCell(
                                child: Container(
                              margin: EdgeInsets.only(top: 15, bottom: 15),
                              child: Center(
                                  child: Text('1',
                                      style: TextStyle(fontSize: 12))),
                            )),
                            TableCell(
                              child: Container(
                                  margin: EdgeInsets.all(4),
                                  child: Center(
                                      child: Text('33',
                                          style: TextStyle(fontSize: 12)))),
                            ),
                            TableCell(
                              child: Container(
                                  margin: EdgeInsets.all(6),
                                  child: Center(
                                      child: Text('434',
                                          style: TextStyle(fontSize: 12)))),
                            ),
                            TableCell(
                              child: Container(
                                  margin: EdgeInsets.all(6),
                                  child: Center(
                                      child: Text('1.3',
                                          style: TextStyle(fontSize: 12)))),
                            ),
                            TableCell(
                              child: Container(
                                  margin: EdgeInsets.all(6),
                                  child: Center(
                                      child: Text('0.3',
                                          style: TextStyle(fontSize: 12)))),
                            ),
                            TableCell(
                              child: Container(
                                  margin: EdgeInsets.all(6),
                                  child: Center(
                                      child: Text('23',
                                          style: TextStyle(fontSize: 12)))),
                            ),
                          ]),
                          TableRow(children: <Widget>[
                            TableCell(
                                child: Container(
                              margin: EdgeInsets.only(top: 15, bottom: 15),
                              child: Center(
                                  child: Text('1',
                                      style: TextStyle(fontSize: 12))),
                            )),
                            TableCell(
                              child: Container(
                                  margin: EdgeInsets.all(4),
                                  child: Center(
                                      child: Text('33',
                                          style: TextStyle(fontSize: 12)))),
                            ),
                            TableCell(
                              child: Container(
                                  margin: EdgeInsets.all(6),
                                  child: Center(
                                      child: Text('434',
                                          style: TextStyle(fontSize: 12)))),
                            ),
                            TableCell(
                              child: Container(
                                  margin: EdgeInsets.all(6),
                                  child: Center(
                                      child: Text('1.3',
                                          style: TextStyle(fontSize: 12)))),
                            ),
                            TableCell(
                              child: Container(
                                  margin: EdgeInsets.all(6),
                                  child: Center(
                                      child: Text('0.3',
                                          style: TextStyle(fontSize: 12)))),
                            ),
                            TableCell(
                              child: Container(
                                  margin: EdgeInsets.all(6),
                                  child: Center(
                                      child: Text('23',
                                          style: TextStyle(fontSize: 12)))),
                            ),
                          ]),
                          TableRow(children: <Widget>[
                            TableCell(
                                child: Container(
                              margin: EdgeInsets.only(top: 15, bottom: 15),
                              child: Center(
                                  child: Text('1',
                                      style: TextStyle(fontSize: 12))),
                            )),
                            TableCell(
                              child: Container(
                                  margin: EdgeInsets.all(4),
                                  child: Center(
                                      child: Text('33',
                                          style: TextStyle(fontSize: 12)))),
                            ),
                            TableCell(
                              child: Container(
                                  margin: EdgeInsets.all(6),
                                  child: Center(
                                      child: Text('434',
                                          style: TextStyle(fontSize: 12)))),
                            ),
                            TableCell(
                              child: Container(
                                  margin: EdgeInsets.all(6),
                                  child: Center(
                                      child: Text('1.3',
                                          style: TextStyle(fontSize: 12)))),
                            ),
                            TableCell(
                              child: Container(
                                  margin: EdgeInsets.all(6),
                                  child: Center(
                                      child: Text('0.3',
                                          style: TextStyle(fontSize: 12)))),
                            ),
                            TableCell(
                              child: Container(
                                  margin: EdgeInsets.all(6),
                                  child: Center(
                                      child: Text('23',
                                          style: TextStyle(fontSize: 12)))),
                            ),
                          ]),
                          TableRow(children: <Widget>[
                            TableCell(
                                child: Container(
                              margin: EdgeInsets.only(top: 15, bottom: 15),
                              child: Center(
                                  child: Text('1',
                                      style: TextStyle(fontSize: 12))),
                            )),
                            TableCell(
                              child: Container(
                                  margin: EdgeInsets.all(4),
                                  child: Center(
                                      child: Text('33',
                                          style: TextStyle(fontSize: 12)))),
                            ),
                            TableCell(
                              child: Container(
                                  margin: EdgeInsets.all(6),
                                  child: Center(
                                      child: Text('434',
                                          style: TextStyle(fontSize: 12)))),
                            ),
                            TableCell(
                              child: Container(
                                  margin: EdgeInsets.all(6),
                                  child: Center(
                                      child: Text('1.3',
                                          style: TextStyle(fontSize: 12)))),
                            ),
                            TableCell(
                              child: Container(
                                  margin: EdgeInsets.all(6),
                                  child: Center(
                                      child: Text('0.3',
                                          style: TextStyle(fontSize: 12)))),
                            ),
                            TableCell(
                              child: Container(
                                  margin: EdgeInsets.all(6),
                                  child: Center(
                                      child: Text('23',
                                          style: TextStyle(fontSize: 12)))),
                            ),
                          ]),
                          TableRow(children: <Widget>[
                            TableCell(
                                child: Container(
                              margin: EdgeInsets.only(top: 15, bottom: 15),
                              child: Center(
                                  child: Text('1',
                                      style: TextStyle(fontSize: 12))),
                            )),
                            TableCell(
                              child: Container(
                                  margin: EdgeInsets.all(4),
                                  child: Center(
                                      child: Text('33',
                                          style: TextStyle(fontSize: 12)))),
                            ),
                            TableCell(
                              child: Container(
                                  margin: EdgeInsets.all(6),
                                  child: Center(
                                      child: Text('434',
                                          style: TextStyle(fontSize: 12)))),
                            ),
                            TableCell(
                              child: Container(
                                  margin: EdgeInsets.all(6),
                                  child: Center(
                                      child: Text('1.3',
                                          style: TextStyle(fontSize: 12)))),
                            ),
                            TableCell(
                              child: Container(
                                  margin: EdgeInsets.all(6),
                                  child: Center(
                                      child: Text('0.3',
                                          style: TextStyle(fontSize: 12)))),
                            ),
                            TableCell(
                              child: Container(
                                  margin: EdgeInsets.all(6),
                                  child: Center(
                                      child: Text('23',
                                          style: TextStyle(fontSize: 12)))),
                            ),
                          ]),
                          TableRow(children: <Widget>[
                            TableCell(
                                child: Container(
                              margin: EdgeInsets.only(top: 15, bottom: 15),
                              child: Center(
                                  child: Text('1',
                                      style: TextStyle(fontSize: 12))),
                            )),
                            TableCell(
                              child: Container(
                                  margin: EdgeInsets.all(4),
                                  child: Center(
                                      child: Text('33',
                                          style: TextStyle(fontSize: 12)))),
                            ),
                            TableCell(
                              child: Container(
                                  margin: EdgeInsets.all(6),
                                  child: Center(
                                      child: Text('434',
                                          style: TextStyle(fontSize: 12)))),
                            ),
                            TableCell(
                              child: Container(
                                  margin: EdgeInsets.all(6),
                                  child: Center(
                                      child: Text('1.3',
                                          style: TextStyle(fontSize: 12)))),
                            ),
                            TableCell(
                              child: Container(
                                  margin: EdgeInsets.all(6),
                                  child: Center(
                                      child: Text('0.3',
                                          style: TextStyle(fontSize: 12)))),
                            ),
                            TableCell(
                              child: Container(
                                  margin: EdgeInsets.all(6),
                                  child: Center(
                                      child: Text('23',
                                          style: TextStyle(fontSize: 12)))),
                            ),
                          ]),
                          TableRow(children: <Widget>[
                            TableCell(
                                child: Container(
                              margin: EdgeInsets.only(top: 15, bottom: 15),
                              child: Center(
                                  child: Text('1',
                                      style: TextStyle(fontSize: 12))),
                            )),
                            TableCell(
                              child: Container(
                                  margin: EdgeInsets.all(4),
                                  child: Center(
                                      child: Text('33',
                                          style: TextStyle(fontSize: 12)))),
                            ),
                            TableCell(
                              child: Container(
                                  margin: EdgeInsets.all(6),
                                  child: Center(
                                      child: Text('434',
                                          style: TextStyle(fontSize: 12)))),
                            ),
                            TableCell(
                              child: Container(
                                  margin: EdgeInsets.all(6),
                                  child: Center(
                                      child: Text('1.3',
                                          style: TextStyle(fontSize: 12)))),
                            ),
                            TableCell(
                              child: Container(
                                  margin: EdgeInsets.all(6),
                                  child: Center(
                                      child: Text('0.3',
                                          style: TextStyle(fontSize: 12)))),
                            ),
                            TableCell(
                              child: Container(
                                  margin: EdgeInsets.all(6),
                                  child: Center(
                                      child: Text('23',
                                          style: TextStyle(fontSize: 12)))),
                            ),
                          ]),
                          TableRow(children: <Widget>[
                            TableCell(
                                child: Container(
                              margin: EdgeInsets.only(top: 15, bottom: 15),
                              child: Center(
                                  child: Text('1',
                                      style: TextStyle(fontSize: 12))),
                            )),
                            TableCell(
                              child: Container(
                                  margin: EdgeInsets.all(4),
                                  child: Center(
                                      child: Text('33',
                                          style: TextStyle(fontSize: 12)))),
                            ),
                            TableCell(
                              child: Container(
                                  margin: EdgeInsets.all(6),
                                  child: Center(
                                      child: Text('434',
                                          style: TextStyle(fontSize: 12)))),
                            ),
                            TableCell(
                              child: Container(
                                  margin: EdgeInsets.all(6),
                                  child: Center(
                                      child: Text('1.3',
                                          style: TextStyle(fontSize: 12)))),
                            ),
                            TableCell(
                              child: Container(
                                  margin: EdgeInsets.all(6),
                                  child: Center(
                                      child: Text('0.3',
                                          style: TextStyle(fontSize: 12)))),
                            ),
                            TableCell(
                              child: Container(
                                  margin: EdgeInsets.all(6),
                                  child: Center(
                                      child: Text('23',
                                          style: TextStyle(fontSize: 12)))),
                            ),
                          ]),
                          TableRow(children: <Widget>[
                            TableCell(
                                child: Container(
                              margin: EdgeInsets.only(top: 15, bottom: 15),
                              child: Center(
                                  child: Text('1',
                                      style: TextStyle(fontSize: 12))),
                            )),
                            TableCell(
                              child: Container(
                                  margin: EdgeInsets.all(4),
                                  child: Center(
                                      child: Text('33',
                                          style: TextStyle(fontSize: 12)))),
                            ),
                            TableCell(
                              child: Container(
                                  margin: EdgeInsets.all(6),
                                  child: Center(
                                      child: Text('434',
                                          style: TextStyle(fontSize: 12)))),
                            ),
                            TableCell(
                              child: Container(
                                  margin: EdgeInsets.all(6),
                                  child: Center(
                                      child: Text('1.3',
                                          style: TextStyle(fontSize: 12)))),
                            ),
                            TableCell(
                              child: Container(
                                  margin: EdgeInsets.all(6),
                                  child: Center(
                                      child: Text('0.3',
                                          style: TextStyle(fontSize: 12)))),
                            ),
                            TableCell(
                              child: Container(
                                  margin: EdgeInsets.all(6),
                                  child: Center(
                                      child: Text('23',
                                          style: TextStyle(fontSize: 12)))),
                            ),
                          ]),
                          TableRow(children: <Widget>[
                            TableCell(
                                child: Container(
                              margin: EdgeInsets.only(top: 15, bottom: 15),
                              child: Center(
                                  child: Text('1',
                                      style: TextStyle(fontSize: 12))),
                            )),
                            TableCell(
                              child: Container(
                                  margin: EdgeInsets.all(4),
                                  child: Center(
                                      child: Text('33',
                                          style: TextStyle(fontSize: 12)))),
                            ),
                            TableCell(
                              child: Container(
                                  margin: EdgeInsets.all(6),
                                  child: Center(
                                      child: Text('434',
                                          style: TextStyle(fontSize: 12)))),
                            ),
                            TableCell(
                              child: Container(
                                  margin: EdgeInsets.all(6),
                                  child: Center(
                                      child: Text('1.3',
                                          style: TextStyle(fontSize: 12)))),
                            ),
                            TableCell(
                              child: Container(
                                  margin: EdgeInsets.all(6),
                                  child: Center(
                                      child: Text('0.3',
                                          style: TextStyle(fontSize: 12)))),
                            ),
                            TableCell(
                              child: Container(
                                  margin: EdgeInsets.all(6),
                                  child: Center(
                                      child: Text('23',
                                          style: TextStyle(fontSize: 12)))),
                            ),
                          ]),
                          TableRow(children: <Widget>[
                            TableCell(
                                child: Container(
                              margin: EdgeInsets.only(top: 15, bottom: 15),
                              child: Center(
                                  child: Text('1',
                                      style: TextStyle(fontSize: 12))),
                            )),
                            TableCell(
                              child: Container(
                                  margin: EdgeInsets.all(4),
                                  child: Center(
                                      child: Text('33',
                                          style: TextStyle(fontSize: 12)))),
                            ),
                            TableCell(
                              child: Container(
                                  margin: EdgeInsets.all(6),
                                  child: Center(
                                      child: Text('434',
                                          style: TextStyle(fontSize: 12)))),
                            ),
                            TableCell(
                              child: Container(
                                  margin: EdgeInsets.all(6),
                                  child: Center(
                                      child: Text('1.3',
                                          style: TextStyle(fontSize: 12)))),
                            ),
                            TableCell(
                              child: Container(
                                  margin: EdgeInsets.all(6),
                                  child: Center(
                                      child: Text('0.3',
                                          style: TextStyle(fontSize: 12)))),
                            ),
                            TableCell(
                              child: Container(
                                  margin: EdgeInsets.all(6),
                                  child: Center(
                                      child: Text('23',
                                          style: TextStyle(fontSize: 12)))),
                            ),
                          ])
                        ],
                      )
                    ],
                  ),
                )
              ])
            ])));
  }
}

/* */

const List<String> list = <String>[
  '  1 minute',
  '  5 minute',
  '  15 minute',
  '  30 minute'
];

class DropdownButtonExample extends StatefulWidget {
  const DropdownButtonExample({Key? key}) : super(key: key);

  @override
  State<DropdownButtonExample> createState() => _DropdownButtonExampleState();
}

class _DropdownButtonExampleState extends State<DropdownButtonExample> {
  String dropdownValue = list.first;

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      icon: const Icon(Icons.arrow_drop_down),
      value: dropdownValue,
      elevation: 3,
      items: list.map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
      onChanged: (String? value) {
        setState(() {
          dropdownValue = value!;
        });
      },
    );
  }
}



/*
Container(
                    padding: EdgeInsets.only(top: 40, bottom: 20, left: 10),
                    child: ListView(children: <Widget>[
                      */