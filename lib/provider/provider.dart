import 'package:flutter/foundation.dart';

class ProviderFiles with ChangeNotifier {
  int _count = 0;
  int get count => _count;
  void setIncCount() {
    _count++;
    notifyListeners();
  }
  void setDecCount(){
    _count--;
    notifyListeners();
  }
}
