import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:the_book_of_shaders_in_flutter/chapters/gettingStarted/fragmentCoordinates/fragment_coordinates_shader_painter.dart';
import 'package:the_book_of_shaders_in_flutter/common/reactive_widget.dart';

class FragmentCoordinatesShader extends StatelessWidget {
  final FragmentShader shader;

  const FragmentCoordinatesShader({required this.shader, super.key});

  @override
  Widget build(BuildContext context) {
    return ReactiveWidget(
      builder: (context, time, bounds) {
        return CustomPaint(
          painter: FragmentCoordinatesShaderPainter(
            shader: shader,
            time: time,
          ),
        );
      },
    );
  }
}
