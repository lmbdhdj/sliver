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
          height: Get.height * 0.9,
          width: Get.width,
          color: HexColor("#F2F2F2"),
          child:
              Center(child: TextButton(onPressed: () {}, child: Text("计算器"))),
        )
      ]),
      floatingActionButton: FloatingActionButton(
        onPressed: _floatAction,
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
