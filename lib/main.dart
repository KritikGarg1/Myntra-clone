import 'dart:async';

import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  // This widget is the root of your application.
  @override
  _MyAppState createState() => _MyAppState();
  //New State
  //Additional state change here
}

class _MyAppState extends State<MyApp> {
  Completer<WebViewController> _controller = Completer<WebViewController>();
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body:  SafeArea(
          child: WebView(
                      initialUrl: 'https://www.myntra.com/',
                      javascriptMode: JavascriptMode.unrestricted,
          onWebViewCreated: (WebViewController webViewController) {
      _controller.complete(webViewController);},
          ),
        ),
      ),
    );
  }
}
