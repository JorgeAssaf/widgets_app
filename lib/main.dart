import 'package:flutter/material.dart';
import 'package:widgets_app/config/app_theme.dart';
import 'package:widgets_app/presentation/screens/Buttons/buttons_screen.dart';
import 'package:widgets_app/presentation/screens/Cards/cards_screen.dart';
import 'package:widgets_app/presentation/screens/Home/home_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: AppTheme(selectedColor: 3).getTheme(),
      home: const Scaffold(body: HomeScreen()),
      routes: {
        '/buttons': (context) => const ButtonsScreen(),
        '/cards': (context) => const CardsScreen(),
      },
    );
  }
}
