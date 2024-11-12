import 'package:flutter/foundation.dart';

class CounterProvider extends ChangeNotifier {
  int _clickCounter = 0;

  int get clickCounter => _clickCounter;

  void increment() {
    _clickCounter++;
    notifyListeners();
  }

  void decrement() {
    if (_clickCounter > 0) {
      _clickCounter--;
      notifyListeners();
    }
  }

  void reset() {
    _clickCounter = 0;
    notifyListeners();
  }

  void square() {
    _clickCounter = _clickCounter * _clickCounter;
    notifyListeners();
  }
}
