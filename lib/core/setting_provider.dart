import 'package:flutter/material.dart';

class SettingProvider extends ChangeNotifier {
  String curLanguage = "en";
  ThemeMode curThemeMode = ThemeMode.light;

  void changeLanguage(String newLanguage) {
    if (curLanguage == newLanguage) return;
    curLanguage = newLanguage;
    notifyListeners();
  }

  void changeThemeMode(ThemeMode newThemeMode) {
    if (curThemeMode == newThemeMode) return;
    curThemeMode = newThemeMode;
    notifyListeners();
  }

  bool isDark() {
    return curThemeMode == ThemeMode.dark;
  }

  String getBackgroundImage() {
    if (isDark())
      return "assets/images/background_dark.png";
    else
      return "assets/images/background_image.png";
  }
}
