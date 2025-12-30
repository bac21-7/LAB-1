import 'package:flutter/material.dart';

class TextScreen extends StatelessWidget {
  const TextScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Text Detail")),
      body: const Center(
        child: Text.rich(
          TextSpan(
            text: "The ",
            children: [
              TextSpan(
                text: "quick ",
                style: TextStyle(decoration: TextDecoration.lineThrough),
              ),
              TextSpan(
                text: "Brown ",
                style: TextStyle(color: Colors.brown, fontWeight: FontWeight.bold),
              ),
              TextSpan(text: "fox j u m p s "),
              TextSpan(
                  text: "over ",
                  style: TextStyle(fontWeight: FontWeight.bold)
              ),
              TextSpan(
                text: "the ",
                style: TextStyle(decoration: TextDecoration.underline),
              ),
              TextSpan(
                text: "lazy dog.",
                style: TextStyle(fontStyle: FontStyle.italic),
              ),
            ],
          ),
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 28),
        ),
      ),
    );
  }
}