import 'package:flutter/material.dart';

class Dice extends StatelessWidget {
  const Dice({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amberAccent,
      appBar: AppBar(
        title: const Text(
          'Dado perron',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Padding(
                padding: const EdgeInsets.all(5),
                child: Image.asset('assets/images/dice1.png')),
          ),
          Expanded(
            child: Padding(
                padding: const EdgeInsets.all(5),
                child: Image.asset('assets/images/dice1.png')),
          ),
        ],
      ),
    );
  }
}
