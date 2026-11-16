obj_player.canMove = false;
if (face_right) {
    obj_player.sprite_index = right;
} else if (!face_right) {
    obj_player.sprite_index = spr_gaDown_2;
}

if (view_check) {
    view_check = false;
    instance_create_depth(384, obj_player.y, 0, obj_npcOnca_1);
    instance_create_depth(384, obj_player.y, 0, obj_greenBlock);
}

