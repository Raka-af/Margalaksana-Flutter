import 'package:flutter/material.dart';
import 'package:testt/screens/home_screen.dart';

void main() {
  runApp(new Home());
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
