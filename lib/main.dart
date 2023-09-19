import 'package:flutter/material.dart';
import 'package:spacewether/HomeScreen.dart';

import './weather_info.dart';

import 'SolarAnime.dart';
import 'SpaceUI/MainSpace.dart';
import 'SunWidget.dart';


const Color g1 = Color(0xff011743);
const Color g2 = Color(0xFF340DA7);
const Color g3 = Color(0xFF4F186E);

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:Scaffold(

          body:
              Container(
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [g3,g2,g1]
                ),
              ),
                child:
                WeatherInfo(),

              ),
      ),
    );
  }
}

