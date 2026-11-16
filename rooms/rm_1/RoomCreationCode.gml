obj_gameState.sala_atual = 1;      // índice da fase 1
obj_gameState.prox_sala  = rm_2;   // próxima room

//coloca o player no lugar certo
if (instance_exists(obj_player))
{
    obj_player.x = 830;
    obj_player.y = 3000;
}
//torna o jogador visivel e movel
if (instance_exists(obj_player))
{
    obj_player.visible = true; 
    obj_player.canMove = true; 
}
