// Algorithmic Drawings

#version 460 core

#include <flutter/runtime_effect.glsl>

#define PI 3.14159265359

uniform vec2 uResolution;

// uniform vec2 uMouse;

uniform float uTime;

out vec4 fragColor;

float plot(vec2 pixels, float pct) {
    return smoothstep(pct - 0.02, pct, pixels.y) -
           smoothstep(pct, pct + 0.02, pixels.y);
}
void main() {
    vec2 pixels = FlutterFragCoord() / uResolution;

    // returns 0.0 for all values bellow 0.5 and 1.0 otherwise
    // float y = step(0.5, pixels.x);

    // interpolate between 0.1 and 0.9
    // float y = smoothstep(0.1, 0.9, pixels.x);

    // float y = smoothstep(0.2,0.5,pixels.x) - smoothstep(0.5,0.8,pixels.x);

    // float y = frac(sin(pixels.x * uTime));

    float y;

    //y = mod(x,0.5); // return x modulo of 0.5
    //y = fract(x); // return only the fraction part of a number
    //y = ceil(x);  // nearest integer that is greater than or equal to x
    //y = floor(x); // nearest integer less than or equal to x
    //y = sign(x);  // extract the sign of x
    //y = abs(x);   // return the absolute value of x
    y = clamp(pixels.x,0.0,1.0); // constrain x to lie between 0.0 and 1.0
    //y = min(0.0,x);   // return the lesser of x and 0.0
    //y = max(0.0,x);   // return the greater of x and 0.0 

    vec3 color = vec3(y);

    // plot line

    float pct = plot(pixels, y);

    color = (1.0 - pct) * color + pct * vec3(0.0, 1.0, 0.0);

    fragColor = vec4(color, 1.0);

}

// 1-Dimensional Functions

//   - the foundation of shader art

// Linear Interpolation?

//   - really understanding linear interpolation

// step function

//   - an interpolation function that takes two arguments

//   - limit or threshold and the value you want to pass in or check
//     any value under the limit will return 0 and 1 otherwise (above the limit)

// smoothstep function

//   - given a range of two numbers and a value
//     the function will interpolate the value between the defined range

//   - the parameters are begin range, end range and the value to interpolate

// Accessing Elements of a Vector

//   - there are multiple ways to access elements of vectors in GLSL

//   - e.g. vec4 vector;

// vector[0] = vector.r = vector.x = vector.s; they all reference the same element of a Vector

// vector[1] = vector.g = vector.y = vector.t;

// vector[2] = vector.b = vector.z = vector.p;

// vector[3] = vector.a = vector.w = vector.q;

// swizzle

//   - the ability to access elements by name in any order

//   - e.g.

//          vec4 vector = vec4(1.0, 2.0, 3.0, 4.0); 

//          vec4.zywx == vec4(3.0, 2.0, 4.0, 1.0);

//  - an element can also be accessed more than once