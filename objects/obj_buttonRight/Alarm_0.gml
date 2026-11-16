// Inherit the parent event
event_inherited();

obj_bookUI.pagina_atual = clamp(obj_bookUI.pagina_atual + 1, 0, array_length(obj_gameState.paginas) - 1);