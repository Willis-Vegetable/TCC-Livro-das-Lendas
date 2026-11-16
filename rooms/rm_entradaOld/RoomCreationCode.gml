obj_gameState.sala_atual = 0;      // índice da fase entrada
obj_gameState.prox_sala  = rm_1;   // próxima room

//coloca o player no lugar certo
if (instance_exists(obj_player))
{
    obj_player.x = 1408;
    obj_player.y = 1792;
}
//torna o jogador visivel e movel
if (instance_exists(obj_player))
{
    obj_player.visible = true; 
    obj_player.canMove = true; 
}