obj_gameState.sala_atual = 4;      // índice da fase 4
obj_gameState.prox_sala  = rm_menu;   // próxima room

//coloca o player no lugar certo
if (instance_exists(obj_player))
{
    obj_player.x = 640;
    obj_player.y = 256;
}
//torna o jogador visivel e movel
if (instance_exists(obj_player))
{
    obj_player.visible = true; 
    obj_player.canMove = true; 
    obj_player.sprite_index = spr_gaRight
}

if obj_gameState.pedra_1 {
    instance_create_depth(1152, 256, 0, obj_pushBlock)
} else {
    instance_create_depth(768, 256, 0, obj_pushBlock)
}

if obj_gameState.pedra_2 {
    instance_create_depth(896, 1920, 0, obj_pushBlock)
} else {
    instance_create_depth(1024, 768, 0, obj_pushBlock)
}

if obj_gameState.pedra_3 {
    instance_create_depth(1536, 1920, 0, obj_pushBlock)
} else {
    instance_create_depth(1408, 768, 0, obj_pushBlock)
}

instance_deactivate_object(obj_firever1);
instance_deactivate_object(obj_firever2);
instance_deactivate_object(obj_firehor1);
instance_deactivate_object(obj_firehor2);