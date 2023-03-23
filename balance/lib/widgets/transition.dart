import 'package:flutter/material.dart';

class Transiciones {
  static PageRouteBuilder<dynamic> transition(Widget pagina) {
    return PageRouteBuilder(
        transitionDuration: const Duration(milliseconds: 450),
        transitionsBuilder: (BuildContext context, Animation<double> animation,
            Animation<double> secAnim, Widget child) {
          animation = CurvedAnimation(parent: animation, curve: Curves.easeIn);
          return ScaleTransition(
            alignment: const Alignment(0.8, 1),
            scale: animation,
            child: child,
          );
        },
        pageBuilder: (BuildContext context, Animation<double> animation,
            Animation<double> secAnim) {
          return pagina;
        });
  }
}
