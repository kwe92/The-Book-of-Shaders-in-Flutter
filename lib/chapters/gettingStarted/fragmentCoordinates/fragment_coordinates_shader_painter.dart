import 'dart:ui';

import 'package:flutter/material.dart';

class FragmentCoordinatesShaderPainter extends CustomPainter {
  final FragmentShader shader;

  final double time;

  const FragmentCoordinatesShaderPainter({
    required this.shader,
    required this.time,
  });

  @override
  void paint(Canvas canvas, Size size) {
    shader.setFloat(0, size.width);

    shader.setFloat(1, size.height);

    // set time uniform variable
    shader.setFloat(2, time);

    final paint = Paint()..shader = shader;

    canvas.drawRect(Rect.fromLTWH(0, 0, size.width, size.height), paint);
  }

  @override
  bool shouldRepaint(FragmentCoordinatesShaderPainter oldDelegate) => time != oldDelegate.time || shader != oldDelegate.shader;
}
