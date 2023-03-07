import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  final String nombre;

  const SecondPage({super.key, required this.nombre});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            if (Navigator.canPop(context)) {
              Navigator.pop(context, true);
            }
          },
        ),
      ),
      body: Center(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [Text('$nombre')],
          ),
        ),
      ),
    );
  }
}
