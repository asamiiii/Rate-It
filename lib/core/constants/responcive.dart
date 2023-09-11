import 'package:flutter/material.dart';

class AppResponcive{
  static addWidth(BuildContext context,double percentage){
    MediaQuery.of(context).size.width * percentage;
  }

  static double aWidth(BuildContext context,double percentage){
    return MediaQuery.of(context).size.width * percentage;
  }

  static double aHight(BuildContext context,double percentage){
    return MediaQuery.of(context).size.height * percentage;
  }
}