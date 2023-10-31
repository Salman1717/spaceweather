import 'package:flutter/material.dart';
import 'package:spacewether/UI/MainSpace.dart';

class MainTabSpace extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.green),
      debugShowCheckedModeBanner: false,
      home: const Scaffold(
        body: SafeArea(child: Stack(
          children: [
            DecoratedBox(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/Bg.jpg"),
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
                       PlanetTemperature(temp:"145"),
                      Spacer(),
                      PlanetStorm(storm: "200km/hr",)
                    ],
                  ),
                  PlanetDayDuration(title: "Time Relativity",duration: "A day on Jupiter lasts only nine hours and 55 minutes"),
                  PlanetDayDuration(title: "Distance from the earth",
                  duration: "2000000 light years",),
                  PlanetFacts(Facts: "Facts"),



                ],
              ),
            ),
          ],
        ),
      ),
    ));
  }
}



 class PlanetFacts extends StatelessWidget {
  final String Facts;
  const PlanetFacts({super.key,
  required this.Facts});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        color: Colors.white54.withOpacity(0.2),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12.0),
          // Rounded corners
        ),
        child:  Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
           const  ListTile(
              leading: Icon(Icons.star),
              title: Text('Did you know?',
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold,color: Colors.white )  ),
            ),
            Padding(
              padding:const  EdgeInsets.all(20.0),
              child: Text(
                    Facts,
                  style:const TextStyle(fontSize: 18, fontWeight: FontWeight.bold,color: Colors.white )
              ),
            ),
          ],
        ),
      ),
    );
  }
}


class PlanetTemperature extends StatelessWidget {
  final String temp;
  const PlanetTemperature({super.key,
    required this.temp
  }
);
  @override
  Widget build(BuildContext context) {
    return Padding(padding:EdgeInsets.all(8) ,
      child:  Container(
        width: 150,
        height: 90,
        child: Card(
            color: Colors.white54.withOpacity(0.2),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12.0),
              // Rounded corners
            ),
            child:  Padding(
              padding: EdgeInsets.all(8),
              child:  Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                 const  Text(
                    "Temperature",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold,color: Colors.white),
                  ),
                  SizedBox(height:15),
                  Text(
                    temp,
                    style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold,color: Colors.white),
                  ),
                ],
              ),
            )


        ),
      ),
    );
  }
}






class PlanetStorm extends StatelessWidget {
  final String storm;
  const PlanetStorm ({super.key,
  required this.storm});
  @override
  Widget build(BuildContext context) {
    return Padding(padding:EdgeInsets.all(8) ,
      child:  Container(
        width: 150,
        height: 90,
        child: Card(
            color: Colors.white54.withOpacity(0.2),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12.0),
              // Rounded corners
            ),
            child:  Padding(
              padding: EdgeInsets.all(8),
              child:  Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                 const Text(
                    "Storm Speed",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold,color: Colors.white),
                  ),
                  SizedBox(height:15),
                  Text(
                    storm,
                    style: const TextStyle(fontSize: 14, fontWeight: FontWeight.bold,color: Colors.white),
                  ),
                ],
              ),
            )


        ),
      ),
    );
  }
}


class PlanetDayDuration extends StatelessWidget {
  final String duration;
  final String title;
  const PlanetDayDuration({super.key,
  required this.duration,
    required this.title});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:const  EdgeInsets.all(8),
      child: Card(
        color: Colors.white54.withOpacity(0.2),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12.0),
          // Rounded corners
        ),
        child:  Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
             ListTile(
              leading:const Icon(Icons.star),
              title: Text(title,
                  style: const TextStyle(fontSize: 25, fontWeight: FontWeight.bold,color: Colors.white )  ),
            ),
            Padding(
              padding:const EdgeInsets.all(12.0),
              child: Text(
                  duration,
                  style:const TextStyle(fontSize: 18, fontWeight: FontWeight.bold,color: Colors.white )
              ),
            ),
          ],
        ),
      ),
    );
  }
}




