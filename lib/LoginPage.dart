import 'package:flutter/material.dart';

class Demopage extends StatelessWidget {
  const Demopage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: const Text(
          "Login Page",
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
