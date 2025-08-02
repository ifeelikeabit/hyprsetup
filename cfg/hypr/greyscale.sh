#!/bin/bash

CURRENT_SHADER=$(hyprctl getoption decoration:screen_shader -j | jq -r '.str')

if [ "$CURRENT_SHADER" = "./shader.glsl" ]; then
    hyprctl keyword decoration:screen_shader ""
  else
    hyprctl keyword decoration:screen_shader "./shader.glsl"
fi

