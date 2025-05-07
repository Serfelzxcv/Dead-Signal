// lib/main.dart
import 'package:flutter/material.dart';
import 'pages/home_page.dart';
import 'animations/fog_animation.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: FogAnimation(
          child: HomePage(),
        ),
      ),
    );
  }
}
