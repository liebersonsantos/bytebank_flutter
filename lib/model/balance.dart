import 'package:flutter/material.dart';

class Balance extends ChangeNotifier{
  double value;

  Balance(this.value);

  void addValue(double value) {
    this.value += value;
    notifyListeners();
  }

  void subtractValue(double value){
    this.value -= value;
    notifyListeners();
  }

  @override
  String toString() {
    return 'R\$ $value';
  }
}
