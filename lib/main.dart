import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rate_it/config/app_theme.dart';
import 'package:rate_it/config/routes.dart';
import 'package:rate_it/core/constants/app_strings/app_strings.dart';
import 'package:rate_it/features/app_begin/presentation/begin_veiw/splash_screen.dart';
import 'core/constants/app_providers.dart';
import 'core/utiles/app_colors.dart';
import 'core/utiles/app_widgets/shared_widgets.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      //? All Providers in Constants Folder /app_providers
      providers: AppProviders.providers, 
      child: MaterialApp(
        title: AppStrings.appName,
        theme: AppTheme.appTheme,
        routes: AppConfig.routes,
        home: const SplashScreen(),
      ),
    );
  }
}

class MainView extends StatelessWidget {
  const MainView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.mainColor,
      appBar:
          AppBar(backgroundColor: AppColors.mainColor, title: const LogoApp()),
      body: const SizedBox(),
    );
  }
}
