// ============================================================
// DIALOG BOX - END STEP EVENT
// Handles typewriter effect and message advancement.
// ============================================================

// Nothing to do if no message is active
if (current_message < 0) exit;

var _str = messages[current_message].msg;

if (current_char < string_length(_str))
{
    // --- Typewriter effect ---
    // Holding the input key doubles the reveal speed.
    // The (1 + keyboard_check(...)) pattern = speed * 1 or speed * 2.
    current_char += char_speed * (1 + (keyboard_check(input_key) * 4));

    // Clamp so we never overshoot the string length
    current_char = min(current_char, string_length(_str));

    // Copy the visible substring (start at 0, take current_char chars)
    draw_message = string_copy(_str, 0, current_char);
}
else if (keyboard_check_pressed(input_key))
{
    // --- Message fully typed: advance on key press ---
    current_message++;

    if (current_message >= array_length(messages))
    {
        // No more messages -> close the dialogue box
        instance_destroy();
        obj_player.canMove = true;
    }
    else
    {
        // Start typing the next message from the beginning
        current_char  = 0;
        draw_message  = "";
    }
}