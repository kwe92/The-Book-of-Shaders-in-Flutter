import 'dart:ui';

import 'package:flutter/material.dart';

class ShapingFunctionsShaderPainter extends CustomPainter {
  final FragmentShader shader;

  final double time;

  const ShapingFunctionsShaderPainter({
    required this.shader,
    required this.time,
  });

  @override
  void paint(Canvas canvas, Size size) {
    // set shader uniforms
    shader.setFloat(0, size.width);
    shader.setFloat(1, size.height);

    shader.setFloat(2, time);

    // draw canvas
    final paint = Paint()..shader = shader;

    canvas.drawRect(Rect.fromLTWH(0, 0, size.width, size.height), paint);
  }

  @override
  bool shouldRepaint(ShapingFunctionsShaderPainter oldDelegate) => shader != oldDelegate.shader || time != oldDelegate.time;
}
