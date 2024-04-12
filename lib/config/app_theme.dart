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

  AppTheme({required this.selectedColor})
      : assert(selectedColor >= 0 && selectedColor < colors.length);

  ThemeData getTheme() => ThemeData(
        colorSchemeSeed: colors[selectedColor],
        appBarTheme: const AppBarTheme(
          centerTitle: false,
        ),
      );
}
