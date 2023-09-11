import 'package:flutter/material.dart';

class LoginViewModel extends ChangeNotifier {
  bool showPassword = true;
  TextEditingController userNameController =  TextEditingController();
  TextEditingController passController =  TextEditingController();


  void showHidePass(){
    showPassword = showPassword == true ? false :true;
    notifyListeners();
  }


}