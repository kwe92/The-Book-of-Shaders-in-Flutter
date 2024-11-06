import 'dart:ui';

import 'package:flutter/material.dart';

class UniformsAndTimeShaderPainter extends CustomPainter {
  final FragmentShader shader;

  final double time;

  const UniformsAndTimeShaderPainter({
    required this.shader,
    required this.time,
  });

  @override
  void paint(Canvas canvas, Size size) {
    // set time uniform variable
    shader.setFloat(0, time);

    final paint = Paint()..shader = shader;

    canvas.drawRect(Rect.fromLTWH(0, 0, size.width, size.height), paint);
  }

  @override
  bool shouldRepaint(UniformsAndTimeShaderPainter oldDelegate) => time != oldDelegate.time || shader != oldDelegate.shader;
}

// Setting Shader Uniforms

//   - shader uniforms are set in the painting phase

//   - shader uniforms are set before you initialize the Paint object with a FragmentShader object

//   - setting shader uniforms typically happens before you take any other action outside of transforming values that the shader requires

//   - typically you will only use the setFloat method part of the shader

//   - index represents the index of the uniform value that you are setting

