import 'package:flutter/material.dart';

import '../InformationTab.dart';
class MainTabSpaceSaturn extends StatelessWidget {
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
                  image: AssetImage("assets/PlanetImages/saturn.jpg"),
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
                      PlanetTemperature(temp:"-178°C"),
                      Spacer(),
                      PlanetStorm(storm: "840km/hr",)
                    ],
                  ),
                  PlanetDayDuration(title: "Time Relativity",duration: "One day on Saturn, "
                      "is approximately 10 hours, 33 minutes, and 38 seconds in Earth time."),
                  PlanetDayDuration(title: "Distance from the earth",
                    duration: "0.00043 light years",),
                  PlanetFacts(Facts: "Saturn's iconic rings are not solid structures but are composed of countless individual particles, "
                      "ranging in size from tiny grains to large chunks, all orbiting the planet.")

                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}