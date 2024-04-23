import 'package:flutter/material.dart';

const colors = [
  Colors.red,
  Colors.green,
  Colors.blue,
  Colors.teal,
  Colors.pink,
  Colors.orange,
  Colors.yellow,
  Colors.purple,
];

class AppTheme {
  final int selectedColor;
  final bool isDarkMode;

  AppTheme({this.selectedColor = 0, this.isDarkMode = false})
      : assert(selectedColor >= 0 && selectedColor < colors.length);

  ThemeData getTheme() => ThemeData(
        colorSchemeSeed: colors[selectedColor],
        brightness: isDarkMode ? Brightness.dark : Brightness.light,
        appBarTheme: const AppBarTheme(
          centerTitle: false,
        ),
      );

  AppTheme copyWith({int? selectedColor, bool? isDarkMode}) {
    return AppTheme(
      selectedColor: selectedColor ?? this.selectedColor,
      isDarkMode: isDarkMode ?? this.isDarkMode,
    );
  }
}
