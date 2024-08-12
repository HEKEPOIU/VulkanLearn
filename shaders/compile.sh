#!/bin/bash
# Program:
#   This program compile the vertex and fragment shader to SPIR-V bytecode
#

glslc ./vert.glsl -o vert.spv
glslc ./frag.glsl -o frag.spv
