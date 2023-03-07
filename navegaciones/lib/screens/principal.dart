import 'package:flutter/material.dart';
import '../home_page.dart';

class Principal extends StatelessWidget {
  const Principal({super.key});

  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          color: const Color.fromARGB(228, 3, 59, 102),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Image.asset('assets/images/lolIcons.png'),
                ElevatedButton(
                  onPressed: () {
                    final ruta = MaterialPageRoute(
                      builder: (_) => const HomePage(),
                    );
                    Navigator.push(context, ruta);
                  },
                  child: const Text(
                    'Entrar',
                    style: TextStyle(fontSize: 24, color: Colors.amber),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
