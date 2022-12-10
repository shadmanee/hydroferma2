import 'package:flutter/material.dart';

class PhTable extends StatefulWidget {
  const PhTable({Key? key}) : super(key: key);

  @override
  State<PhTable> createState() => _PhTableState();
}

class _PhTableState extends State<PhTable> {
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
                    child: Text('Connect System',
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
                      EdgeInsets.only(top: 40, bottom: 20, left: 10, right: 10),
                  child: ListView(children: <Widget>[
                    Container(
                        child: Row(children: <Widget>[
                      IconButton(
                          icon: Icon(Icons.arrow_back_ios),
                          onPressed: () {
                            Navigator.pop(context);
                          }),
                      Container(
                        width: MediaQuery.of(context).size.width -
                            (2 * MediaQuery.of(context).size.width / 33),
                        child: Text(
                          'pH Meter',
                          style: TextStyle(fontSize: 20),
                          softWrap: false,
                          maxLines: 1,
                          overflow: TextOverflow.fade, // new
                        ),
                      )
                    ])),
                    Container(
                        child: Row(children: <Widget>[
                      Center(
                          child: Text(
                        '   Scan Frequency: ',
                        style: TextStyle(fontSize: 14),
                      )),
                      DropdownButtonExample(),
                    ])),
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
                              margin: EdgeInsets.only(top: 15, bottom: 15),
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
                              margin: EdgeInsets.only(top: 15, bottom: 15),
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
                              margin: EdgeInsets.only(top: 15, bottom: 15),
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
                              margin: EdgeInsets.only(top: 15, bottom: 15),
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
                              margin: EdgeInsets.only(top: 15, bottom: 15),
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
                              margin: EdgeInsets.only(top: 15, bottom: 15),
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
                                child:
                                    Text('1', style: TextStyle(fontSize: 12))),
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
                                child:
                                    Text('1', style: TextStyle(fontSize: 12))),
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
                                child:
                                    Text('1', style: TextStyle(fontSize: 12))),
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
                                child:
                                    Text('1', style: TextStyle(fontSize: 12))),
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
                                child:
                                    Text('1', style: TextStyle(fontSize: 12))),
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
                                child:
                                    Text('1', style: TextStyle(fontSize: 12))),
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
                                child:
                                    Text('1', style: TextStyle(fontSize: 12))),
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
                                child:
                                    Text('1', style: TextStyle(fontSize: 12))),
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
                                child:
                                    Text('1', style: TextStyle(fontSize: 12))),
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
                                child:
                                    Text('1', style: TextStyle(fontSize: 12))),
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
                                child:
                                    Text('1', style: TextStyle(fontSize: 12))),
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
                                child:
                                    Text('1', style: TextStyle(fontSize: 12))),
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
                                child:
                                    Text('1', style: TextStyle(fontSize: 12))),
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
                                child:
                                    Text('1', style: TextStyle(fontSize: 12))),
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
                                child:
                                    Text('1', style: TextStyle(fontSize: 12))),
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
                                child:
                                    Text('1', style: TextStyle(fontSize: 12))),
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
                  ]))
            ])));
  }
}

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
