import 'package:flutter/material.dart';

import '../InformationTab.dart';
class MainTabSpace extends StatelessWidget {
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
                  image: AssetImage("assets/PlanetImages/Mars.jpg"),
                  fit: BoxFit.cover,
                ),
              ),
              child: Center(
                child: Text("Explore"),
              ),
            ),
            Positioned.fill(
              top: 10 , // Adjust the top offset as needed
              child: Column(
                children: [
                  Row(
                    children: [
                      PlanetTemperature(temp:"145"),
                      Spacer(),
                      PlanetStorm(storm: "200km/hr",)
                    ],
                  ),
                  PlanetDayDuration(title: "Time Relativity",duration: "A day on Jupiter lasts only nine hours and 55 minutes"),
                  PlanetDayDuration(title: "Distance from the earth",
                    duration: "2000000 light years",),
                  PlanetFacts(Facts: "Facts")

                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}