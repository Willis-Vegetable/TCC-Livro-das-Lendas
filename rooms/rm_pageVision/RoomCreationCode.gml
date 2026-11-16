// Não muda sala_atual/prox_sala — eles ainda apontam pra fase que chamou
// Só garante que o player não aparece no meio da tela de visão

if (instance_exists(obj_player))
{
    obj_player.visible = false; 
    obj_player.canMove = false; 
}
obj_gameState.paginas[obj_gameState.sala_atual] = true;


