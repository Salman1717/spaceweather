import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(MyApp());

class SunPosition {
  final DateTime time;
  final double angle; // Angle of the sun in degrees

  SunPosition(this.time, this.angle);
}

class SunPositionWidget extends StatefulWidget {
  @override
  _SunPositionWidgetState createState() => _SunPositionWidgetState();
}

class _SunPositionWidgetState extends State<SunPositionWidget> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  List<SunPosition> sunPositions = []; // Fetched from API

  @override
  void initState() {
    super.initState();
    // Initialize AnimationController
    _controller = AnimationController(
      vsync: this,
      duration: Duration(seconds: 10), // Adjust the duration as needed
    );

    // Fetch sun positions from API and populate the sunPositions list
    // This is where you would make an API call to get the sun position data
    // and update the sunPositions list accordingly.
    // For demonstration purposes, let's assume the list is already populated.
    sunPositions = [
      SunPosition(DateTime.now(), 30), // Sample data
      // ... Add more data here
    ];

    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Sun Position Widget'),
        ),
        body: Center(
          child: CustomPaint(
            painter: SunPositionPainter(sunPositions, _controller),
          ),
        ),
      ),
    );
  }
}

class SunPositionPainter extends CustomPainter {
  final List<SunPosition> sunPositions;
  final Animation<double> animation;

  SunPositionPainter(this.sunPositions, this.animation) : super(repaint: animation);

  @override
  void paint(Canvas canvas, Size size) {
    // Implement your custom painting logic here
    // Use the sunPositions list and the animation value to draw the sun's position curve.

    // Example code: Draw a simple curve based on angle
    final paint = Paint()
      ..color = Colors.orange
      ..style = PaintingStyle.stroke
      ..strokeWidth = 2.0;

    final path = Path();
    for (var sunPosition in sunPositions) {
      final xPos = size.width * sunPosition.angle / 360;
      final yPos = size.height * animation.value;
      final point = Offset(xPos, yPos);

      // if (path.isEmpty) {
      //   path.moveTo(point.dx, point.dy);
      // } else {
        path.lineTo(point.dx, point.dy);
      // }
    }

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sun Position App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SunPositionWidget(),
    );
  }
}
