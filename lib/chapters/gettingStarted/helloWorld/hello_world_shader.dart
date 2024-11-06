import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:the_book_of_shaders_in_flutter/chapters/gettingStarted/helloWorld/hello_world_shader_painter.dart';

class HelloWorldShader extends StatelessWidget {
  final FragmentShader shader;

  const HelloWorldShader(this.shader, {super.key});

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: HelloWorldShaderPainter(shader),
    );
  }
}
