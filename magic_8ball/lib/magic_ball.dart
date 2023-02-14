import 'dart:math';

import 'package:flutter/material.dart';

class OchoBola extends StatefulWidget {
  const OchoBola({super.key});

  @override
  _BolaOcho createState() => _BolaOcho();
}

class _BolaOcho extends State<OchoBola> {
  int numeroRandom = Random().nextInt(5) + 1;

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Color.fromRGBO(89, 31, 10, 1),
        child: Padding(
          padding: const EdgeInsets.all(5.0),
          child: TextButton(
            onPressed: () {
              setState(() {
                numeroRandom = Random().nextInt(5) + 1;
              });
            },
            child: Image.asset('assets/images/$numeroRandom.png'),
          ),
        ));
  }
}
