import 'package:flutter/material.dart';

class CryptoPage extends StatelessWidget {
  const CryptoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: const [
          Text('Banco Deuz'),
          Text('Balance en Cryptos'),
          Text('0.0056 bitcoin')
        ],
      ),
    );
  }
}
