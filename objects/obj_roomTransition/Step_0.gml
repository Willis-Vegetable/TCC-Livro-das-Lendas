/// @description Controla o fade
switch (fade_state)
{
    case "out":
        if instance_exists(obj_player) 
        {
            obj_player.canMove = false;
        }
        fade_alpha += fade_speed;
        if (fade_alpha >= 1)
        {
            fade_alpha = 1;
            // Escureceu tudo → troca de room
            if (next_room != -1)
            {
                room_goto(next_room);
                next_room = -1;
            }
            fade_state = "in";
        }
        break;

    case "in":
        //if instance_exists(obj_player) 
        //{
            //obj_player.canMove = true;
        //}
        fade_alpha -= fade_speed;
        if (fade_alpha <= 0)
        {
            fade_alpha = 0;
            fade_state = "idle";
        }
        break;
}