import 'package:flutter/material.dart';

import '../InformationTab.dart';
class MainTabSpaceSun extends StatelessWidget {
  const MainTabSpaceSun({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.green),
      debugShowCheckedModeBanner: false,
      home:  Scaffold(
        body: Container(
        decoration: const BoxDecoration(
        image: DecorationImage(
        image: AssetImage("assets/PlanetImages/sun.jpg"),
    fit: BoxFit.cover,
    ),
    ),
        child:const SafeArea(
        child:Stack(
          children: [
            Positioned.fill(
              top: 10 , // Adjust the top offset as needed
              child: Column(
                children: [
                  Row(
                    children: [
                      PlanetTemperature(temp:"10,000°C"),
                      Spacer(),
                      PlanetStorm(storm: "1440000km/hr",)
                    ],
                  ),
                  PlanetDayDuration(title: "Time Relativity",duration: "Sun rotates once approximately every 24 to 25 Earth days"),
                  PlanetDayDuration(title: "Distance from the earth",
                    duration: "0.00001581 light years",),
                  PlanetFacts(Facts: "The Sun's core, where nuclear fusion reactions occur, produces an immense amount of energy through the conversion of hydrogen into helium. This process generates an estimated 386 billion billion megawatts of power,"
                      " which is equivalent to the energy output of over a trillion atomic bombs every second.")
                ],
              ),
            ),
          ],
        ),
      ),
    )));
  }
}