import 'package:flutter/material.dart';

class SettingsProvider extends ChangeNotifier {
  ThemeMode currentThem = ThemeMode.light;
  String currentLanguage = 'en';

  void changeLanguage(String newLocale) {
    currentLanguage = newLocale;
    notifyListeners();
  }

  void changeTheme(ThemeMode newMode) {
    currentThem = newMode;
    notifyListeners();
  }

  String gettingMainBackground() {
    return currentThem == ThemeMode.light
        ? 'assets/images/screen_one_background.png'
        : 'assets/images/main_background_dark.png';
  }

  bool isDarkMode() {
    return currentThem == ThemeMode.dark;
  }
}
