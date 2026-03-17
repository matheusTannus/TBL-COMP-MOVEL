import 'package:flutter/material.dart';
import 'animation1_screens.dart';
import 'animation2_screens.dart';
import 'animation3_screens.dart';
import 'animation4_screens.dart';

class ButtonScreen extends StatelessWidget {
  const ButtonScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Menu")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const AnimationScreen(),
                  ),
                );
              },
              child: const Text("Abrir Exercício 1"),
            ),

            const SizedBox(height: 20),

            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Animation2Screen(),
                  ),
                );
              },
              child: const Text("Abrir Exercício 2"),
            ),

            const SizedBox(height: 20),

            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Animation3Screen(),
                  ),
                );
              },
              child: const Text("Abrir Exercício 3"),
            ),
            const SizedBox(height: 20),

            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Animation4Screen(),
                  ),
                );
              },
              child: const Text("Abrir Exercício 4"),
            ),
          ],
        ),
      ),
    );
  }
}
