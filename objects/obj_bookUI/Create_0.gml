pagina_atual = 0;
obj_player.canMove = false;
// Pega a câmera atual
var _cam = view_camera[0];
var _cam_x = camera_get_view_x(_cam);
var _cam_y = camera_get_view_y(_cam);
var _cam_w = camera_get_view_width(_cam);
var _cam_h = camera_get_view_height(_cam);

// Cria os botões nas bordas da tela (canto inferior)
var _btnLeft  = instance_create_depth(_cam_x + 96,          _cam_y + _cam_h - 96, 0, obj_buttonLeft);
var _btnRight = instance_create_depth(_cam_x + _cam_w - 96, _cam_y + _cam_h - 96, 0, obj_buttonRight);
var _btnDelete  = instance_create_depth(_cam_x + 96,          _cam_y + 96, 0, obj_buttonDelete);

/// @function room_atual_para_pagina(pagina)
/// @param {Real} pagina - índice da página atual (0..4)
/// @returns {Real} asset da room, ou -1 se inválido
function room_atual_para_pagina(_pagina)
{
    switch (_pagina)
    {
        case 0: return rm_entrada; // substitua pelos assets reais
        case 1: return rm_1;
        case 2: return rm_2;
        case 3: return rm_3;
        case 4: return rm_4;
    }
    return -1;
}