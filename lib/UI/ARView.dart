import 'package:flutter/material.dart';
import 'package:spacewether/UI/MainSpace.dart';
import 'package:spacewether/AR/earthAR.dart';
import 'package:spacewether/AR/moonAR.dart';
import 'package:spacewether/AR/sunAR.dart';
import 'package:spacewether/AR/marsAR.dart';
import 'package:spacewether/AR/mercuryAR.dart';
import 'package:spacewether/AR/jupiterAR.dart';
import 'package:spacewether/AR/saturnAR.dart';
import 'package:spacewether/AR/neptuneAR.dart';
import 'package:spacewether/AR/venusAR.dart';
import 'package:flutter/material.dart';

import 'package:spacewether/UI/weather_info.dart';
import 'package:spacewether/components/ImgCard.dart';

const Color g1 = Color(0xFF000000);
const Color g2 = Color(0xFF0F0F29);
const Color g3 = Color(0xFF4634F3);
const Color g4 = Color(0xFF081793);
const Color g6 = Color(0xFF01012D);


class ARView extends StatelessWidget {
  const ARView({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [g1,g2,g3,g4,g6]
          ),
        ),

        child:const SafeArea(
        child: Scaffold(

            backgroundColor: Colors.transparent,
            body: SingleChildScrollView(
                child:Center(child:Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("SPACE ",
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
                                "Explore SolarSystem in AR",
                                style: TextStyle(
                                  color: Color(0xFFD4F1F4),
                                  fontSize: 20,
                                  fontFamily: 'Oxygen',
                                  fontWeight: FontWeight.normal,
                                )
                            )
                        )
                    ),


                    SizedBox(height: 20),
                    ImgCard(img: 'arview/Earth.jpg', title: 'EARTH',destination: EarthAr()),
                    SizedBox(height:30),
                    ImgCard(img: 'arview/Moon.jpg', title: 'MOON',destination: MoonAr()),
                    SizedBox(height:30),
                    ImgCard(img: 'arview/Mars.jpg', title: 'MARS',destination: MarsAr()),
                    SizedBox(height:30),
                    ImgCard(img: 'arview/Mercury.jpeg', title: 'MERCURY',destination: MercuryAr()),
                    SizedBox(height:30),
                    ImgCard(img: 'arview/Venus.jpeg', title: 'VENUS',destination: VenusAr()),
                    SizedBox(height:30),
                    ImgCard(img: 'arview/Jupiter.jpg', title: 'JUPITER',destination: JupiterAr()),
                    SizedBox(height:30),
                    ImgCard(img: 'arview/Saturn.jpg', title: 'SATURN',destination: SaturnAr()),
                    SizedBox(height:30),
                    ImgCard(img: 'arview/Sun.jpg', title: 'SUN',destination: SunAr()),
                    SizedBox(height:30),

                  ],
                )
                ))
        )
    )
    );
  }
}
