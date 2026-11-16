obj_gameState.sala_atual = 2;      // índice da fase 2
obj_gameState.prox_sala  = rm_3;   // próxima room


//coloca o player no lugar certo
if (instance_exists(obj_player))
{
    obj_player.x = 1526;
    obj_player.y = 2944;
}
//torna o jogador visivel e movel
if (instance_exists(obj_player))
{
    obj_player.visible = true; 
    obj_player.canMove = true; 
    obj_player.sprite_index = spr_gaUp
}