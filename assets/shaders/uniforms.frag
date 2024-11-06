#version 460 core

#include <flutter/runtime_effect.glsl>

uniform float uTime;

out vec4 fragColor;

void main() {
    fragColor = vec4(abs(sin(uTime * 0.4)), abs(sin(uTime * 0.8)), abs(sin(uTime * 1.2)) , 1.0);
}

// GPU: Threads

//   - can manage a large number of parellel threads and execute math quickly

//   - threads are inherintly setup for Shared Memory Concurrency but within the GPU
//     they typically do not communicate and are isolated from one another (blind to other threads)

//   - threads are also memoryless in the sense that they do not remember an operation after it has been executed
//     and quickly move on to the next task they are assigned

// uniforms

//   - inputs sent by CPU received by GPU that are distributed uniformally to all threads

//   - uniforms are read-only (immutable) as they are shared with all threads

//   - uniforms are declared outside of the main function using the uniform keyword

//       - e.g. uniform vec4 uResolution;

//       - uniform Type uniformVariableName;

//   - uniform variable start with 'u' or 'i' by convention, we will use 'u'

// common uniforms

//   - uResolution or iResolution / uSize: canvas size as vec2 (width, height), typically needs to be normalized into clip space -1 to 1

//   - uTime or iTime: time in seconds since the shader loaded

//   - uMouse or iMouse: mouse position in screen pixels

// GPU hardware acceleration

//   - math functions are accelerated by using hardware and microchips over software
//     allowing operations to be performed at the speed on light

// Adding a Time Component Using Flutter

//   - passing in the start time of a shader to manage animations
//     requires a few steps in Flutter

//   - step 1: Widget to Manage Timer (Ticker)

//       - you need a mechanism to start the timer and in our case the timer
//         will be a StatefulWidget that subclases SingleTickerProviderStateMixin