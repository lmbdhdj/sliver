import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class DYweb extends StatefulWidget {
  const DYweb({Key? key}) : super(key: key);

  @override
  State<DYweb> createState() => _DYwebState();
}

class _DYwebState extends State<DYweb> {
  final WebViewController _controller = WebViewController();

  @override
  void initState() {
    super.initState();

    _controller
        .loadRequest(Uri.parse("https://m.douyu.com/list/room?type=LOL"));
    _controller.setJavaScriptMode(JavaScriptMode.unrestricted);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("DY")),
      body: SafeArea(
        child: WebViewWidget(
          controller: _controller,
        ),
      ),
    );
  }
}
