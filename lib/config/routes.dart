import 'package:flutter/material.dart';
import 'package:rate_it/core/constants/app_strings/app_routes_values.dart';
import 'package:rate_it/features/auth/presentation/view/login_screen.dart';
import 'package:rate_it/features/auth/presentation/view/registration_screen.dart';
import 'package:rate_it/features/app_begin/presentation/begin_veiw/splash_screen.dart';

import '../features/rating/presentation/pages/Home.dart';

class AppConfig{
  static var routes =<String, Widget Function(BuildContext)>  {
    NameRoutes.splash:(_) => const SplashScreen(),
    NameRoutes.login :(_) => const LoginScreen(),
    NameRoutes.registeration :(_) => const Registration(),
    NameRoutes.home :(_) => const Home(),
  };
}