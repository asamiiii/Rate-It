import 'package:flutter/material.dart';

class RegisterVm extends ChangeNotifier{
 
  bool showPasswordForReg = true;
  bool showConfPasswordForReg = true;

    void showHidePass(){
    showPasswordForReg = showPasswordForReg == true ? false :true;
    notifyListeners();
  }

  void showHideConfPass(){
    showConfPasswordForReg = showConfPasswordForReg == true ? false :true;
    notifyListeners();
  }
}