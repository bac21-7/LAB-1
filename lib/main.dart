import 'package:flutter/material.dart';
import 'screens/components_list.dart';
import 'screens/text_screen.dart';
import 'screens/image_screen.dart';
import 'screens/input_screen.dart';
import 'screens/row_screen.dart';
import 'screens/more_components_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "UI Components Demo",
      initialRoute: '/',
      routes: {
        '/': (context) => const ComponentsList(),
        '/text': (context) => const TextScreen(),
        '/image': (context) => const ImageScreen(),
        '/input': (context) => const InputScreen(),
        '/row': (context) => const RowScreen(),
        '/more': (context) => const MoreComponentsScreen(),
      },
    );
  }
}
