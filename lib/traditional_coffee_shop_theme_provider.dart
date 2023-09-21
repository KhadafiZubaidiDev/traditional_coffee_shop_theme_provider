library traditional_coffee_shop_theme_provider;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';

class TraditionalCoffeeShopThemeProvider extends ChangeNotifier {
  ThemeMode themeMode = ThemeMode.system;
  bool get isDarkMode {
    if (themeMode == ThemeMode.system) {
      final brightness = SchedulerBinding.instance.window.platformBrightness;
      return brightness == Brightness.dark;
    } else {
      return themeMode == ThemeMode.dark;
    }
  }

  void toggleTheme(bool isOn) {
    themeMode = isOn ? ThemeMode.dark : ThemeMode.light;
    notifyListeners();
  }
}

class CoffeeShopTheme {
  static final darkTheme = ThemeData(
    scaffoldBackgroundColor: Colors.black,
    primaryColor: Colors.black,
    colorScheme: const ColorScheme.dark(),
    iconTheme: const IconThemeData(color: Colors.white, opacity: 0.8),
  );

  static final lightTheme = ThemeData(
    scaffoldBackgroundColor: Colors.brown[200],
    primaryColor: Colors.brown[200],
    colorScheme: const ColorScheme.light(),
    iconTheme: const IconThemeData(color: Colors.black, opacity: 0.8),
  );
}