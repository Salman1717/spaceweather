import 'package:arapp/earthAR.dart';
import 'package:arapp/moonAR.dart';
import 'package:arapp/sunAR.dart';
import 'package:arapp/marsAR.dart';
import 'package:arapp/mercuryAR.dart';
import 'package:arapp/jupiterAR.dart';
import 'package:arapp/saturnAR.dart';
import 'package:arapp/neptuneAR.dart';
import 'package:arapp/venusAR.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'AR Earth App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: earthAr(),
    );
  }
}
