import 'package:flutter/material.dart';
import 'package:get/get.dart';

class popup extends StatelessWidget {
  const popup({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        title: "popup",
        home: Scaffold(
          backgroundColor: Color(0xff77AAD4),
          body: Center(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  Get.defaultDialog(
                    titlePadding:
                        const EdgeInsets.only(top: 35.0, bottom: 17.0),
                    title: "Log Out",
                    titleStyle: const TextStyle(
                        fontSize: 20.0, fontWeight: FontWeight.bold),
                    middleText: "Are you sure you want to log out?",
                    middleTextStyle: const TextStyle(fontSize: 15.0),
                    backgroundColor: Colors.white,
                    radius: 10.0,
                    contentPadding: const EdgeInsets.only(bottom: 17.0),
                    textCancel: "YES",
                    cancelTextColor: Colors.green,
                    textConfirm: "NO",
                    confirmTextColor: Colors.red,
                    onCancel: () {},
                    onConfirm: () {},
                    buttonColor: Colors.white,
                  );
                },
                child: const Text("mama jitsiiii logout"),
              ),
            ],
          )),
        ));
  }
}

class popup1 extends StatelessWidget {
  const popup1({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        title: "popup",
        home: Scaffold(
          backgroundColor: Color(0xff77AAD4),
          body: Center(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  Get.defaultDialog(
                    titlePadding:
                        const EdgeInsets.only(top: 35.0, bottom: 17.0),
                    title: "Disconnect System",
                    titleStyle: const TextStyle(
                        fontSize: 20.0, fontWeight: FontWeight.bold),
                    middleText: "Are you sure you want to disconnect?",
                    middleTextStyle: const TextStyle(fontSize: 15.0),
                    backgroundColor: Colors.white,
                    radius: 10.0,
                    contentPadding: const EdgeInsets.only(bottom: 17.0),
                    textCancel: "YES",
                    cancelTextColor: Colors.green,
                    textConfirm: "NO",
                    confirmTextColor: Colors.red,
                    onCancel: () {},
                    onConfirm: () {},
                    buttonColor: Colors.white,
                  );
                },
                child: const Text("kirre mama disconnect"),
              ),
            ],
          )),
        ));
  }
}
