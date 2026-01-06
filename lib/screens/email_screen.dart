import 'package:flutter/material.dart';
import 'package:flutter_application_5/models/user_info.dart';
import 'verify_code_screen.dart';

class EmailScreen extends StatefulWidget {
  final UserInfo? userInfo;

  const EmailScreen({super.key, this.userInfo});

  @override
  State<EmailScreen> createState() => _EmailScreenState();
}

class _EmailScreenState extends State<EmailScreen> {
  final emailCtrl = TextEditingController();

  @override
  void initState() {
    super.initState();
    if (widget.userInfo != null) {
      emailCtrl.text = widget.userInfo!.email;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                'SmartTasks',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  color: primaryBlue,
                ),
              ),

              const SizedBox(height: 40),

              const Text(
                'Forget Password?',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 8),

              const Text(
                'Enter your Email, we will send you a verification code.',
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.grey),
              ),

              const SizedBox(height: 30),



            if (widget.userInfo != null) ...[
              Text("Email: ${widget.userInfo!.email}"),
              Text("Code: ${widget.userInfo!.code}"),
              Text("Code: ${widget.userInfo!.code}"),
              const SizedBox(height: 24),
            ],

            TextField(
              controller: emailCtrl,
              decoration: const InputDecoration(
                labelText: "Email",
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) =>
                        VerifyCodeScreen(email: emailCtrl.text),
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
const Color primaryBlue = Color(0xFF2D9CDB);
