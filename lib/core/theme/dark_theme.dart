import 'package:flutter/material.dart';
import 'theme_constants.dart';

final ThemeData darkTheme = ThemeData(
  brightness: Brightness.dark,
  scaffoldBackgroundColor: AppColors.darkBackground,
  primaryColor: AppColors.darkPrimary,
  colorScheme: ColorScheme.dark(
    primary: AppColors.darkPrimary,
    error: AppColors.error,
  ),
  textTheme: const TextTheme(
    bodyMedium: TextStyle(color: Colors.white),
  ),
);
