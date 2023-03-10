import 'package:flutter/material.dart';
import 'package:magic_8ball/homepage.dart';
import 'magic_ball.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Magic 8 Ball',
      home: HomePage(),
    );
  }
}
