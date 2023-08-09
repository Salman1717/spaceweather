import 'package:flutter/material.dart';

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
                children: [
                            Text(
                    "Moon Phases",
                    style: TextStyle(
                        fontSize: 35,
                        fontWeight: FontWeight.w700,
                    )
                ),
        Container(
                    width: 375,
                    height: 80,
                    decoration:     BoxDecoration(
                borderRadius: BorderRadius.circular(15), 
                color: Color(0xffd9d9d9))
                    ),
        Container(
                    width: 375,
                    height: 80,
                    decoration:     BoxDecoration(
                borderRadius: BorderRadius.circular(15), 
                color: Color(0xffd9d9d9))
                    ),
        Container(
                    width: 375,
                    height: 80,
                    decoration:     BoxDecoration(
                borderRadius: BorderRadius.circular(15), 
                color: Color(0xffd9d9d9))
                    ),
        Container(
                    width: 375,
                    height: 80,
                    decoration:     BoxDecoration(
                borderRadius: BorderRadius.circular(15), 
                color: Color(0xffd9d9d9))
                    ),
        Container(
                    width: 375,
                    height: 80,
                    decoration:     BoxDecoration(
                borderRadius: BorderRadius.circular(15), 
                color: Color(0xffd9d9d9))
                    ),
        Image.asset(
                    "assets/image 4.png",
                    width: 59.609375,
                    height: 70,
                    ),
        Image.asset(
                    "assets/image 5.png",
                    width: 59.609375,
                    height: 70,
                    ),
        Image.asset(
                    "assets/image 6.png",
                    width: 59.609375,
                    height: 70,
                    ),
        Image.asset(
                    "assets/image 7.png",
                    width: 59.609375,
                    height: 70,
                    ),
        Image.asset(
                    "assets/image 8.png",
                    width: 59.609375,
                    height: 70,
                    ),
        Text(
                    "3rd August, Thursday",
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w700,
                    )
                ),
        Text(
                    "4th August, Friday",
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w700,
                    )
                ),
        Text(
                    "5th August, Saturday",
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w700,
                    )
                ),
        Text(
                    "6th August, Sunday",
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w700,
                    )
                ),
        Text(
                    "7th August, Monday",
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w700,
                    )
                ),
        Text(
                    "Waxing Crescent",
                    style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.w400,
                    )
                ),
        Text(
                    "New Moon",
                    style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.w400,
                    )
                ),
        Text(
                    "Waning Crescent",
                    style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.w400,
                    )
                ),
        Text(
                    "Third Quarter",
                    style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.w400,
                    )
                ),
        Text(
                    "First Quarter",
                    style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.w400,
                    )
                ),
        Container(
                    width: 150,
                    height: 135,
                    decoration:     BoxDecoration(
                borderRadius: BorderRadius.circular(15), 
                color: Color(0xffd9d9d9))
                    ),
        Container(
                    width: 150,
                    height: 135,
                    decoration:     BoxDecoration(
                borderRadius: BorderRadius.circular(15), 
                color: Color(0xffd9d9d9))
                    ),
        Text(
                    "Moon",
                    style: TextStyle(
                        fontSize: 35,
                        fontWeight: FontWeight.w700,
                    )
                )
                ],
            ),
      ),
    );
  }
}