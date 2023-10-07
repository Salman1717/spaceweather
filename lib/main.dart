import 'package:flutter/material.dart';
import 'package:spacewether/HomeScreen.dart';

import 'UI/HomeScreen.dart';
import 'UI/weather_info.dart';

import 'PlanetInfo/PlanetInfo.dart';
import 'PlanetInfo/Planets/EarthPage.dart';
import 'SolarAnime.dart';
<<<<<<<<< Temporary merge branch 1
import 'SpaceUI/MainSpace.dart';
import 'SpaceUI/PlanetsInfo.dart';
=========
import 'UI/MainSpace.dart';
>>>>>>>>> Temporary merge branch 2
import 'SunWidget.dart';


<<<<<<<<< Temporary merge branch 1
const Color g1 = Color(0xff011743);
const Color g2 = Color(0xFF340DA7);
const Color g3 = Color(0xFF4F186E);
=========
const Color g1 = Color(0xFF000000);
const Color g2 = Color(0xFF0F0F29);
const Color g3 = Color(0xFF2C166C);
const Color g4 = Color(0xFF3F10A5);
const Color g5 = Color(0xFF8D73C6);
const Color g6 = Color(0xFF220364);
const Color gold = Color(0xFFFFD700);

>>>>>>>>> Temporary merge branch 2

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
<<<<<<<<< Temporary merge branch 1
                TabBarExample(),
=========
                HomeScreeen(),
>>>>>>>>> Temporary merge branch 2

              ),
      ),
    );
  }
}

