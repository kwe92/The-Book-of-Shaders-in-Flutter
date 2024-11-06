import 'dart:ui';

import 'package:flutter/material.dart';

class HelloWorldShaderPainter extends CustomPainter {
  final FragmentShader shader;
  const HelloWorldShaderPainter(this.shader);
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()..shader = shader;

    canvas.drawRect(Rect.fromLTWH(0, 0, size.width, size.height), paint);
  }

  @override
  bool shouldRepaint(HelloWorldShaderPainter oldDelegate) => false; // no mutable fields on class, so no need to repaint
}
