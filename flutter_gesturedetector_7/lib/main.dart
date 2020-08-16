import 'package:flutter/material.dart';
import './warp_app.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'flutter gesturedetector',
      theme: ThemeData.dark(),
      home: WarpApp(),
    );
  }
}
