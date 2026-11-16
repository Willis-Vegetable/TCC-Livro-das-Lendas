// Gate state - starts closed
is_open = false;

// Which sprite to use when closed (can be overridden in room creation code)
closed_sprite = spr_gateClosed;

// Which sprite to use when open (also overridable if you have variants)
open_sprite = spr_gateOpen;

// Apply initial sprite
//sprite_index = closed_sprite;

// Optional: delay for animation
animation_delay = 0;

// como setar o gate:
/*
is_open = true ou false;
closed_sprite = spr_gateExit (override com o sprite que quiser);
sprite_index = open_sprite ou closed_sprite (respectivo ao true e false);
*/