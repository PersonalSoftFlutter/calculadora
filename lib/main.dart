import 'package:calculadora/calculadora_change_notifier.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'calculadora_app.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  CalculadoraChangeNotifier _changeNotifier = CalculadoraChangeNotifier();
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<CalculadoraChangeNotifier>(
      create: (_) => _changeNotifier,
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: CalculadoraApp(),
      ),
    );
  }
}
