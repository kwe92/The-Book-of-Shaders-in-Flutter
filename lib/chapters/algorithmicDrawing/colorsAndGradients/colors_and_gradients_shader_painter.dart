import 'dart:ui';

import 'package:flutter/material.dart';

class ColorsAndGradientsShaderPainter extends CustomPainter {
  final FragmentShader shader;
  final double time;

  const ColorsAndGradientsShaderPainter({
    required this.shader,
    required this.time,
  });
  @override
  void paint(Canvas canvas, Size size) {
    shader.setFloat(0, time);

    final paint = Paint()..shader = shader;

    canvas.drawRect(Rect.fromLTWH(0, 0, size.width, size.height), paint);
  }

  @override
  bool shouldRepaint(ColorsAndGradientsShaderPainter oldDelegate) => shader != oldDelegate.shader || time != oldDelegate.time;
}
