import 'package:flutter/material.dart';
import 'package:magic_8ball/magic_ball.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('La Gran Bola Ocho'),
          backgroundColor: Color.fromRGBO(214, 81, 8, 55),
        ),
        body: OchoBola());
  }
}
