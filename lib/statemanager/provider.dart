import 'package:flutter/material.dart';

class Provider1 extends ChangeNotifier {
  int onb = 1;
  onbchange() {
    if (pages == 3) {
      pages = 1;
    } else if (pages != 3) {
      pages = pages + 1;
    }
    print(onb);
    notifyListeners();
  }

  int pages = 1;
  currentpage(int page) {
    pages = page;
    print(pages);
    notifyListeners();
  }

  bool pshow = false;
  pshow1() {
    pshow = !pshow;
    notifyListeners();
    print(pshow);
  }

  String toogle='m';
  fortoggle(String togglenew) {
    toogle = togglenew;
    notifyListeners();
  }
}
