import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:balance/pages/add_entries.dart';
import 'package:balance/pages/add_expenses.dart';
import 'package:balance/widgets/transition.dart';

class CustomFAB extends StatelessWidget {
  const CustomFAB({super.key});

  @override
  Widget build(BuildContext context) {
    List<SpeedDialChild> botones = [];

    botones.add(SpeedDialChild(
        backgroundColor: Colors.redAccent,
        child: const Icon(Icons.remove),
        label: 'Gasto',
        onTap: () {
          Navigator.push(context, Transiciones.transition(const AddExpenses()));
        }));

    botones.add(SpeedDialChild(
        backgroundColor: Colors.greenAccent,
        child: const Icon(Icons.add),
        label: 'Ingreso',
        onTap: () {
          Navigator.push(context, Transiciones.transition(const AddEntries()));
        }));

    return SpeedDial(
      foregroundColor: Theme.of(context).disabledColor,
      backgroundColor: Theme.of(context).focusColor,
      childMargin: const EdgeInsets.symmetric(horizontal: 8),
      childrenButtonSize: const Size(65, 65),
      icon: Icons.add,
      activeIcon: Icons.close,
      children: botones,
    );
  }
}
