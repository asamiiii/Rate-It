import 'package:flutter/material.dart';

import '../app_colors.dart';
import '../../constants/app_strings/app_strings.dart';


    Text appText({String? txt,Color? color=AppColors.secondryColor,double? size=15}){
    return Text('$txt',style: TextStyle(
      color: color,
      fontSize: size
    ),);
  }





  class LogoApp extends StatelessWidget {
  const LogoApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          AppStrings.appName,
          style: const TextStyle(color: Colors.white, fontSize: 25),
        ),
        const SizedBox(
          width: 5,
        ),
        const Icon(
          Icons.star_rate,
          color: Colors.yellowAccent,
          size: 30,
        )
      ],
    );
  }
}