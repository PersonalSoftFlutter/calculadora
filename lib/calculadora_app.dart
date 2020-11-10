import 'package:calculadora/result_temporal_widget.dart';
import 'package:calculadora/result_widget.dart';
import 'package:flutter/material.dart';

import 'calculadora_grilla.dart';

class CalculadoraApp extends StatelessWidget {
  String currentValue = '0';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Calculadora"),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 10),
            ResultTemporalWidget(),
            SizedBox(height: 10),
            ResultWidget(),
            SizedBox(height: 10),
            CalculadoraGrilla(),
          ],
        ),
      ),
    );
  }
}
