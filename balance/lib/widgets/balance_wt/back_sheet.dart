import 'package:flutter/material.dart';

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
              style: TextStyle(
                  fontSize: 20,
                  color: Theme.of(context).cardColor,
                  letterSpacing: 1.2),
            ),
          ),
          Text(
            cantidad,
            style: TextStyle(
                fontSize: 20,
                color: Theme.of(context).cardColor,
                letterSpacing: 1.5,
                fontWeight: FontWeight.bold),
          )
        ],
      );
    }

    return Row(
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
    );
  }
}
