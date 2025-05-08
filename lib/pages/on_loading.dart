import 'package:flutter/material.dart';

class OnLoadingPage extends StatelessWidget {
  const OnLoadingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image.asset(
          'assets/loading_images/on_loading_2.png',
          width: double.infinity,
          height: double.infinity,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
