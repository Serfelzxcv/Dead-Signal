// lib/animations/fog_animation.dart
import 'package:flutter/material.dart';
import 'dart:ui';

class FogAnimation extends StatefulWidget {
  final Widget child;

  const FogAnimation({super.key, required this.child});

  @override
  _FogAnimationState createState() => _FogAnimationState();
}

class _FogAnimationState extends State<FogAnimation> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: Duration(seconds: 2), // La animación durará 2 segundos
      vsync: this,
    );
    _animation = Tween<double>(begin: 1.0, end: 0.0).animate(
      CurvedAnimation(parent: _controller, curve: Curves.easeOut),
    );
    _controller.forward(); // Inicia la animación
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        widget.child, // El contenido que se mostrará después de la animación
        AnimatedBuilder(
          animation: _controller,
          builder: (context, child) {
            return BackdropFilter(
              filter: ImageFilter.blur(sigmaX: _animation.value * 10, sigmaY: _animation.value * 10),
              child: Container(
                color:  Color.fromARGB(255, 255, 255, 255).withOpacity(0.1), // Color blanco con opacidad
              ),
            );
          },
        ),
      ],
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
