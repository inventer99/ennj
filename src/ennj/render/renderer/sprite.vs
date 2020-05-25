#version 300 es

in vec3 a_position;
in vec2 a_texcoord;

uniform mat4 u_projectionMatrix;
uniform mat4 u_viewMatrix;
uniform mat4 u_modelMatrix;

out vec2 v_texcoord;

void main() {
    gl_Position = u_projectionMatrix * u_viewMatrix * u_modelMatrix * vec4(a_position.xyz, 1.0);
    v_texcoord = a_texcoord;
}
