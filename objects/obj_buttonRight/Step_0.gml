// Verifica se o jogador pressionou espaço OU seta para a direita
if (keyboard_check_pressed(vk_space) || keyboard_check_pressed(vk_right))
{
    if (obj_gameState.paginas[obj_bookUI.pagina_atual] == true)
{
    alarm[0] = 10;
}
}