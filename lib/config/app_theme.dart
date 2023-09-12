import 'package:flutter/material.dart';

import '../core/utiles/app_colors.dart';
//! Default Theme for All App
class AppTheme{
  static ThemeData appTheme=ThemeData(

    //* Text Field Theme 
    inputDecorationTheme: InputDecorationTheme(
          border: OutlineInputBorder(
            borderSide: const BorderSide(width: 2, color: AppColors.mainColor),
            borderRadius: BorderRadius.circular(20),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(width: 2, color: AppColors.mainColor),
            borderRadius: BorderRadius.circular(20),
          ),
          disabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(width: 2, color: AppColors.mainColor),
            borderRadius: BorderRadius.circular(20),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(width: 2, color: Colors.white),
            borderRadius: BorderRadius.circular(20),
          ),
        ),
        
          useMaterial3: true,
          colorScheme: ColorScheme.fromSeed(seedColor: AppColors.mainColor)
              .copyWith(background: AppColors.mainColor),

          //? Defoult Theme For AppBar
          appBarTheme: const AppBarTheme(
              backgroundColor: AppColors.mainColor,
              iconTheme: IconThemeData(color: AppColors.secondryColor)),
        );
}