import 'package:flutter/material.dart';

class Animation3Screen extends StatefulWidget {
  const Animation3Screen({super.key});

  @override
  State<Animation3Screen> createState() => _Animation3ScreenState();
}

class _Animation3ScreenState extends State<Animation3Screen> {
  double _opacity = 1.0;

  void _toggleText() {
    setState(() {
      _opacity = _opacity == 1.0 ? 0.0 : 1.0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Exercício 3")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedOpacity(
              duration: const Duration(seconds: 1),
              opacity: _opacity,
              child: const Text(
                "apareço e sumo",
                style: TextStyle(fontSize: 20),
              ),
            ),

            const SizedBox(height: 20),

            ElevatedButton(
              onPressed: _toggleText,
              child: Text(_opacity == 1.0 ? "Esconder" : "Mostrar"),
            ),
          ],
        ),
      ),
    );
  }
}
