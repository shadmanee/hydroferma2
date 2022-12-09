import 'package:flutter/material.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

var h, w, s;

class SlidingPanel extends StatefulWidget {
  const SlidingPanel({Key? key}) : super(key: key);

  @override
  State<SlidingPanel> createState() => _SlidingPanelState();
}

class _SlidingPanelState extends State<SlidingPanel> {
  @override
  Widget build(BuildContext context) {
    h = MediaQuery.of(context).size.height;
    w = MediaQuery.of(context).size.width;
    s = MediaQuery.of(context).size.aspectRatio;
    return Scaffold(
      body: SlidingUpPanel(
        backdropEnabled: true,
        backdropTapClosesPanel: true,
        color: Colors.transparent,
        panel: Container(
          decoration: BoxDecoration(
              color: Colors.grey,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20), topRight: Radius.circular(20))),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              BarIndicator(),
              RaisedButton(
                child: Text('Read More'),
                onPressed: () {
                  print('button pressed');
                },
              )
            ],
          ),
        ),
        body: Container(
            child: Center(
          child: Text('main page'),
        )),
      ),
    );
  }
}

class BarIndicator extends StatefulWidget {
  const BarIndicator({Key? key}) : super(key: key);

  @override
  State<BarIndicator> createState() => _BarIndicatorState();
}

class _BarIndicatorState extends State<BarIndicator> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(20),
      child: Container(
        width: w / 6,
        height: 2,
        decoration: BoxDecoration(
            color: Colors.white60,
            borderRadius: BorderRadius.all(Radius.circular(15))),
      ),
    );
  }
}
