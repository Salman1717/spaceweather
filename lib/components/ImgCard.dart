import 'package:flutter/material.dart';

class ImgCard extends StatelessWidget {
  final String img;
  final String title;

  const ImgCard({super.key,
    required this.img,
    required this.title,
  });

  @override
  Widget build(BuildContext context){
  return Stack(
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
                fontWeight: FontWeight.w700,
              )
          ))
    ],

  );

  }
}