import 'package:flutter/material.dart';
import 'theme_constants.dart';

final ThemeData lightTheme = ThemeData(
  brightness: Brightness.light,
  scaffoldBackgroundColor: AppColors.lightBackground,
  primaryColor: AppColors.lightPrimary,
  colorScheme: ColorScheme.light(
    primary: AppColors.lightPrimary,
    error: AppColors.error,
  ),
  textTheme: const TextTheme(
    bodyMedium: TextStyle(color: Colors.black),
  ),
);
