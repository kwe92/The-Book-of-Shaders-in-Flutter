import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:the_book_of_shaders_in_flutter/chapters/algorithmicDrawing/colorsAndGradients/colors_and_gradients_shader_painter.dart';
import 'package:the_book_of_shaders_in_flutter/common/ticking_builder.dart';

class ColorsAndGradientsShader extends StatelessWidget {
  final FragmentShader shader;
  const ColorsAndGradientsShader({required this.shader, super.key});

  @override
  Widget build(BuildContext context) {
    return TickingBuilder(
      builder: (context, time) => CustomPaint(
        painter: ColorsAndGradientsShaderPainter(shader: shader, time: time),
      ),
    );
  }
}
