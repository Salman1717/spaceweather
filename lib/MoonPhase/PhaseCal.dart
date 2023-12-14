import 'dart:math';

import 'package:flutter/material.dart';
import 'package:moon_phase/moon_widget.dart';
import 'package:intl/intl.dart';

class Testmoon extends StatefulWidget {
  const Testmoon({Key? key}) : super(key: key);

  @override
  _TestmoonState createState() => _TestmoonState();
}

class _TestmoonState extends State<Testmoon> {
  late DateTime currentDate = DateTime.now();
  late String formattedDate= DateFormat('dd MMMM, yyyy').format(currentDate);
  String randomFact = "";

  @override
  void initState() {
    super.initState();
    formattedDate = DateFormat('dd MMMM, yyyy').format(currentDate);
  }

  @override
  void increaseDate() {
    setState(() {
      currentDate = currentDate.add(const Duration(days: 1));
      formattedDate = DateFormat('dd MMMM, yyyy').format(currentDate);
    });
  }

  void decreaseDate() {
    setState(() {
      currentDate = currentDate.add(const Duration(days: -1));
      formattedDate = DateFormat('dd MMMM, yyyy').format(currentDate);
    });
  }

  void generateRandomFact() {
    final List<String> facts = [
      "The Moon has no atmosphere.",
      "There are Total 8 phases of the Moon.",
      "The Moon is about 238,855 miles from Earth.",
      "The first manned Moon landing was in 1969.",
      "The Moon's gravity affects tides on Earth.",
      "It takes about 29.5 days to go through all of the moon phases.",
      "During a full moon we see the entire near side of the moon.",
      "Different parts of the moon appear to be illuminated as it orbits the Earth, due to how the Sun's light is reflecting off of the moon. This is what causes the moon phases.",
      "During a new moon we don't see any of the near side of the moon."
      "The Moon always shows Earth the same face.",
      "The Moon is moving approximately 3.8 cm away from our planet every year.",
      "Moon is 400 times smaller than the Sun, but also 400 times closer to Earth.",
    ];

    final random = Random();
    final randomIndex = random.nextInt(facts.length);
    setState(() {
      randomFact = facts[randomIndex];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/Bg.jpg"),
          fit: BoxFit.cover,
        ),
      ),
      child: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: SingleChildScrollView(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Moon Phases",
                    style: TextStyle(
                      fontSize: 40,
                      color: Color(0xFFFF7F7F),
                      fontFamily: 'Oxygen',
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  SizedBox(height: 50),

                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.only(left: 20),
                      child: Text(
                        "The Moon on $formattedDate",
                        style: const TextStyle(
                          fontFamily: 'Oxygen',
                          color: Color(0xFFD4F1F4),
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  const Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.only(left: 20),
                      child: Text(
                        "Will Be Like: ",
                        style: TextStyle(
                          fontFamily: 'Oxygen',
                          color: Color(0xFFD4F1F4),
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height:100 ),
                  Row(
                    children: [
                      Spacer(),
                      InkWell(
                        onTap: (){
                          decreaseDate();
                          generateRandomFact();
                        },
                        child: Image.asset('assets/PhaseCal/yesterday.png',
                        height: 30,
                        width: 30,),
                      ),
                      SizedBox(width: 60,),
                      Align(
                        alignment: Alignment.centerRight,
                      child:MoonWidget(
                        date: currentDate,
                        resolution: 500,
                        size: 200,
                        moonColor: Color(0xFFDAD9D7), // Specify your moon color here
                        earthshineColor: Colors.black87, // Specify your earthshine color here
                      )),
                      Spacer( ),
                      InkWell(
                        onTap: (){
                          increaseDate();
                          generateRandomFact();
                          },
                        child: Image.asset('assets/PhaseCal/tomorrow.png',
                          height: 30,
                          width: 30,),
                      ),
                      Spacer(),
                    ],
                  ),
                  SizedBox(height:60),
                  const Text(
                    "~DID YOU KNOW~",
                    style: TextStyle(
                      fontSize: 30,
                      color: Color(0xFFFF7F7F),
                      fontFamily: 'Oxygen',
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                   SizedBox(height: 10),
                   Align(
                     alignment: Alignment.center,
                   child:Text(
                      randomFact,
                      style: const TextStyle(
                        fontSize: 25,
                        color: Color(0xFFA3D1F2),
                        fontFamily: 'Oxygen',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                   ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
