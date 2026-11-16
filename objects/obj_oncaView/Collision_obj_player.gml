obj_player.canMove = false;
if (face_right) {
    obj_player.sprite_index = spr_gaDown_1;
} else if (!face_right) {
    obj_player.sprite_index = left;
}

if (view_check) {
    view_check = false;
    instance_create_depth(2432, obj_player.y, 0, obj_npcOnca);
    instance_create_depth(2432, obj_player.y, 0, obj_greenBlock);
}

