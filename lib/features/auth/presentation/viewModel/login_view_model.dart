import 'package:flutter/material.dart';

class LoginViewModel extends ChangeNotifier {
  bool showPassword = true;
  bool showPasswordForReg = true;
  bool showConfPasswordForReg = true;


  void showOrHidePass(){
    showPassword = showPassword == true ? false :true;
    notifyListeners();
  }

  void showOrHidePassForReg(){
    showPasswordForReg = showPasswordForReg == true ? false :true;
    notifyListeners();
  }

  void showOrHideConfPassReg(){
    showConfPasswordForReg = showConfPasswordForReg == true ? false :true;
    notifyListeners();
  }
}