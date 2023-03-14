import 'package:balance/pages/balance.dart';
import 'package:balance/pages/crypto.dart';
import 'package:balance/widgets/home_page_wt/custom_navigationbar.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body:  _HomePage(),
      bottomNavigationBar: CustomNavigationBar(),
    );
  }
}

class _HomePage extends StatelessWidget {
  const _HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final currentIndex = 0;
    switch (currentIndex) {
      case 0:
        return const Balance();
      case 1:
        return const CryptoPage();
      default:
        return const Balance();
    }
  }
}
