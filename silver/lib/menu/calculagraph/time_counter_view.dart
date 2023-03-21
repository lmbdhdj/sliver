import 'package:bot_toast/bot_toast.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:stop_watch_timer/stop_watch_timer.dart';

class TimeCounterView extends StatefulWidget {
  const TimeCounterView({Key? key}) : super(key: key);

  @override
  State<TimeCounterView> createState() => _TimeCounterViewState();
}

class _TimeCounterViewState extends State<TimeCounterView> {
  final StopWatchTimer _stopWatchTimer =
      StopWatchTimer(mode: StopWatchMode.countUp);

  final StopWatchTimer _countUpTimer =
      StopWatchTimer(mode: StopWatchMode.countDown);

  final GetStorage storageBox = GetStorage();

  String name = Get.parameters["name"]!;

  @override
  void initState() {
    super.initState();
    _stopWatchTimer.onStartTimer();
    var path = storageBox.read("path");
    if (path != null) {
      BotToast.showText(text: "$path");
    } else {
      storageBox.write("path", "一个路径");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(name)),
      body: Center(
          child: Column(
              //crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
            StreamBuilder<int>(
                stream: _stopWatchTimer.rawTime,
                builder: (context, snap) {
                  return Text("${snap.data}",
                      style: const TextStyle(fontSize: 40));
                }),
            InkWell(
                onTap: () {
                  if (_stopWatchTimer.isRunning) {
                    _stopWatchTimer.onStopTimer();
                  } else {
                    _stopWatchTimer.onStartTimer();
                  }
                },
                child: const Icon(Icons.start_outlined, size: 50))
          ])),
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            Get.back();
          },
          child: const Icon(Icons.exit_to_app)),
    );
  }

  @override
  void dispose() {
    super.dispose();
    _stopWatchTimer.dispose();
    _countUpTimer.dispose();
  }
}
