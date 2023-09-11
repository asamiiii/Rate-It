
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class HSpace extends StatelessWidget {
  double? width;
   HSpace({Key? key,required this.width}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
    );
  }
}

// ignore: must_be_immutable
class VSpace extends StatelessWidget {
  double? height;
   VSpace({Key? key,required this.height}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
    );
  }
}