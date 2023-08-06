import 'package:flutter/material.dart';
import 'package:spacewether/HomeScreen.dart';

import './weather_info.dart';

import 'SolarAnime.dart';


const Color g1 = Color(0xFF000000);
const Color g2 = Color(0xFF0F0F29);
const Color g3 = Color(0xFF2C166C);
const Color g4 = Color(0xFF3F10A5);
const Color g5 = Color(0xFF8D73C6);
const Color g6 = Color(0xFF220364);

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:Scaffold(

          body:
              Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [g1,g2,g3,g4,g5,g6]
                ),
              ),
                child:
                WeatherInfo(),

              ),
      ),
    );
  }
}

