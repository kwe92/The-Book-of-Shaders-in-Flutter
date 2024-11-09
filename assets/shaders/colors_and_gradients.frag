#version 460 core

#include <flutter/runtime_effect.glsl>

uniform float uTime;

out vec4 fragColor;

vec3 colorA = vec3(0.149, 0.141, 0.912);

vec3 colorB = vec3(1.000, 0.833, 0.224);

void main() {
    vec3 color = vec3(0.0);

    float pct = abs(sin(uTime));
    
    color = mix(colorA, colorB, pct);

    fragColor = vec4(color, 1.0);
}

// mix function

//   - mixes two colors by a percentage represented by a value between 0-1