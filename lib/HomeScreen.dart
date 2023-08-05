import 'package:flutter/material.dart';

import 'SolarAnimation.dart';
import 'SolarAnime.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(appBar: AppBar(title:const Text("Aaseem18")),
     body:  SafeArea(
      child:Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text("Chandler"),
        
        CardExample(),
        // SolarSystemFull(),
        SolarSystemAnimation(),
        // RotationTransitionExampleApp()
      ],
     ),)
      )
    );
  }
}

class CardExample extends StatelessWidget {
  const CardExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            const ListTile(
              title: Text('Moon Phases'),
            ),
            Row(
              children: <Widget>[
               Image.asset('assets/moon.jpg',width: 50,height: 50,),
                const Spacer(),
                 Image.asset('assets/moon.jpg',width: 50,height: 50,),
              const Spacer(),
                 Image.asset('assets/moon.jpg',width: 50,height: 50,),
                 const Spacer(),
                 Image.asset('assets/moon.jpg',width: 50,height: 50,),
                 const Spacer(),
                 Image.asset('assets/moon.jpg',width: 50,height: 50,),
                 const Spacer(),
                 Image.asset('assets/moon.jpg',width: 50,height: 50,),
                
              ],
            ),
const Padding(
    padding: EdgeInsets.all(16.0),
    
  ),
          ],
        ),
      ),      
    );
  }
}
