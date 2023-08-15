import 'package:flutter/material.dart';
import 'package:rate_it/view/screens/login_screen.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 2), () {
      Navigator.of(context).pushReplacement(MaterialPageRoute(
        builder: (_) => const LoginScreen(),
      ));
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        child: Image.asset(
          'assets/images/splash.png',
        ));
  }
}
