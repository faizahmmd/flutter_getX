import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'get_controller.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    final Controller c = Get.put(Controller());
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
          child: Column(
        children: [
          SizedBox(
            height: 150,
          ),
          Obx(() => Text("${c.name}")),
          SizedBox(
            height: 50,
          ),
          GestureDetector(
            onTap: () async {
              c.getFirstName();
              await Future.delayed(Duration.zero);
            },
            child: Container(
              color: Colors.greenAccent,
              width: 200,
              height: 50,
              child: Center(
                child: Text("Show First Name"),
              ),
            ),
          ),
          SizedBox(
            height: 50,
          ),
          GestureDetector(
            onTap: () async {
              c.getLastName();
              await Future.delayed(Duration.zero);
            },
            child: Container(
              color: Colors.greenAccent,
              width: 200,
              height: 50,
              child: Center(
                child: Text("Show Last Name"),
              ),
            ),
          ),
        ],
      )),
    );
  }
}
