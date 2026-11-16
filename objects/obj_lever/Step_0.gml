if (instance_exists(obj_player) && distance_to_object(obj_player) < 8)
{
    can_interact = true;
    if (keyboard_check_pressed(input_key))
    {
        lever_pull();
    } 
} else {
        can_interact = false;
    }

