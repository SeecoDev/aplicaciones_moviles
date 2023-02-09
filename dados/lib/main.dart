import 'package:flutter/material.dart';
import 'package:dados/dice.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dado perron',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Dice(),
    );
  }
}
