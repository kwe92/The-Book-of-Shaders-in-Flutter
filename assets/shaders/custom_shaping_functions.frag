#version 460 core

#include <flutter/runtime_effect.glsl>

#define PI 3.14159265359

uniform vec2 uResolution;

out vec4 fragColor;

float plot(vec2 pixels, float pct) {
    return smoothstep(pct - 1.0, pct, pixels.y) -
           smoothstep(pct, pct + 1.0, pixels.y);
}

void main() {
    vec2 pixels = FlutterFragCoord() / uResolution;

    float y = pow(pixels.x, 5);

    vec3 color = vec3(y);

    // plot line
    float pct = plot(pixels, y);

    color = (1.0 - pct) * color + pct * vec3(0.0, 1.0, 0.0);

    fragColor = vec4(color, 1.0);
    
}