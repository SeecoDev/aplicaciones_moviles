import 'package:flutter/material.dart';

class CustomNavigationBar extends StatelessWidget {
  const CustomNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: const [
        BottomNavigationBarItem(
            icon: Icon(Icons.account_balance_rounded), label: 'Balance'),
        BottomNavigationBarItem(
            icon: Icon(Icons.currency_bitcoin_sharp), label: 'Crypto'),
        BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'Settings')
      ],
      elevation: 1,
    );
  }
}
