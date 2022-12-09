import 'package:flutter/material.dart';

class Sliding extends StatefulWidget {
  const Sliding({Key? key}) : super(key: key);

  @override
  State<Sliding> createState() => _SlidingState();
}

class _SlidingState extends State<Sliding> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(child: Container()),
          Container(
            width: MediaQuery.of(context).size.width / 1.2,
            color: Colors.transparent,
            child: Column(
              children: [
                Row(children: [
                  Container(
                    padding: EdgeInsets.only(
                        bottom: MediaQuery.of(context).size.height / 33),
                    child: Text(
                      'Water Supply',
                      style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.w400,
                          color: Colors.grey[600]),
                    ),
                  )
                ]),
                Text(
                  'A hydroponic vertical farm requires at most 5-6 L of water every day, depending on the area of the farm, and the temperature, pressure and humidity of the surroundings.',
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w300,
                      color: Colors.grey[600]),
                ),
                Padding(
                    padding: EdgeInsets.only(
                        top: MediaQuery.of(context).size.height / 40)),
                Text(
                  'Hydroponic systems use less water — as much as 10 times less water — than traditional field crop watering methods.',
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w300,
                      color: Colors.grey[600]),
                ),
                TextButton(
                    onPressed: () {},
                    child: Text(
                      'Read More',
                      style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w600,
                          color: Colors.black),
                    ))
              ],
            ),
          ),
          Expanded(child: Container())
        ],
      ),
    );
  }
}
