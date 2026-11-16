move_speed = 8;
base_speed = 8;

tilemap = layer_tilemap_get_id("tileCollision")

characters = [
    {
        walk: [spr_playerWalkDown, spr_playerWalkUp, spr_playerWalkRight, spr_playerWalkLeft],
        idle: [spr_playerIdleDown, spr_playerIdleUp, spr_playerIdleRight, spr_playerIdleLeft],
        initial: [spr_playerIdleDown]
    },
    {
        walk: [spr_player2WalkDown, spr_player2WalkUp, spr_player2WalkRight, spr_player2WalkLeft],
        idle: [spr_player2IdleDown, spr_player2IdleUp, spr_player2IdleRight, spr_player2IdleLeft],
        initial: [spr_player2IdleDown]
    },
    {
        walk: [spr_gaDownWalk, spr_gaUpWalk, spr_gaRightWalk, spr_gaLeftWalk],
        idle: [spr_gaDown, spr_gaUp, spr_gaRight, spr_gaLeft],
        initial: [spr_gaDown]
    }
];

selected_character = 2;

var _set_initial = characters[selected_character];

sprite_index = _set_initial.initial[0];

face = DOWN;

interactDist = 16;

canMove = true;