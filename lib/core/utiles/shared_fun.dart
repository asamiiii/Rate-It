import 'package:flutter/material.dart';

class Nav{
  static navigatTo(BuildContext context,String route){
    Navigator.of(context).pushNamed(route);
  }

  static navigatReplac(BuildContext context,String route){
    Navigator.of(context).pushReplacementNamed(route);
  }
}