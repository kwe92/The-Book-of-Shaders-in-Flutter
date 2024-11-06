#version 460

#include <flutter/runtime_effect.glsl>

uniform vec2 uResolution;

uniform float uTime;

out vec4 fragColor;

void main() {
  vec2 pixels =  FlutterFragCoord() / uResolution;

  fragColor = vec4(pixels.x * uTime * 0.2, pixels.y * uTime * 0.2, abs(sin(uTime * 0.2)), 1.0);
}

// Flutter Coordinates

//   - screen coordinated of the pixel or screen fragment the active thread is working on

//   - allowing you to know what part of a canvas any given thread is working on

//   - the coordinates are not uniform as they will vary from thread to thread

// Normalizing Fragment Coordinates

//   - to normalize fragment coordinates in flutter divide FlutterFragCoord() by uResolution (total canvas resolution / size)

//   - normalizing fragment coordinates will place its range between 0 and 1

//   - GLSL also has a default gl_FragCoord input that can be used to normalize fragment coordinates

//   - normalizing fragment coordinates makes mapping values to color channels easier

// Flutter Canvas Origin

//   - top left of the canvas