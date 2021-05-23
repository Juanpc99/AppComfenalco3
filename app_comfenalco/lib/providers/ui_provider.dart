import 'package:flutter/foundation.dart';

class UiProvider extends ChangeNotifier {
  int _index = 0;

  int get selectIndexOpt {
    return this._index;
  }

  set selectedIdex(int i) {
    this._index = i;
    notifyListeners();
  }
}
