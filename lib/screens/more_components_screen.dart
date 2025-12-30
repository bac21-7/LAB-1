import 'package:flutter/material.dart';

class MoreComponentsScreen extends StatefulWidget {
  const MoreComponentsScreen({super.key});

  @override
  State<MoreComponentsScreen> createState() => _MoreComponentsScreenState();
}

class _MoreComponentsScreenState extends State<MoreComponentsScreen> {
  bool switchValue = false;
  double sliderValue = 20;
  bool check = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("More UI Components")),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: ListView(
          children: [

            const Text("Switch", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            Switch(
              value: switchValue,
              onChanged: (v)=>setState(()=>switchValue=v),
            ),
            const Divider(),

            const Text("Slider", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            Slider(
              value: sliderValue,
              min: 0,
              max: 100,
              onChanged: (v)=>setState(()=>sliderValue=v),
            ),
            Text("Giá trị: ${sliderValue.toInt()}"),
            const Divider(),

            const Text("Checkbox", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            Checkbox(
              value: check,
              onChanged: (v)=>setState(()=>check=v!),
            ),
            const Divider(),

            ElevatedButton(onPressed: (){}, child: const Text("Elevated Button")),
            OutlinedButton(onPressed: (){}, child: const Text("Outlined Button")),
            TextButton(onPressed: (){}, child: const Text("Text Button")),
          ],
        ),
      ),
    );
  }
}