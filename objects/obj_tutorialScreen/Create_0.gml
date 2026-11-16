obj_player.canMove = false;
// Pega a câmera atual
var _cam = view_camera[0];
var _cam_x = camera_get_view_x(_cam);
var _cam_y = camera_get_view_y(_cam);
var _cam_w = camera_get_view_width(_cam);
var _cam_h = camera_get_view_height(_cam);

var _btnRight = instance_create_depth(_cam_x + _cam_w - 96, _cam_y + _cam_h - 96, 0, obj_buttonRight);

etapa_atual = 0;
etapa_final = 1;