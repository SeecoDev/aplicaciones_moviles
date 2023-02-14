import 'dart:math';

import 'package:flutter/material.dart';

class Dice extends StatefulWidget {
  const Dice({super.key});
  @override
  EleccionDado createState() => EleccionDado();
}

class EleccionDado extends State<Dice> {
  int valorDado = Random().nextInt(6 - 1) + 1;

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
        body: TextButton(
          onPressed: () {

          },
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [dado(), dado()],
          ),
        ));
  }

  Expanded dado() {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(5),
        child: TextButton(
            onPressed: () {
              setState(() {
                valorDado = Random().nextInt(6 - 1) + 1;
              });
            },
            child: Image.asset('assets/images/dice$valorDado.png')),
      ),
    );
  }
}
