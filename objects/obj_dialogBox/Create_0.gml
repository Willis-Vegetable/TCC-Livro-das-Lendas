// ============================================================
// DIALOG BOX - CREATE EVENT
// Holds the state for the currently displayed dialogue.
// ============================================================

// Array of message structs: each entry is { name: "...", msg: "..." }
messages = [];

// Index of the message currently being shown (-1 = nothing active)
current_message = -1;

// How many characters of the current message have been revealed
current_char = 0;

// The portion of the current message that is actually drawn on screen
draw_message = "";

// ---- Tunables -------------------------------------------------
char_speed = 0.5;              // Chars added per step (doubled while holding input)
input_key  = vk_space;         // Key used to advance / skip typing

// ---- Cached GUI dimensions -----------------------------------
gui_w = display_get_gui_width();
gui_h = display_get_gui_height();

obj_player.canMove = false;