import 'package:flutter/material.dart';

import 'constants.dart';

class BackSheet extends StatelessWidget {
  const BackSheet({super.key});

  @override
  Widget build(BuildContext context) {
    _headers(String nombre, cantidad) {
      return Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(
              top: 13,
              bottom: 13,
            ),
            child: Text(
              nombre,
              style: const TextStyle(
                  fontSize: 20, color: Colors.grey, letterSpacing: 1.2),
            ),
          ),
          Text(
            cantidad,
            style: const TextStyle(
                fontSize: 20,
                color: Colors.white,
                letterSpacing: 1.5,
                fontWeight: FontWeight.bold),
          )
        ],
      );
    }

    return Container(
      height: 250,
      decoration:
          Constants.sheetBoxDecoration(Theme.of(context).primaryColorDark),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          _headers('Ingresos', '\$ 1,500.00'),
          const VerticalDivider(
            thickness: 1,
            indent: 13,
            endIndent: 13,
          ),
          _headers('Gastos', '\$1,500.00')
        ],
      ),
    );
  }
}
