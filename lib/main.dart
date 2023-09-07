import 'package:flutter/material.dart';
import 'package:rate_it/splash_screen.dart';

import 'core/utiles/app_colors.dart';
import 'core/constants/constants_widgets.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor:AppColors.mainColor),
        useMaterial3: true,
      ),
      home: const SplashScreen(),
    );
  }
}

class MainView extends StatelessWidget {
  const MainView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.mainColor,
      appBar: AppBar(
        backgroundColor: AppColors.mainColor,
        title:  const LogoApp()
      ),
      body: const SizedBox(),
    );
  }
}
