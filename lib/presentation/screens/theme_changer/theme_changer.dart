import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widgets_app/presentation/providers/theme_provider.dart';

class ThemeChangerScreen extends ConsumerWidget {
  const ThemeChangerScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isDarkmode = ref.watch(appThemeProvider).isDarkMode;
    final selectedColor = ref.watch(appThemeProvider).selectedColor;
    final colorsList = ref.watch(colorProvider);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cambiar tema'),
        actions: [
          IconButton(
            icon: Icon(isDarkmode
                ? Icons.wb_sunny_outlined
                : Icons.dark_mode_outlined),
            onPressed: () {
              ref.read(appThemeProvider.notifier).toggleDarkMode();
            },
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: colorsList.length,
        itemBuilder: (context, index) {
          final color = colorsList[index];
          return RadioListTile(
            title: Text(
              'Color $index',
              style: TextStyle(color: color, fontSize: 20),
            ),
            subtitle: Text('${color.value}'),
            value: index,
            activeColor: color,
            groupValue: selectedColor,
            onChanged: (value) {
              ref.read(appThemeProvider.notifier).changeColor(index);
            },
          );
        },
      ),
    );
  }
}
