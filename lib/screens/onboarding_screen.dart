import 'package:flutter/material.dart';
import '../models/onboarding_item.dart';
import 'home_screen.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  int currentIndex = 0;

  final List<OnboardingItem> items = [
    OnboardingItem(
      title: 'Easy Time Management',
      description: 'Manage your tasks easily and effectively.',
      image: 'assets/onboarding1.png',
    ),
    OnboardingItem(
      title: 'Increase Work Effectiveness',
      description: 'Improve your productivity day by day.',
      image: 'assets/onboarding2.png',
    ),
    OnboardingItem(
      title: 'Reminder Notification',
      description: 'Never miss your important tasks.',
      image: 'assets/onboarding3.png',
    ),
  ];


  void next() {
    if (currentIndex < items.length - 1) {
      setState(() => currentIndex++);
    } else {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (_) => const HomeScreen()),
      );
    }
  }

  void back() {
    if (currentIndex > 0) {
      setState(() => currentIndex--);
    }
  }

@override
Widget build(BuildContext context) {
  final item = items[currentIndex];

  return Scaffold(
    backgroundColor: Colors.white,
    body: Padding(
      padding: const EdgeInsets.all(24),
      child: Column(
        children: [
          const Spacer(),

          // 🖼️ IMAGE
          Image.asset(
            item.image,
            height: 260,
          ),

          const SizedBox(height: 40),

          // 📝 TITLE
          Text(
            item.title,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 26,
              fontWeight: FontWeight.bold,
              color: Color(0xFF2F2E41),
            ),
          ),

          const SizedBox(height: 16),

          // 📝 DESCRIPTION
          Text(
            item.description,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 16,
              color: Colors.grey,
            ),
          ),

          const Spacer(),

          // 🔵 INDICATOR
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(
              items.length,
              (index) => Container(
                margin: const EdgeInsets.symmetric(horizontal: 4),
                width: currentIndex == index ? 20 : 8,
                height: 8,
                decoration: BoxDecoration(
                  color: currentIndex == index
                      ? const Color(0xFF6C63FF)
                      : Colors.grey.shade300,
                  borderRadius: BorderRadius.circular(4),
                ),
              ),
            ),
          ),

          const SizedBox(height: 32),

          // 🔘 BUTTONS
          Row(
            children: [
              if (currentIndex > 0)
                TextButton(
                  onPressed: back,
                  child: const Text("Back"),
                ),
              const Spacer(),
              ElevatedButton(
                onPressed: next,
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF6C63FF),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 32, vertical: 14),
                ),
                child: Text(
                  currentIndex == items.length - 1
                      ? "Get Started"
                      : "Next",
                ),
              ),
            ],
          ),
        ],
      ),
    ),
  );
}
}