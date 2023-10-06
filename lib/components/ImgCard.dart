import 'package:flutter/material.dart';
import 'package:spacewether/UI/weather_info.dart';

class ImgCard extends StatelessWidget {
  final String img;
  final String title;
  final Widget destination;

  const ImgCard({super.key,
    required this.img,
    required this.title,
    required this.destination,
  });

  @override
  Widget build(BuildContext context){
  return InkWell(onTap:() {
    Navigator.push(context,
    MaterialPageRoute(builder: (context) =>destination),
    );
  },
    child:
    Stack(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(15),
          child:Image.asset("assets/home/$img",
              width: 350,
              height: 160,
              fit: BoxFit.fill),
        ),
        Positioned(
            left:10,
            top:123,
            child: Text(
                title,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                  fontFamily: 'Oxygen',
                  fontWeight: FontWeight.normal,
                )
            ))
      ],

    ));
  }
}