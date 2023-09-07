import 'package:flutter/material.dart';

import '../utiles/app_strings.dart';

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
