import 'package:flutter/material.dart';
import 'package:movie_app/core/manager/colors_manager.dart';
import 'package:movie_app/core/manager/fonts_manager.dart';

class ThemeManager {
  static final ThemeData darkTheme = ThemeData(
    scaffoldBackgroundColor: ColorManager.black,
    primaryColor: ColorManager.primary,
    appBarTheme: const AppBarTheme(color: Colors.transparent, elevation: 0),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
        textStyle: MaterialStatePropertyAll(TextStyle(
            color: ColorManager.white,
            fontWeight: FontWeight.w600,
            fontSize: FontsManager.s16)),
        backgroundColor: MaterialStatePropertyAll(ColorManager.primary),
        shape: MaterialStatePropertyAll(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
        ),
      ),
    ),
    textTheme: TextTheme(
      // headline
      headlineLarge: TextStyle(
          fontSize: FontsManager.s30,
          color: ColorManager.white,
          fontWeight: FontWeight.w500),
      headlineMedium: TextStyle(
          fontSize: FontsManager.s30,
          color: ColorManager.primary,
          fontWeight: FontWeight.w500),
      headlineSmall: TextStyle(
          fontSize: FontsManager.s16,
          color: ColorManager.white,
          fontWeight: FontWeight.w400),

      // title    
      titleLarge:  TextStyle(
          fontSize: FontsManager.s24,
          color: ColorManager.primary,
          fontWeight: FontWeight.w500),





      // subTitle   
    titleMedium:  TextStyle(
          fontSize: FontsManager.s16,
          color: ColorManager.primary,
          fontWeight: FontWeight.w500), 
    ),
  dividerColor: ColorManager.white    
  );

  
}
