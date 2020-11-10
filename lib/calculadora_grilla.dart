import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'calculadora_change_notifier.dart';

class CalculadoraGrilla extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        shrinkWrap: true,
        itemCount: 16,
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4),
        itemBuilder: (context, pos) {
          String value = getElementAt(pos);

          return RaisedButton(
            onPressed: () {
              Provider.of<CalculadoraChangeNotifier>(context, listen: false)
                  .addNumber(value);
            },
            child: Text(value),
          );
        });
  }

  String getElementAt(int pos) {
    switch (pos) {
      case 0:
        return "9";
        break;
      case 1:
        return "8";
        break;
      case 2:
        return "7";
        break;
      case 3:
        return "+";
        break;
      case 0:
        return "6";
        break;
      case 4:
        return "6";
        break;
      case 5:
        return "5";
        break;
      case 6:
        return "4";
        break;
      case 7:
        return "-";
        break;
      case 8:
        return "3";
        break;
      case 9:
        return "2";
        break;
      case 10:
        return "1";
        break;
      case 11:
        return "*";
        break;
      case 12:
        return "0";
        break;
      case 13:
        return "=";
        break;
      case 14:
        return "C";
        break;
      case 15:
        return "/";
        break;
      default:
        return "";
    }
  }
}
