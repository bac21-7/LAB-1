import 'package:flutter/material.dart';
import 'create_password_screen.dart';

class VerifyCodeScreen extends StatelessWidget {
  final String email;

  VerifyCodeScreen({super.key, required this.email});

  final codeCtrl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/uth_logo.png',
              height: 200,
            ),
            const SizedBox(height: 24),

            Text("Email: $email"),
            const SizedBox(height: 20),

            TextField(
              controller: codeCtrl,
              decoration: const InputDecoration(
                labelText: "Verification Code",
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => CreatePasswordScreen(
                      email: email,
                      code: codeCtrl.text,
                    ),
                  ),
                );
              },
              child: const Text("Next"),
            ),
          ],
        ),
      ),
    );
  }
}