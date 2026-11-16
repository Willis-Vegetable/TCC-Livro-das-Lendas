// ============================================================
// NPC PARENT - STEP EVENT
// Detects player proximity and starts a dialogue on key press.
// ============================================================

// Don't do anything while a dialogue box is already open
if (instance_exists(obj_bookUI)) exit;

// Check if the player is nearby (distance in pixels)
if (instance_exists(obj_player) && distance_to_object(obj_player) < 32)
{
    can_talk = true;

    if (keyboard_check_pressed(input_key))
    {
        instance_create_depth(0, 0, 0, obj_bookUI);
        //obj_player.canMove = false;
    }
}
else
{
    can_talk = false;
}   