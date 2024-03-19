import 'package:flutter/material.dart';

class Provider1 extends ChangeNotifier {
  int onb = 1;
  onbchange() {
    if (pages == 4) {
      pages = 1;
    } else if (pages != 4) {
      pages = pages + 1;
    }
    print(onb);
    notifyListeners();
  }

  onbchange2() {
    if (pages == 1) {
      pages = 1;
    } else if (pages != 1) {
      pages = pages - 1;
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

  String toogle = 'm';
  fortoggle(String togglenew) {
    toogle = togglenew;
    notifyListeners();
  }

  var hobby;
  currenthobby(var hobbies) {
    hobby = hobbies;
    notifyListeners();
  }
}
