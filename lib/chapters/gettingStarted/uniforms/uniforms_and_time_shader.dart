import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:the_book_of_shaders_in_flutter/chapters/gettingStarted/uniforms/uniforms_and_time_shader_painter.dart';
import 'package:the_book_of_shaders_in_flutter/common/reactive_widget.dart';

class UniformsAndTimeShader extends StatelessWidget {
  final FragmentShader shader;

  const UniformsAndTimeShader({required this.shader, super.key});

  @override
  Widget build(BuildContext context) {
    return ReactiveWidget(
      builder: (context, time, bounds) {
        return CustomPaint(
          painter: UniformsAndTimeShaderPainter(
            shader: shader,
            time: time,
          ),
        );
      },
    );
  }
}
