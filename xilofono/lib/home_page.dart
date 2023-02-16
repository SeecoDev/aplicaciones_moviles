import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'xilofono.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: const Icon(
            Ionicons.cash,
            size: 45,
          ),
        ),
        body: const Xilofono());
  }
}
