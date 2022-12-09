import 'package:flutter/material.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

var h, w, s;

class SlidingPanel extends StatefulWidget {
  const SlidingPanel({Key? key}) : super(key: key);

  @override
  State<SlidingPanel> createState() => _SlidingPanelState();
}

class _SlidingPanelState extends State<SlidingPanel> {
  PanelController _pc = new PanelController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("SlidingUpPanelExample"),
      ),
      body: SlidingUpPanel(
        controller: _pc,
        panel: Center(
          child: Text("This is the sliding Widget"),
        ),
        body: _body(),
      ),
    );
  }

  Widget _body() {
    return Container(
      child: Column(
        children: <Widget>[
          RaisedButton(
            child: Text("Open"),
            onPressed: () => _pc.open(),
          ),
          RaisedButton(
            child: Text("Close"),
            onPressed: () => _pc.close(),
          ),
          RaisedButton(
            child: Text("Show"),
            onPressed: () => _pc.show(),
          ),
          RaisedButton(
            child: Text("Hide"),
            onPressed: () => _pc.hide(),
          ),
        ],
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
