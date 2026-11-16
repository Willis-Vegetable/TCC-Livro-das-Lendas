var _cx = display_get_gui_width()  / 2;
var _cy = display_get_gui_height() / 2;

switch (obj_gameState.sala_atual)
{
    case 0: draw_sprite(spr_texto_1, 0, _cx, _cy); break;
    case 1: draw_sprite(spr_texto_2, 0, _cx, _cy); break;
    case 2: draw_sprite(spr_texto_3, 0, _cx, _cy); break;
    case 3: draw_sprite(spr_texto_4, 0, _cx, _cy); break;
    case 4: draw_sprite(spr_texto_5, 0, _cx, _cy); break;   
}