import 'package:flutter/material.dart';
import 'package:rate_it/core/constants/app_strings/app_routes_values.dart';

import '../../../../core/constants/app_images.dart';
import '../../../../core/utiles/shared_fun.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 2), () {
      Nav.navigatReplac(context, NameRoutes.login);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        child: Image.asset(
          AppImages.splash,
        ));
  }
}
