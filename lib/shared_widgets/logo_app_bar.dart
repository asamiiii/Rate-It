import 'package:flutter/material.dart';

class LogoApp extends StatelessWidget {
  const LogoApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Rate It',
          style: TextStyle(color: Colors.white, fontSize: 25),
        ),
        SizedBox(
          width: 5,
        ),
        Icon(
          Icons.star_rate,
          color: Colors.yellowAccent,
          size: 30,
        )
      ],
    );
  }
}
