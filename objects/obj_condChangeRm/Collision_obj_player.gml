/// @description Fim da fase
var _idx = obj_gameState.sala_atual;

if (_idx < 0 || _idx >= array_length(obj_gameState.paginas))
{
    // Segurança: índice inválido, não faz nada (ou vai direto)
    transition_to_room(obj_gameState.prox_sala);
    exit;
}

if (obj_gameState.paginas[_idx] == false)
{
    // Primeira vez → mostra a página de visão
    transition_to_room(rm_pageVision);
}
else
{
    // Já viu → vai direto pra próxima
    transition_to_room(obj_gameState.prox_sala);
}