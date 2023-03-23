import 'package:balance/widgets/balance_wt/add_expenses_wt/num_bt.dart';
import 'package:flutter/material.dart';
import 'package:balance/widgets/balance_wt/constants.dart';

class AddExpenses extends StatelessWidget {
  const AddExpenses({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add Expenses'),
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(2.0),
        child: Column(
          children: [
            const NumKeyboard(),
            Expanded(
              child: Container(
                width: double.infinity,
                decoration: Constants.sheetBoxDecoration(
                    Theme.of(context).primaryColorDark),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text('Adentro del container'),
                    Text('Seleccionar la categoria'),
                    Text('Agregar Comentario'),
                    Expanded(child: Center(child: Text('Boton Chido')))
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
