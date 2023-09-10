import 'package:flutter/material.dart';
import 'package:rate_it/core/utiles/app_colors.dart';

class AppButtons{
  static  Widget roundButton (Function onTap,String txt){
    return ElevatedButton(
                      onPressed: () => onTap,
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Colors.black),
                      ),
                      child:  Text(
                        txt.toString(),
                        style: const TextStyle(color: Colors.white),
                      ),
                    );
  }


}