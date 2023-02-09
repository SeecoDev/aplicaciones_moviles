import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 128, 60, 35),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const CircleAvatar(
              radius: 150,
              backgroundImage: AssetImage('assets/images/adrian.jpeg'),
            ),
            const SizedBox(height: 10),
            const Text('Adrian Alberto Flores Mena',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 24,
                    fontFamily: 'Roboto Mono',
                    color: Colors.orange)),
            const Text('Flutter Dev',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 12,
                    fontFamily: 'Roboto Mono',
                    color: Colors.orange)),
            const Divider(
              thickness: 1,
              color: Colors.amber,
              endIndent: 35,
              indent: 35,
            ),
            Card(
              color: Colors.brown[800],
              child: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Icon(
                    Icons.call,
                    color: Colors.orange,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text('+526462599258',
                      style: TextStyle(
                          fontSize: 14,
                          fontFamily: 'Roboto Mono',
                          color: Colors.amber))
                ],
              ),
            ),
            Card(
              color: Colors.brown[800],
              child: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Icon(
                    Icons.card_travel,
                    color: Colors.orange,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text('https://github.com/SeecoDev',
                      style: TextStyle(
                          fontSize: 14,
                          fontFamily: 'Roboto Mono',
                          color: Colors.amber))
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
