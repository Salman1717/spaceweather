import 'package:flutter/material.dart';

import '../InformationTab.dart';
class MainTabSpaceMercury extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.green),
      debugShowCheckedModeBanner: false,
      home:  Scaffold(
        body: Container(
        decoration: const BoxDecoration(
        image: DecorationImage(
        image: AssetImage("assets/PlanetImages/Mercury.png"),
    fit: BoxFit.cover,
    ),
    ),
        child:const SafeArea
        (child:Stack(
          children: [
            Positioned.fill(
              top: 10 , // Adjust the top offset as needed
              child: Column(
                children: [
                  Row(
                    children: [
                      PlanetTemperature(temp:"-290°C to 430°C"),
                      Spacer(),
                      PlanetStorm(storm: "∅",)
                    ],
                  ),
                  PlanetDayDuration(title: "Time Relativity",duration: "One day on Mercury, "
                      "which is the time it takes for Mercury to rotate once on its axis, "
                      "is approximately 58.6 Earth days long."),
                  PlanetDayDuration(title: "Distance from the earth",
                    duration: "0.00000012 light years.",),
                  PlanetFacts(Facts: "One lesser-known fact about Mercury is that it has an extremely thin exosphere, "
                      "primarily composed of hydrogen, helium, oxygen, sodium, and trace amounts of other gases. "
                      "This exosphere is so sparse that it's often referred to as almost a vacuum.")

                ],
              ),
            ),
          ],
        ),
      ),
    )));
  }
}