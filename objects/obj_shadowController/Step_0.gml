// Update target based on shadow flag
target_darkness = shadow ? max_darkness : 0;

// Smoothly move current darkness toward target
if (darkness < target_darkness) {
    darkness = min(darkness + darken_speed, target_darkness);
} else if (darkness > target_darkness) {
    darkness = max(darkness - darken_speed, target_darkness);
}