import 'package:flutter/material.dart';

import '../InformationTab.dart';
class MainTabSpaceMoon extends StatelessWidget {
  const MainTabSpaceMoon({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.green),
      debugShowCheckedModeBanner: false,
      home: const Scaffold(
        backgroundColor: Colors.transparent,
        body: Stack(
          children: [
            DecoratedBox(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/PlanetImages/plato.png"),
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