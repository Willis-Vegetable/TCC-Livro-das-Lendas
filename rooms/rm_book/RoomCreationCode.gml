if (!instance_exists(obj_player))
{
    instance_create_depth(0, 0, 0, obj_player);
}

//coloca o player no lugar certo
if (instance_exists(obj_player))
{
    obj_player.x = 1152;
    obj_player.y = 640;
}
//torna o jogador visivel e movel
if (instance_exists(obj_player))
{
    obj_player.visible = true; 
    obj_player.canMove = true; 
}

