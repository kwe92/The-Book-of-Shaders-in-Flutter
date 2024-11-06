// ignore_for_file: unused_import

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:the_book_of_shaders_in_flutter/chapters/gettingStarted/fragmentCoordinates/fragment_coordinates_shader.dart';
import 'package:the_book_of_shaders_in_flutter/chapters/gettingStarted/helloWorld/hello_world_shader.dart';
import 'package:the_book_of_shaders_in_flutter/chapters/gettingStarted/uniforms/uniforms_and_time_shader.dart';

late FragmentProgram helloWorldFragmentProgram;
late FragmentProgram uniformsFragmentProgram;
late FragmentProgram fragCoordsFragmentProgram;

Future<void> main() async {
  helloWorldFragmentProgram = await FragmentProgram.fromAsset('assets/shaders/hello_world.frag');

  uniformsFragmentProgram = await FragmentProgram.fromAsset('assets/shaders/uniforms.frag');

  fragCoordsFragmentProgram = await FragmentProgram.fromAsset('assets/shaders/fragment_coordinates.frag');

  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // home: HelloWorldShader(helloWorldFragmentProgram.fragmentShader()), // Lesson 1

      //home: UniformsAndTimeShader(shader: uniformsFragmentProgram.fragmentShader()), // Lesson 2

      home: FragmentCoordinatesShader(shader: fragCoordsFragmentProgram.fragmentShader()), // Lesson 3
    );
  }
}
