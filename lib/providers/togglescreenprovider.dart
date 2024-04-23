import 'package:flutter/material.dart';

class ToggleScreenProvider with ChangeNotifier {
  var _themeMode = ThemeMode.light;

  ThemeMode get themeMode => _themeMode;

  set settheme(ThemeMode themeMode) {
    _themeMode = themeMode;
    notifyListeners();
  }
}
