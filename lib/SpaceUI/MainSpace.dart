import 'package:flutter/material.dart';

const Color g1 = Color(0xFF000000);
const Color g2 = Color(0xFF0F0F29);
const Color g3 = Color(0xFF2C166C);
const Color g4 = Color(0xFF3F10A5);
const Color g5 = Color(0xFF8D73C6);
const Color g6 = Color(0xFF220364);


class MainSpace extends StatelessWidget {
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
              top: 80, // Adjust the top offset as needed
              child: Column(
                children: [
               const  SizedBox(
                height: 10,
              ),
               const  Align(
                  alignment: Alignment.centerLeft,
                  child:
                  Padding(
                    padding: EdgeInsets.all(15), //apply padding to all four sides
                    child: Text(
                      'Welcome',
                      style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold,color: Colors.white ),
                    ),),
                  ),

                  Text(""),
                  HorizontalCardScroll(),
                Text(""),
                  Text(""),
                  Text(""),
                  const Align(
                    alignment: Alignment.centerLeft,
                    child:  Text("Space Facts",
                        style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold,color: Colors.white ),
                    ),
                  ),
                  Text(""),
                  SpaceFacts(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}


class HorizontalCardScroll extends StatelessWidget {
  final List<Map<String, dynamic>> cardData = [
    {
      'title': 'Earth',
      'content': 'Content for Card 1',
      'imageURL': 'assets/Earth.png',
    },
    {
      'title': 'Moon',
      'content': 'Content for Card 2',
      'imageURL': 'assets/Moon.png'
    },
    {
      'title': 'Mercury',
      'content': 'Content for Card 2',
      'imageURL': 'assets/Mercury.png'
    },
    {
      'title': 'Saturn',
      'content': 'Content for Card 2',
      'imageURL': 'assets/Saturn.png'
    },
    {
      'title': 'Sun',
      'content': 'Content for Card 2',
      'imageURL': 'assets/Sun.png'
    },
    {
      'title': 'Jupiter',
      'content': 'Content for Card 2',
      'imageURL': 'assets/Jupiter.png'
    },
    // Add more card data as needed
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250, // Adjust the height as needed
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: cardData.length,
        itemBuilder: (BuildContext context, int index) {
          return Card(
            elevation: 4,
            margin: EdgeInsets.all(10),
            color: g6,
            shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12), // Rounded corners
            // side: BorderSide(
            //   color: Colors.white, // Border color
            //   width: 2, // Border width
            // ),
          ),
            child: Container(
              width: 200, // Adjust the width of the card as needed
              padding: EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Stack(
                    alignment: Alignment.topCenter,
                    children: [
                      Transform.translate(
                        offset: Offset(40, -25),
                        // Adjust the offset to control the elevation
                        child: Image.asset(
                          cardData[index]["imageURL"],),
                      ),
                    ],
                  ),
                  Row(crossAxisAlignment: CrossAxisAlignment.start,

                    children: [
                      Text(
                        cardData[index]['title'],
                        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold,color: Colors.white),
                      ),
                      Spacer(),
                      Image.asset('assets/right.png',height: 30,width: 30,)

                    ],
                  ),
                  SizedBox(height: 8),
                  // Text(cardData[index]['content']),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}



class SpaceFacts extends StatelessWidget {
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
              title: Text('How aliens pick our signals?',
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold,color: Colors.white )  ),
            ),
            Padding(
              padding: EdgeInsets.all(20.0),
              child: Text(
                "blabh blabh blabh blabh blabh blabh blabh blabh blabh blabh blabh blabh"
                    "blabh blabh blabh blabh blabh blabh blabh blabh blabh blabh blabh blabh"
                    "blabh blabh blabh blabh blabh blabh blabh blabh blabh blabh blabh blabh",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold,color: Colors.white )
              ),
            ),
          ],
        ),
      ),
    );
  }
}
