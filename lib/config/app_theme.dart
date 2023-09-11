import 'package:flutter/material.dart';

import '../core/utiles/app_colors.dart';

class AppTheme{
  static ThemeData appTheme=ThemeData(
          useMaterial3: true,
          // primaryColor: AppColors.mainColor,
          colorScheme: ColorScheme.fromSeed(seedColor: AppColors.mainColor)
              .copyWith(background: AppColors.mainColor),
          appBarTheme: const AppBarTheme(
              backgroundColor: AppColors.mainColor,
              iconTheme: IconThemeData(color: AppColors.secondryColor)),
        );
}