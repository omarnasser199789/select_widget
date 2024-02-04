import 'package:example/Theme/theme_values.dart';
import 'package:flutter/material.dart';


class ThemeNotifier with ChangeNotifier {
  ThemeData _themeData = darkTheme;

  ThemeNotifier(this._themeData);

  getTheme() => _themeData;

  setTheme(ThemeData themeData) async {
    _themeData = themeData;
    notifyListeners();
  }
}