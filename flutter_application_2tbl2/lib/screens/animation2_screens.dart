import 'package:flutter/material.dart';

class Animation2Screen extends StatefulWidget {
  const Animation2Screen({super.key});

  @override
  State<Animation2Screen> createState() => _Animation2ScreenState();
}

class _Animation2ScreenState extends State<Animation2Screen> {
  double _size = 60;

  void _animateIcon() async {
    for (int i = 0; i < 3; i++) {
      setState(() {
        _size = 120;
      });

      await Future.delayed(const Duration(milliseconds: 400));

      setState(() {
        _size = 60;
      });

      await Future.delayed(const Duration(milliseconds: 400));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Exercício 2")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedContainer(
              duration: const Duration(milliseconds: 400),
              curve: Curves.easeInOut,
              child: Icon(Icons.star, color: Colors.orange, size: _size),
            ),

            const SizedBox(height: 20),

            ElevatedButton(onPressed: _animateIcon, child: const Text("Play")),
          ],
        ),
      ),
    );
  }
}
