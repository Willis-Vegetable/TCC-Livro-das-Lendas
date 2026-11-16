button_pressed = place_meeting(x, y, obj_pushBlock);
if (button_pressed)
{
    sprite_index = spr_vazioFull;
}
else
{
    sprite_index = spr_vapor;
}

if (button_pressed && !button_pressed_prev) {
    obj_buttonCounter.total_pressed += 1;
    if pedra_conectada = 1 {
        obj_gameState.pedra_1 = true
    } else if pedra_conectada = 2 {
        obj_gameState.pedra_2 = true
    } else if pedra_conectada = 3 {
        obj_gameState.pedra_3 = true
    } else {
        if instance_exists(obj_player) {
            instance_destroy(obj_player);
        }
    }
    
}
button_pressed_prev = button_pressed;