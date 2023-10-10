import 'package:flutter/material.dart';

class MoonPhaseWidget extends StatefulWidget {
  final double moonPhase; // Moon phase value (0.0 to 1.0)

  const MoonPhaseWidget({Key? key, required this.moonPhase}) : super(key: key);

  @override
  _MoonPhaseWidgetState createState() => _MoonPhaseWidgetState();
}

class _MoonPhaseWidgetState extends State<MoonPhaseWidget> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // Moon image
        Image.asset(
          'assets/Moon.png', // Replace with your moon image asset
          width: 200,
          height: 200,
        ),
        // Black overlay with opacity based on moon phase
        Opacity(
          opacity: 1.0 - widget.moonPhase, // 0.0 for full moon, 1.0 for new moon
          child: Container(
            width: 200,
            height: 200,
            color: Colors.black,
          ),
        ),
      ],
    );
  }
}
