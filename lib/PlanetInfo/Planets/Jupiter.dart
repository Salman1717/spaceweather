import 'package:flutter/material.dart';

import '../InformationTab.dart';
class MainTabSpaceJupiter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.green),
      debugShowCheckedModeBanner: false,
      home: const Scaffold(
        body: Stack(
          children: [
            DecoratedBox(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/PlanetImages/jupiter.jpg"),
                  fit: BoxFit.cover,
                ),
              ),
              child: Center(
                child: Text(""),
              ),
            ),
            Positioned.fill(
              top: 10 , // Adjust the top offset as needed
              child: Column(
                children: [
                  Row(
                    children: [
                      PlanetTemperature(temp:"-110°C"),
                      Spacer(),
                      PlanetStorm(storm: "432 km/h r",)
                    ],
                  ),
                  PlanetDayDuration(title: "Time Relativity",duration: "A day on Jupiter lasts only nine hours and 55 minutes"),
                  PlanetDayDuration(title: "Distance from the earth",
                    duration: " 0.000053 light years.",),
                  PlanetFacts(Facts: "Jupiter has a powerful magnetic field that is 14 times stronger than Earth's, and it generates intense radiation belts, "
                      "making it a challenging environment for spacecraft to navigate.")

                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}