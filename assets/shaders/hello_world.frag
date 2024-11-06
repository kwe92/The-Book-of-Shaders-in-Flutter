#version 460 core

#include <flutter/runtime_effect.glsl>

out vec4 fragColor;

vec4 lightPurple(){
    vec4 color = vec4(0.934,0.753,1.0,1.0);

    return color;
}

void main() {

fragColor = vec4(lightPurple().xyz, 1.0);

}

//--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------//

// GLSL: main function

//   - the entry point to a shader and returns a color

//   - the final pixel color is assigned to the fragColor global variable

//--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------//

// GLSL Syntax

//   - C like language

//--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------//

// GLSL built-ins

//   - built-in types and functions

//--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------//

// Why Normalize Values?

//   - normalized values are easier to map between variables

//--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------//

// Preprocessor Macros

//   - a C feature that is part of the pre-compilation step (happens right before compiling)

//   - macro commands beging with a hashtag (#)

//--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------//

// Setting The Precision of float

//   - you can change the precision of float values using the
//     percision keyword followed by the level of percision and float

//   - e.g. precision mediump float; will set the precision of floating point values to medium

//   - lower percision means faster rendering at the cost of quality

//--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------//

// floats over intergers

//   - integer values may or may not work, so always use floats

//--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------//

// Ways to Change Pixel Color

//   - space

//   - time

//   - distance from origin

//--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------//

// No Hoisting

//   - seems like functions need to be defiened above main as there is no hoisting them from bellow
