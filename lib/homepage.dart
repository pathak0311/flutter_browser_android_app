import 'package:flutter/material.dart';
import 'dart:async';
import 'package:flutter/services.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key, required this.title}) : super(key: key);
  final String title;
  static const platform =
      MethodChannel('flutterapp.tutorialspoint.com/browser');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: ElevatedButton(
          child: const Text('Open Browser'),
          onPressed: _openBrowser,
        ),
      ),
    );
  }

  Future<void> _openBrowser() async {
    try {
      final int result = await platform.invokeMethod(
          'openBrowser', <String, String>{'url': "https://flutter.dev"});
    } on PlatformException catch (e) {
      print(e);
    }
  }
}
