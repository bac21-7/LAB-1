import 'package:flutter/material.dart';

class InputScreen extends StatefulWidget {
  const InputScreen({super.key});

  @override
  State<InputScreen> createState() => _InputScreenState();
}

class _InputScreenState extends State<InputScreen> {
  String text = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("TextField")),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            TextField(
              decoration: const InputDecoration(
                labelText: "Thông tin nhập",
                border: OutlineInputBorder(),
              ),
              onChanged: (value) => setState(() => text = value),
            ),
            const SizedBox(height: 10),
            Text("Tự động cập nhật dữ liệu: $text",
              style: const TextStyle(color: Colors.red),
            ),
          ],
        ),
      ),
    );
  }
}