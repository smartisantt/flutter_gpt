import 'package:flutter/material.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        "Desinged by Ashley",
        style: TextStyle(fontSize: 20),
      ),
    );
  }
}