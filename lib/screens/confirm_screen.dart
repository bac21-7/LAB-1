import 'package:flutter/material.dart';
import 'package:flutter_application_5/models/user_info.dart';
import 'email_screen.dart';

class ConfirmScreen extends StatelessWidget {
  final String email, code, password;

  const ConfirmScreen({
    super.key,
    required this.email,
    required this.code,
    required this.password,
  });

  @override
  Widget build(BuildContext context) {
    final userInfo = UserInfo(
    email: email,
    password: password,
    code: code,
);


    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/uth_logo.png',
              height: 220,
            ),
            const SizedBox(height: 24),

            const Text(
              "Completed!",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),

            Text("Email: $email"),
            Text("Code: $code"),
            Text("Password: $password"),

            const SizedBox(height: 30),
            ElevatedButton(
              onPressed: () {
                Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(
                    builder: (_) => EmailScreen(userInfo: userInfo),
                  ),
                      (route) => false,
                );
              },
              child: const Text("Back to Start"),
            ),
          ],
        ),
      ),
    );
  }
}