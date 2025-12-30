import 'package:flutter/material.dart';

class ComponentsList extends StatelessWidget {
  const ComponentsList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("UI Components List")),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [

          const Text("Display", style: TextStyle(fontWeight: FontWeight.bold)),
          ListTile(
            title: const Text("Text"),
            subtitle: const Text("Displays text"),
            tileColor: Colors.lightBlue[100],
            onTap: () => Navigator.pushNamed(context, '/text'),
          ),
          const SizedBox(height: 8),

          ListTile(
            title: const Text("Image"),
            subtitle: const Text("Displays an image"),
            tileColor: Colors.lightBlue[100],
            onTap: () => Navigator.pushNamed(context, '/image'),
          ),
          const SizedBox(height: 16),

          const Text("Input", style: TextStyle(fontWeight: FontWeight.bold)),
          ListTile(
            title: const Text("TextField"),
            subtitle: const Text("Input field for text"),
            tileColor: Colors.lightBlue[100],
            onTap: () => Navigator.pushNamed(context, '/input'),
          ),
          const SizedBox(height: 16),

          const Text("Layout", style: TextStyle(fontWeight: FontWeight.bold)),
          ListTile(
            title: const Text("Row"),
            subtitle: const Text("Arrange elements horizontally"),
            tileColor: Colors.lightBlue[100],
            onTap: () => Navigator.pushNamed(context, '/row'),
          ),
          const SizedBox(height: 16),

          ListTile(
            title: const Text("Mở rộng", style: TextStyle(fontWeight: FontWeight.bold)),
            subtitle: const Text("Tìm ra tất cả các thành phần UI cơ bản",
                style: TextStyle(fontWeight: FontWeight.bold)),
            tileColor: Colors.lightBlue[100],
            onTap: () => Navigator.pushNamed(context, '/more'),
          ),
        ],
      ),
    );
  }
}
