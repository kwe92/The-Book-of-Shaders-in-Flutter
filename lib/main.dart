// ignore_for_file: unused_import

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:the_book_of_shaders_in_flutter/chapters/algorithmicDrawing/colorsAndGradients/colors_and_gradients_shader.dart';
import 'package:the_book_of_shaders_in_flutter/chapters/algorithmicDrawing/shapingFunctions/custom_shaping_functions_shader.dart';
import 'package:the_book_of_shaders_in_flutter/chapters/algorithmicDrawing/shapingFunctions/shaping_functions_shader.dart';
import 'package:the_book_of_shaders_in_flutter/chapters/gettingStarted/fragmentCoordinates/fragment_coordinates_shader.dart';
import 'package:the_book_of_shaders_in_flutter/chapters/gettingStarted/helloWorld/hello_world_shader.dart';
import 'package:the_book_of_shaders_in_flutter/chapters/gettingStarted/uniforms/uniforms_and_time_shader.dart';

late FragmentProgram helloWorldFragmentProgram;
late FragmentProgram uniformsFragmentProgram;
late FragmentProgram fragCoordsFragmentProgram;
late FragmentProgram shapingFunctionsFragmentProgram;
late FragmentProgram colorsAndGradientsFragmentProgram;
late FragmentProgram customShapingFunctionsFragmentProgram;

Future<void> main() async {
  helloWorldFragmentProgram = await FragmentProgram.fromAsset('assets/shaders/hello_world.frag');

  uniformsFragmentProgram = await FragmentProgram.fromAsset('assets/shaders/uniforms.frag');

  fragCoordsFragmentProgram = await FragmentProgram.fromAsset('assets/shaders/fragment_coordinates.frag');

  shapingFunctionsFragmentProgram = await FragmentProgram.fromAsset('assets/shaders/shaping_functions.frag');

  colorsAndGradientsFragmentProgram = await FragmentProgram.fromAsset('assets/shaders/colors_and_gradients.frag');

  customShapingFunctionsFragmentProgram = await FragmentProgram.fromAsset('assets/shaders/custom_shaping_functions.frag');

  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // home: HelloWorldShader(helloWorldFragmentProgram.fragmentShader()), // Lesson 1

      // home: UniformsAndTimeShader(shader: uniformsFragmentProgram.fragmentShader()), // Lesson 2

      // home: FragmentCoordinatesShader(shader: fragCoordsFragmentProgram.fragmentShader()), // Lesson 3

      // home: ShapingFunctionsShader(shader: shapingFunctionsFragmentProgram.fragmentShader()), // Lesson 4
      home: CustomShapingFunctionsShader(shader: customShapingFunctionsFragmentProgram.fragmentShader()), // Lesson 4.1

      // home: ColorsAndGradientsShader(shader: colorsAndGradientsFragmentProgram.fragmentShader()), // Lesson 5
    );
  }
}
