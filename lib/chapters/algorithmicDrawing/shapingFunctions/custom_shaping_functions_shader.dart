import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:the_book_of_shaders_in_flutter/chapters/algorithmicDrawing/shapingFunctions/custom_shaping_functions_shader_painter.dart';
import 'package:the_book_of_shaders_in_flutter/common/ticking_builder.dart';

class CustomShapingFunctionsShader extends StatelessWidget {
  final FragmentShader shader;

  const CustomShapingFunctionsShader({
    required this.shader,
    super.key,
  });

  @override
  Widget build(BuildContext context) => TickingBuilder(
        builder: (context, time) => CustomPaint(
          painter: CustomShapingFunctionsShaderPainter(
            shader: shader,
            time: time,
          ),
        ),
      );
}
