import 'package:flutter/material.dart';

import '../InformationTab.dart';
class MainTabSpaceEarth extends StatelessWidget {
  const MainTabSpaceEarth({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.green),
      debugShowCheckedModeBanner: false,
      home:  Scaffold(
        body: Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/PlanetImages/earth.jpg"),
                fit: BoxFit.cover,
              ),
            ),
          child: const SafeArea(
    child:Stack(

          children: [

            Positioned.fill(
              top: 10 , // Adjust the top offset as needed
              child: Column(
                children: [
                  Row(
                    children: [
                      PlanetTemperature(temp:"0°C to 50°C",),
                      Spacer(),
                      PlanetStorm(storm: "20km/hr",)
                    ],
                  ),
                  PlanetDayDuration(title: "Time Relativity",duration: "Time dilation due to Earth's gravity causes clocks at sea level to run slower than clocks at higher altitudes, as predicted by Einstein's theory of general relativity."),
                  PlanetDayDuration(title: "Distance from the Sun",
                    duration: " 0.000016 light years",),
                  PlanetFacts(Facts: "One lesser-known fact about Earth is that it is not a perfect sphere but slightly flattened at the poles and bulging at the equator due to its rotation, making it an oblate spheroid.")

                ],
              ),
            ),
          ],
        ),
      ),
    ))
    );
  }
}