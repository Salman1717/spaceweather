import 'package:flutter/material.dart';

import '../main.dart';


class MainTabSpace extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.green),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Stack(
          children: [
            const DecoratedBox(
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
                      PlanetTemperature(),
                      Spacer(),
                      PlanetStorm()
                    ],
                  ),
                  PlanetDayDuration(),
                  PlanetFacts()

                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}



class PlanetFacts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        color: g6,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12.0),
          // Rounded corners
        ),
        child: const Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            ListTile(
              leading: Icon(Icons.star),
              title: Text('Did you know?',
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold,color: Colors.white )  ),
            ),
            Padding(
              padding: EdgeInsets.all(20.0),
              child: Text(
                  "blabh blabh blabh blabh blabh blabh blabh blabh blabh blabh blabh blabh"
                     ,
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold,color: Colors.white )
              ),
            ),
          ],
        ),
      ),
    );
  }
}


class PlanetTemperature extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(padding:EdgeInsets.all(8) ,
      child:  Container(
        width: 150,
        height: 80,
        child: Card(
            color: g6,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12.0),
              // Rounded corners
            ),
            child: const Padding(
              padding: EdgeInsets.all(8),
              child:  Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Text(
                    "Temperature",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold,color: Colors.white),
                  ),
                  Text(
                    " -145°C",
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold,color: Colors.white),
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
  @override
  Widget build(BuildContext context) {
    return Padding(padding:EdgeInsets.all(8) ,
      child:  Container(
        width: 150,
        height: 80,
        child: Card(
            color: g6,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12.0),
              // Rounded corners
            ),
            child: const Padding(
              padding: EdgeInsets.all(8),
              child:  Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Text(
                    "Storm Speed",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold,color: Colors.white),
                  ),
                  Text(
                    " 432 km/h",
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold,color: Colors.white),
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
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:const  EdgeInsets.all(8),
      child: Card(
        color: g6,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12.0),
          // Rounded corners
        ),
        child: const Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            ListTile(
              leading: Icon(Icons.star),
              title: Text('Time Relativity',
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold,color: Colors.white )  ),
            ),
            Padding(
              padding: EdgeInsets.all(12.0),
              child: Text(
                  "A day on Jupiter lasts only nine hours and 55 minutes"
                      ,
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold,color: Colors.white )
              ),
            ),
          ],
        ),
      ),
    );
  }
}


