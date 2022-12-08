import 'package:flutter/material.dart';
import 'package:hydroferma2/pages/dashboard.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    var formKey = GlobalKey<FormState>();
    return Scaffold(
        backgroundColor: Color(0xff8bd9c7),
        body: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Container(
                    margin: EdgeInsets.only(top: 20, left: 3),
                    child: IconButton(
                        iconSize: 20,
                        icon: const Icon(
                          Icons.arrow_back_ios,
                        ),
                        onPressed: () {
                          Navigator.pop(context);
                        })),
                Expanded(
                  child: Container(),
                )
              ],
            ),
            Row(
              children: <Widget>[
                Expanded(
                    child: Container(
                        height: 100, margin: EdgeInsets.only(top: 20))),
                Container(
                  height: 100,
                  width: 100,
                  margin: EdgeInsets.only(top: 20),
                  child: Image.asset('images/logo-green.png'),
                ),
                Expanded(
                    child: Container(
                        height: 100, margin: EdgeInsets.only(top: 20)))
              ],
            ),
            Row(
              children: <Widget>[
                Expanded(
                    child: Container(
                        height: 100,
                        margin: EdgeInsets.only(bottom: 50, top: 5))),
                Container(
                    height: 300,
                    width: 250,
                    margin: EdgeInsets.only(bottom: 45, top: 5),
                    child: ListView(
                      children: <Widget>[
                        Form(
                          key: formKey,
                          child: Column(
                            children: <Widget>[
                              Container(
                                child: TextFormField(
                                  decoration: InputDecoration(
                                      labelText: 'Email or Phone'),
                                  validator: (value) {
                                    // if(value.length==0) return ('Email or Phone');
                                  },
                                ),
                              ),
                              TextFormField(
                                decoration: InputDecoration(labelText: 'Name'),
                                validator: (value) {},
                              ),
                              TextFormField(
                                decoration:
                                    InputDecoration(labelText: 'Password'),
                              ),
                              Container(
                                height: 40,
                                width: 120,
                                margin: EdgeInsets.only(top: 10),
                                child: RaisedButton(
                                  child: Text('Sign Up',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 20)),
                                  color: Color(0xff48BF91),
                                  elevation: 10,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(6.0))),
                                  onPressed: () {
                                    Route route = MaterialPageRoute(
                                        builder: (context) => DashBoard());
                                    Navigator.push(context, route);
                                  },
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
                        margin: EdgeInsets.only(bottom: 50, top: 5)))
              ],
            ),
            Row(),
            Row(),
            Row()
          ],
        ));
  }
}
