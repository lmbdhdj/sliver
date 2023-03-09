import 'package:flutter/material.dart';

class TimeCounterView extends StatefulWidget {
  const TimeCounterView({Key? key}) : super(key: key);

  @override
  State<TimeCounterView> createState() => _TimeCounterViewState();
}

class _TimeCounterViewState extends State<TimeCounterView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("计时器功能")
      ),

    );
  }
}
