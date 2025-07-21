import 'package:flutter/material.dart';

import '../../core/theme/dark_theme.dart';
import '../../core/theme/light_theme.dart';

class ThemeViewmodel extends ChangeNotifier {
  bool _isDarkMode = false;

  ThemeMode get themeMode => _isDarkMode ? ThemeMode.dark : ThemeMode.light;

  void toggleTheme() {
    _isDarkMode = !_isDarkMode;
    notifyListeners();
  }

  void setDarkTheme() {
    _isDarkMode = true;
    notifyListeners();
  }
  
  void setLightTheme() {
    _isDarkMode = false;
    notifyListeners();
  }


  ThemeData get currentTheme => _isDarkMode ? darkTheme : lightTheme;
}
