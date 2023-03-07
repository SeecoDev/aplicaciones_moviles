import 'package:flutter/material.dart';

class PantallaFinal extends StatelessWidget {
  const PantallaFinal({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: const [
        Padding(
          padding: EdgeInsets.all(8.0),
          child: Center(
            child: Text(
              'Felicidades has terminado el Quiz',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
      ],
    ));
  }
}
