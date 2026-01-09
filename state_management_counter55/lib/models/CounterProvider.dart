import 'package:flutter/material.dart';

class CounterProvider extends ChangeNotifier {
  int count = 0;

  void Increement() {
    count++;
    notifyListeners();
  }

  void Decreement() {
    if (count > 0) {
      count--;
      notifyListeners();
    }

    // int getValue() => _count;
  }
}
