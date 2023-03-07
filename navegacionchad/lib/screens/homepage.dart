import 'package:flutter/material.dart';
import 'package:navegacionchad/screens/secondpage.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    String nombre = '';
    return Scaffold(
      appBar: AppBar(
        title: const Text('Inicio'),
      ),
      body: Center(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('Inicio'),
              TextButton(
                  onPressed: () async {
                    nombre = 'Jesus';
                    Route ruta = MaterialPageRoute(
                        builder: (__) => SecondPage(nombre: nombre));
                    final data = await Navigator.push(context, ruta);
                    print('$data');
                  },
                  child: const Text('Push'))
            ],
          ),
        ),
      ),
    );
  }
}
