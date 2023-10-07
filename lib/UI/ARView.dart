import 'package:flutter/material.dart';
import 'package:spacewether/UI/MainSpace.dart';

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
                    ImgCard(img: 'arview/Earth1.avif', title: 'EARTH',destination: WeatherInfo(),),
                    SizedBox(height:30),
                    ImgCard(img: 'arview/Moon.avif', title: 'MOON',destination: WeatherInfo(),),
                    SizedBox(height:30),
                    ImgCard(img: 'arview/Mars.avif', title: 'MARS',destination: WeatherInfo(),),
                    SizedBox(height:30),
                    ImgCard(img: 'arview/Mercury.jpeg', title: 'MERCURY',destination: WeatherInfo(),),
                    SizedBox(height:30),
                    ImgCard(img: 'arview/Venus.jpeg', title: 'VENUS',destination: WeatherInfo(),),
                    SizedBox(height:30),
                    ImgCard(img: 'arview/Jupiter.avif', title: 'JUPITER',destination: WeatherInfo(),),
                    SizedBox(height:30),
                    ImgCard(img: 'arview/Saturn.avif', title: 'SATURN',destination: WeatherInfo(),),
                    SizedBox(height:30),
                    ImgCard(img: 'arview/Sun.jpg', title: 'SUN',destination: WeatherInfo(),),
                    SizedBox(height:30),

                  ],
                )
                ))
        )
    )
    );
  }
}
