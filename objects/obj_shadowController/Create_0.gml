// Shadow state
shadow = false;

// Darkening control
darkness = 0;                  // 0 = normal, 1 = fully dark (we cap at 0.5 = 50%)
target_darkness = 0;
darken_speed = 0.02;           // How fast the transition happens per step

// Max darkness (50%)
max_darkness = 0.5;