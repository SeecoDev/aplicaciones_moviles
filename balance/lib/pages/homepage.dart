import 'package:balance/pages/balance.dart';
import 'package:balance/pages/crypto.dart';
import 'package:balance/pages/settings.dart';
import 'package:balance/widgets/home_page_wt/custom_navigationbar.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../provider/ui_provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: _HomePage(),
      bottomNavigationBar: CustomNavigationBar(),
    );
  }
}

class _HomePage extends StatelessWidget {
  const _HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final uiProvider = Provider.of<UIProvider>(context);
    final currentIndex = uiProvider.bnbIndex;

    switch (currentIndex) {
      case 0:
        return const Balance();
      case 1:
        return const CryptoPage();
      case 3:
        return const SettingsPage();

      default:
        return const Balance();
    }
  }
}
