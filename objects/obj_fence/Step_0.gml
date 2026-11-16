// ============================================================
// NPC PARENT - STEP EVENT
// Detects player proximity and starts a dialogue on key press.
// ============================================================

// Don't do anything while a dialogue box is already open
if (instance_exists(obj_dialogBox)) exit;

// Check if the player is nearby (distance in pixels)
if (instance_exists(obj_player) && distance_to_object(obj_player) < 32)
{
    can_talk = true;

    if (keyboard_check_pressed(input_key))
    {
        sprite_index = spr_fenceOpen;
        is_open = true;
    }
}
else
{
    can_talk = false;
}   