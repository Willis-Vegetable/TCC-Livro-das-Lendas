obj_gameState.sala_atual = 3;      // índice da fase 3
obj_gameState.prox_sala  = rm_4;   // próxima room

//coloca o player no lugar certo
if (instance_exists(obj_player))
{
    obj_player.x = 256;
    obj_player.y = 896;
}
//torna o jogador visivel e movel
if (instance_exists(obj_player))
{
    obj_player.visible = true; 
    obj_player.canMove = true; 
}