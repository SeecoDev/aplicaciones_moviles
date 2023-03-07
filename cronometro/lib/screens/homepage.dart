import 'package:flutter/material.dart';
import 'cronometro.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        child: const Cronometro(),
      ),
    );
  }
}
