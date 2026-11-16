if (!instance_exists(obj_player))
{
    instance_create_depth(0, 0, 0, obj_player);
}

//coloca o player no lugar certo
if (instance_exists(obj_player))
{
    obj_player.x = 1216;
    obj_player.y = 896;
}
//torna o jogador visivel e movel
if (instance_exists(obj_player))
{
    obj_player.visible = true; 
    obj_player.canMove = true; 
    obj_player.sprite_index = spr_gaUp
}

