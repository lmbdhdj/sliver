import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:silver/utils/hex_util.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  _floatAction() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("主页面"),
      ),
      body: Column(children: [
        Container(
          height: Get.height * 0.8,
          width: Get.width,
          color: HexColor("#F2F2F2"),
          child: Center(
              child: Wrap(spacing: 30, runSpacing: 50, children: [
            TextButton(
                onPressed: () {
                  Get.toNamed("/timeCounter", parameters: {"name": "cow"});
                },
                child: const Text("计时器")),
            TextButton(
                onPressed: () {
                  Get.toNamed("/douyu", parameters: {"name": "cow"});
                },
                child: const Text("DY"))
          ])),
        )
      ]),
      floatingActionButton: FloatingActionButton(
        onPressed: _floatAction,
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
