import 'package:flutter/material.dart';

import 'UI/HomeScreen.dart';

const Color g1 = Color(0xff011743);
const Color g2 = Color(0xFF340DA7);
const Color g3 = Color(0xFF4F186E);
const Color g4 = Color(0xFF3F10A5);
const Color g5 = Color(0xFF8D73C6);
const Color g6 = Color(0xFF220364);
const Color gold = Color(0xFFFFD700);

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [g3, g2, g1]),
          ),
          child: const HomeScreeen(),
        ),
      ),
    );
  }
}
