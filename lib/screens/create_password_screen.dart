import 'package:flutter/material.dart';
import 'confirm_screen.dart';

class CreatePasswordScreen extends StatelessWidget {
  final String email, code;

  CreatePasswordScreen({
    super.key,
    required this.email,
    required this.code,
  });

  final passCtrl = TextEditingController();

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
                          const Text(
                'Create New Password?',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 8),

              const Text(
                'Your new password must be different form previously used password.',
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.grey),
              ),

              const SizedBox(height: 30),

            TextField(
              controller: passCtrl,
              obscureText: true,
              decoration: const InputDecoration(
                labelText: "Password",
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => ConfirmScreen(
                      email: email,
                      code: code,
                      password: passCtrl.text,
                    ),
                  ),
                );
              },
              child: const Text("Finish"),
            ),
          ],
        ),
      ),
    );
  }
}