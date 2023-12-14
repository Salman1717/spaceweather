import 'package:flutter/material.dart';

class DataInfoRow extends StatelessWidget {
  final String label1;
  final String data1;
  final String label2;
  final String data2;

  const DataInfoRow({super.key,
    required this.label1,
    required this.data1,
    required this.label2,
    required this.data2,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [Stack(
        children: [
          Container(
            width: 165,
            height: 150,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Colors.white.withOpacity(0.2),
            ),
          ),
          Positioned(
            top: 19,
            left: 10,
            child: Text(
              label1,
              style: const TextStyle(
                fontFamily: 'Oxygen',
                fontWeight: FontWeight.w500,
                fontSize: 30,
                color: Color(0xFFA3D1F2),
              ),
            ),
          ),
          Positioned(
            top: 78,
            left: 10,
            child: Text(
              data1,
              style: const TextStyle(
                fontFamily: 'Oxygen',
                fontWeight: FontWeight.w300,
                fontSize: 30,
                color: Color(0xFFD4F1F4),
              ),
            ),
          ),
        ],
      ),
        Stack(
          children: [
            Container(
              width: 165,
              height: 150,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.white.withOpacity(0.2),
              ),
            ),
            Positioned(
              top: 19,
              left: 10,
              child: Text(
                label2,
                style: const TextStyle(
                  fontFamily: 'Oxygen',
                  fontWeight: FontWeight.w500,
                  fontSize: 30,
                  color: Color(0xFFA3D1F2),
                ),
              ),
            ),
            Positioned(
              top: 78,
              left: 10,
              child: Text(
                data2,
                style: const TextStyle(
                  fontFamily: 'Oxygen',
                  fontWeight: FontWeight.w300,
                  fontSize: 30,
                  color: Color(0xFFD4F1F4),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}

