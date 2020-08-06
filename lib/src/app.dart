import 'package:flutter/material.dart';
import 'package:taleemLo/src/screen/home_screen.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'TaleemLo',
      home: HomeScreen(),
    );
  }
}