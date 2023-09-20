import 'package:flutter/material.dart';
import 'package:spacewether/UI/MainSpace.dart';
import 'package:spacewether/UI/weather_info.dart';
import 'package:spacewether/components/ImgCard.dart';

import '../HomeScreen.dart';

class HomeScreeen extends StatelessWidget {
  const HomeScreeen({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
        child: Scaffold(
            backgroundColor: Colors.transparent,
            body: Center(child:Column(
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
                ImgCard(img: 'weather.avif', title: 'WEATHER.',destination: WeatherInfo(),),
                SizedBox(height:30),
                ImgCard(img: 'Solarsys.avif', title: 'SOLAR SYSTEM.',destination: MainSpace(),),
                SizedBox(height:30),
                ImgCard(img: 'moonphs.avif', title: 'MOON PHASES.', destination: HomeScreen(),),
                SizedBox(height:70),
              ],
            )
        )
        )
    );
  }
}
