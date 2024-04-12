import 'package:flutter/material.dart';

class ThemeChangerProvider with ChangeNotifier {
  var _theme = ThemeMode.light;

  ThemeMode get themeMode => _theme;

  setTheme(themeMode) {
    _theme = themeMode;
    notifyListeners();
  }
}
