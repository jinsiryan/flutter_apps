import 'package:flutter/material.dart';

class AppTheme {
  const AppTheme({ this.name, this.icon, this.theme });
  final String name;
  final IconData icon;
  final ThemeData theme;
}

const int _kPurplePrimaryValue = 0xFF6200EE;
const MaterialColor _kPurpleSwatch = const MaterialColor(
    _kPurplePrimaryValue,
    const <int, Color> {
      50: const Color(0xFFF2E7FE),
      100: const Color(0xFFD7B7FD),
      200: const Color(0xFFBB86FC),
      300: const Color(0xFF9E55FC),
      400: const Color(0xFF7F22FD),
      500: const Color(_kPurplePrimaryValue),
      700: const Color(0xFF3700B3),
      800: const Color(0xFF270096),
      900: const Color(0xFF190078),
    }
);

final List<AppTheme> kAllAppThemes = <AppTheme>[
  new AppTheme(
    name: 'Light',
    icon: Icons.brightness_5,
    theme: new ThemeData(
      brightness: Brightness.light,
      primarySwatch: Colors.blue,
    ),
  ),
  new AppTheme(
    name: 'Dark',
    icon: Icons.brightness_7,
    theme: new ThemeData(
      brightness: Brightness.dark,
      primarySwatch: Colors.blue,
    ),
  ),
  new AppTheme(
    name: 'Purple',
    icon: Icons.brightness_6,
    theme: new ThemeData(
      toggleableActiveColor: _kPurpleSwatch[500],
      brightness: Brightness.light,
      primarySwatch: _kPurpleSwatch,
      buttonColor: _kPurpleSwatch[500],
      splashColor: Colors.white24,
      splashFactory: InkRipple.splashFactory,
      errorColor: const Color(0xFFFF1744),
      buttonTheme: const ButtonThemeData(
        textTheme: ButtonTextTheme.primary,
      ),
    ),
  ),
];
