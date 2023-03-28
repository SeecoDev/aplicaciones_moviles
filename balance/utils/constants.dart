import 'package:flutter/material.dart';

class Constants {
  static Widget customIButton(
      IconData icono, Color color, double size, dynamic press) {
    return IconButton(
        onPressed: press, icon: Icon(icono, color: color, size: size));
  }
}
