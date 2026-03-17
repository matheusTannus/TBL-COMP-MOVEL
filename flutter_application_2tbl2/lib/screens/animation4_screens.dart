import 'package:flutter/material.dart';

class Animation4Screen extends StatefulWidget {
  const Animation4Screen({super.key});

  @override
  State<Animation4Screen> createState() => _Animation4ScreenState();
}

class _Animation4ScreenState extends State<Animation4Screen> {
  bool _expanded = false;

  void _toggleCard() {
    setState(() {
      _expanded = !_expanded;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Exercício 4")),
      body: Center(
        child: GestureDetector(
          onTap: _toggleCard,
          child: AnimatedContainer(
            duration: const Duration(milliseconds: 500),
            curve: Curves.easeInOut,
            width: _expanded ? 250 : 150,
            height: _expanded ? 200 : 100,
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Center(
              child: Text(
                _expanded ? "Card Expandido " : "Clique aqui ",
                style: const TextStyle(color: Colors.white, fontSize: 16),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
