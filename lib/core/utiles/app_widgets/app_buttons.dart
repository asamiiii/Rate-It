import 'package:flutter/material.dart';

class AppButtons{
  static  Widget roundButton (Function onTap,String txt){
    return ElevatedButton(
                      onPressed: () {
                        onTap();
                      },
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