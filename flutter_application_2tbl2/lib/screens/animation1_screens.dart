import 'package:flutter/material.dart';

class AnimationScreen extends StatefulWidget {
  const AnimationScreen({super.key});

  @override
  State<AnimationScreen> createState() => _AnimationScreenState();
}

class _AnimationScreenState extends State<AnimationScreen> {
  double _height = 100;
  Color _color = Colors.blue;

  void _animateBox() {
    setState(() {
      _height = _height == 100 ? 200 : 100;
      _color = _color == Colors.blue ? Colors.red : Colors.blue;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Exercício 1")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedContainer(
              duration: const Duration(seconds: 1),
              width: 100,
              height: _height,
              color: _color,
              curve: Curves.easeInOut,
            ),
            const SizedBox(height: 20),
            ElevatedButton(onPressed: _animateBox, child: const Text("Play")),
          ],
        ),
      ),
    );
  }
}
