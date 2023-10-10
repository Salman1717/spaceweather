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
                child: Text(""),
              ),
            ),
            Positioned.fill(
              top: 10 , // Adjust the top offset as needed
              child: Column(
                children: [
                  Row(
                    children: [
                      PlanetTemperature(temp:"-130°C to 120°C"),
                      Spacer(),
                      PlanetStorm(storm: "∅",)
                    ],
                  ),
                  PlanetDayDuration(title: "Time Relativity",duration: "One day on the Moon, "
                      "is approximately 29.5 Earth days long."),
                  PlanetDayDuration(title: "Distance from the earth",
                    duration: " 0.000042 light years.",),
                  PlanetFacts(Facts: "The Moon is gradually moving away from Earth at a rate of about 3.8 centimeters "
                      " per year,"
                      " which means it was closer to Earth in the past. This phenomenon is known as lunar recession.")

                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}