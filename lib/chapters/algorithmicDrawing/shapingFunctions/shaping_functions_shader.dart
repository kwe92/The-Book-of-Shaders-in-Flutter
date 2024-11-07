import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:the_book_of_shaders_in_flutter/chapters/algorithmicDrawing/shapingFunctions/shaping_functions_shader_painter.dart';
import 'package:the_book_of_shaders_in_flutter/common/reactive_widget.dart';

class ShapingFunctionsShader extends StatelessWidget {
  final FragmentShader shader;

  const ShapingFunctionsShader({
    required this.shader,
    super.key,
  });

  @override
  Widget build(BuildContext context) => ReactiveWidget(
        builder: (context, time, bounds) {
          return CustomPaint(
            painter: ShapingFunctionsShaderPainter(
              shader: shader,
              time: time,
            ),
          );
        },
      );
}
