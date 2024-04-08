import 'package:flutter/material.dart';

class CounterProvider extends ChangeNotifier {
  int counterValue;

  CounterProvider({
    this.counterValue = 0


  });

  increment() {
    counterValue++;
    notifyListeners();
  }

  drecremet() {
    counterValue--;
    notifyListeners();
  }


}