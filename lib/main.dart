import 'package:flutter/material.dart';
import 'package:flutter_browser_android_app/homepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Android Flutter',
      theme: ThemeData(
        primarySwatch: Colors.blue
      ),
      home: const HomePage(title: 'Android Demo'),
    );
  }
}
