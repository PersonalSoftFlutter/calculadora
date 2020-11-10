import 'package:flutter/material.dart';

class CalculadoraChangeNotifier extends ChangeNotifier {
  String _visibleElement = "0";
  String _operation = "";
  String _temporal = "";
  String get result => _visibleElement;
  String get temporal => _temporal;
  void addNumber(String value) {
    if (value == "C") {
      _visibleElement = "0";
      _temporal = "";
      _operation = "";
      notifyListeners();
      return;
    }
    if (int.tryParse(value) != null) {
      if (_visibleElement == "0") {
        _visibleElement = value;
      } else {
        _visibleElement = _visibleElement + value;
      }
      notifyListeners();
      return;
    } else {
      //
      if (_operation != "") {
        if (_operation == "+") {
          _temporal = (int.tryParse(_temporal) + int.tryParse(_visibleElement))
              .toString();
          _operation = value;
          _visibleElement = "0";
        }
        if (_operation == "-") {
          _temporal = (int.tryParse(_temporal) - int.tryParse(_visibleElement))
              .toString();
          _operation = value;
          _visibleElement = "0";
        }
        if (_operation == "*") {
          _temporal = (int.tryParse(_temporal) * int.tryParse(_visibleElement))
              .toString();
          _operation = value;
          _visibleElement = "0";
        }
        if (_operation == "/") {
          _temporal = (int.tryParse(_temporal) / int.tryParse(_visibleElement))
              .toString();
          _operation = value;
          _visibleElement = "0";
        }
        if (value == "=") {
          print("+");
          if (_operation == "+") {
            _temporal =
                (int.tryParse(_temporal) + int.tryParse(_visibleElement))
                    .toString();
          }
          if (_operation == "-") {
            _temporal =
                (int.tryParse(_temporal) - int.tryParse(_visibleElement))
                    .toString();
          }
          if (_operation == "*") {
            _temporal =
                (int.tryParse(_temporal) * int.tryParse(_visibleElement))
                    .toString();
          }
          if (_operation == "/") {
            _temporal =
                (int.tryParse(_temporal) / int.tryParse(_visibleElement))
                    .toString();
          }
          _operation = "";
          _visibleElement = _temporal;
          _temporal = "";
        }
        print(_temporal);
        notifyListeners();
        return;
      } else {
        _operation = value;
        _temporal = _visibleElement;
        _visibleElement = "0";
        notifyListeners();
        return;
      }

      //
    }
  }
}
