import 'package:flutter/material.dart';
import 'screens/bottons_screens.dart';
import 'screens/animation1_screens.dart';
import 'screens/animation2_screens.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: ButtonScreen());
  }
}
