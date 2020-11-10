import 'package:calculadora/calculadora_change_notifier.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ResultTemporalWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String currentValue =
        Provider.of<CalculadoraChangeNotifier>(context).temporal;

    return Container(
      width: MediaQuery.of(context).size.width * 0.8,
      height: 40,
      decoration: BoxDecoration(border: Border.all(color: Colors.black)),
      child: Text(
        currentValue,
        textAlign: TextAlign.right,
        style: TextStyle(fontSize: 35),
      ),
    );
  }
}
