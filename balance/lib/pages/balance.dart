import 'dart:math';

import 'package:balance/widgets/balance_wt/back_sheet.dart';
import 'package:flutter/material.dart';

class Balance extends StatefulWidget {
  const Balance({super.key});

  @override
  State<Balance> createState() => _BalanceState();
}

class _BalanceState extends State<Balance> {
  final _scrollController = ScrollController();
  double _desplazamiento = 0;

  void _listener() {
    setState(() {
      _desplazamiento = _scrollController.offset / 100;
    });
  }

  @override
  void dispose() {
    _scrollController.removeListener(_listener);
    _scrollController.dispose();
    super.dispose();
  }

  double get _max => max(90 - _desplazamiento * 90, 0.0);

  @override
  void initState() {
    _max;
    _scrollController.addListener(_listener);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      controller: _scrollController,
      slivers: [
        SliverAppBar(
          expandedHeight: 120,
          elevation: 0,
          flexibleSpace: FlexibleSpaceBar(
              background: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Text(
                '\$ 2500.00 ',
                style: TextStyle(
                    fontSize: 30,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                ' Balance ',
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.white,
                ),
              ),
            ],
          )),
        ),
        SliverList(
            delegate: SliverChildListDelegate([
          Stack(
            children: [
              Container(
                  height: 250,
                  decoration: BoxDecoration(
                      color: Theme.of(context).primaryColorDark,
                      borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(30),
                          topRight: Radius.circular(30))),
                  child: BackSheet()),
              Padding(
                padding: EdgeInsets.only(top: _max),
                child: Container(
                  height: 800,
                  decoration: BoxDecoration(
                      color: Theme.of(context).primaryColorLight,
                      borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(30),
                          topRight: Radius.circular(30))),
                ),
              )
            ],
          )
        ]))
      ],
    );
  }
}
