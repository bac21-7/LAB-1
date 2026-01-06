import 'package:flutter/material.dart';

class RowScreen extends StatelessWidget {
  const RowScreen({super.key});

  Widget buildBox() {
    return Container(
      width: 70,
      height: 50,
      margin: const EdgeInsets.all(6),
      decoration: BoxDecoration(
        color: Colors.blue.shade300,
        borderRadius: BorderRadius.circular(10),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Row Layout")),
      body: Center(
        child: Wrap(
          children: List.generate(9, (index) => buildBox()),
        ),
      ),
    );
  }
}