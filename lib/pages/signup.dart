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
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;
    var s = MediaQuery.of(context).size.aspectRatio;
    var formKey = GlobalKey<FormState>();
    return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Color(0xff8bd9c7),
        body: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Container(
                    margin: EdgeInsets.only(top: s * 80, left: s * 10),
                    child: IconButton(
                        iconSize: s * 50,
                        icon: const Icon(
                          Icons.arrow_back_ios,
                        ),
                        onPressed: () {
                          Navigator.pop(context);
                        })),
                Expanded(child: Container())
              ],
            ),
            Row(
              children: <Widget>[
                Expanded(child: Container()),
                Container(
                  height: h / 4,
                  width: h / 4,
                  margin: EdgeInsets.only(top: h / 20),
                  child: Image.asset('images/logo-green.png'),
                ),
                Expanded(child: Container())
              ],
            ),
            Row(
              children: <Widget>[
                Expanded(child: Container()),
                Container(
                    height: h / 2,
                    width: w / 1.5,
                    margin: EdgeInsets.only(
                        top: MediaQuery.of(context).size.aspectRatio),
                    child: Form(
                      key: formKey,
                      child: Column(
                        children: <Widget>[
                          TextFormField(
                            decoration:
                                InputDecoration(labelText: 'Email or Phone'),
                          ),
                          TextFormField(
                            decoration: InputDecoration(labelText: 'Name'),
                          ),
                          TextFormField(
                            decoration: InputDecoration(labelText: 'Password'),
                          ),
                          Container(
                            height: h / 14.5,
                            width: w / 3.5,
                            margin: EdgeInsets.only(top: h / 20),
                            child: RaisedButton(
                              child: Text('Sign Up',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      color: Colors.white, fontSize: s * 40)),
                              color: Color(0xff48BF91),
                              elevation: 10,
                              shape: RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(6.0))),
                              onPressed: () {
                                Route route = MaterialPageRoute(
                                    builder: (context) => DashBoard());
                                Navigator.push(context, route);
                              },
                            ),
                          )
                        ],
                      ),
                    )),
                Expanded(child: Container())
              ],
            )
          ],
        ));
  }
}
