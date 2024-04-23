import 'dart:math' show Random;
import 'package:flutter/material.dart';

class AnimatedScreen extends StatefulWidget {
  const AnimatedScreen({super.key});

  @override
  State<AnimatedScreen> createState() => _AnimatedScreenState();
}

class _AnimatedScreenState extends State<AnimatedScreen> {
  double _width = 120;
  double _height = 120;
  double _borderRadius = 10;
  Color _color = Colors.indigo;

  void changeValues() {
    final ramdom = Random();

    setState(() {
      _width = ramdom.nextDouble() * 250 + 50;
      _height = ramdom.nextDouble() * 250 + 50;
      _borderRadius = ramdom.nextDouble() * 190 + 10;
      _color = Color.fromRGBO(
        ramdom.nextInt(256),
        ramdom.nextInt(256),
        ramdom.nextInt(256),
        1,
      );
    });
    print(
        'width: $_width, height: $_height, borderRadius: $_borderRadius   color: $_color');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Animaciones'),
      ),
      body: Center(
        child: AnimatedContainer(
            width: _width <= 0 ? 120 : _width,
            height: _height <= 0 ? 120 : _height,
            curve: Curves.elasticOut,
            duration: const Duration(milliseconds: 600),
            decoration: BoxDecoration(
              color: _color,
              borderRadius: BorderRadius.circular(
                  _borderRadius <= 0 ? 10 : _borderRadius),
            )),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: changeValues,
        child: const Icon(Icons.play_arrow_rounded),
      ),
    );
  }
}
