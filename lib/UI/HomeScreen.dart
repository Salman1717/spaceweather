import 'package:flutter/material.dart';
import 'package:spacewether/MoonPhase/PhaseCal.dart';
import 'package:spacewether/UI/ARView.dart';
import 'package:spacewether/UI/MainSpace.dart';

import 'package:spacewether/UI/weather_info.dart';
import 'package:spacewether/components/ImgCard.dart';
import 'package:spacewether/main.dart';


import '../MoonPhase/moonP.dart';
import 'MoonUI.dart';

class HomeScreeen extends StatelessWidget {
  const HomeScreeen({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
        child: Scaffold(
            backgroundColor: Colors.transparent,
            body: SingleChildScrollView(
                child:Center(child:Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("SPACE WEATHER",
                    style: TextStyle(
                      fontSize: 35,
                      color: Color(0xFFA3D1F2),
                      fontFamily: 'Oxygen',
                      fontWeight: FontWeight.w500,

                    )
                ),
            SizedBox(height: 28),
            Align(
              alignment: Alignment.centerLeft,
            child:Padding(padding: EdgeInsets.only(left: 20),
                child: Text(
              "Explore the UNKNOWN",
            style: TextStyle(
              color: Color(0xFFD4F1F4),
              fontSize: 20,
              fontFamily: 'Oxygen',
              fontWeight: FontWeight.normal,
            )
            )
            )
             ),
                Align(
                    alignment: Alignment.centerLeft,
                    child:Padding(padding: EdgeInsets.only(left: 20),
                        child: Text(
                            "START HERE...",
                            style: TextStyle(
                              fontFamily: 'Oxygen',
                              color: Color(0xFFD4F1F4),
                              fontSize: 20,
                              fontWeight: FontWeight.normal,
                            )
                        )
                    )
                ),

                SizedBox(height: 20),
                ImgCard(img: 'home/weather1.avif', title: 'WEATHER.',destination: WeatherInfo()),
                SizedBox(height:30),
                ImgCard(img: 'home/Space_bg.avif', title: 'SOLAR SYSTEM.',destination: MainSpace()),
                SizedBox(height:30),
                ImgCard(img: 'home/moonphs.avif', title: 'MOON PHASES.', destination: Testmoon()),
                SizedBox(height:30),
                ImgCard(img: 'home/Solarsys.avif', title: 'VIEW IN AR', destination: ARView()),
                SizedBox(height:70),
              ],
            )
        ))
        )
    );
  }
}
