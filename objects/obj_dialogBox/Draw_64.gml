// ============================================================
// DIALOG BOX - DRAW GUI EVENT
// Renders the box, the speaker name, and the typed text.
// ============================================================

// Layout: box occupies the bottom 30% of the GUI
var _dx   = 0;
var _dy   = gui_h * 0.7;
var _boxw = gui_w;
var _boxh = gui_h - _dy;

// Draw the stretched background sprite
draw_sprite_stretched(spr_stretchBox, 0, _dx, _dy, _boxw, _boxh);

// Inset for text content (padding)
_dx += 16;
_dy += 16;

draw_set_font(Font1);

// ----- Speaker name (colored per character) -----
var _name = messages[current_message].name;
draw_set_colour(global.char_colors[$ _name]);
draw_text(_dx, _dy, _name);

// Reset color so the message body is always white
draw_set_colour(c_white);

// Move below the name line
_dy += 40;

// ----- Message body (wraps within the box width) -----
// string_width = _boxw - _dx * 2 accounts for padding on both sides
draw_text_ext(_dx, _dy, draw_message, -1, _boxw - _dx * 2);

draw_sprite(spr_espaco, 0, gui_w - 288, gui_h - 80)