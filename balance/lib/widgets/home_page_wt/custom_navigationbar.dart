import 'package:balance/provider/ui_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CustomNavigationBar extends StatelessWidget {
  const CustomNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    final uiProvider = Provider.of<UIProvider>(context);

    return BottomNavigationBar(
      currentIndex: uiProvider.bnbIndex,
      onTap: (int i) => uiProvider.bnbIndex = i,
      items: const [
        BottomNavigationBarItem(
            icon: Icon(Icons.account_balance_rounded), label: 'Balance'),
        BottomNavigationBarItem(
            icon: Icon(Icons.currency_bitcoin_sharp), label: 'Crypto'),
        BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'Settings')
      ],
      elevation: 2,
    );
  }
}
