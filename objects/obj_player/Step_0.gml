
var _hor = (keyboard_check(ord("D")) || keyboard_check(vk_right)) - (keyboard_check(ord("A")) || keyboard_check(vk_left));
var _ver = (keyboard_check(ord("S")) || keyboard_check(vk_down)) - (keyboard_check(ord("W")) || keyboard_check(vk_up));

var _char_data = characters[selected_character];

// colisao
// Normalize diagonal movement so you don't move faster on diagonals
/*if (_hor != 0 || _ver != 0) {
    var _len = point_distance(0, 0, _hor, _ver);
    _hor /= _len;
    _ver /= _len;
}*/

if canMove == false
{
    var _dir = array_get_index(_char_data.walk, sprite_index);
    if (_dir != -1) sprite_index = _char_data.idle[_dir];
    exit;
}

if instance_exists(obj_npcShadow) {
    if (place_meeting(x, y, obj_npcShadow)) {
    obj_shadowController.shadow = true;
    move_speed = base_speed - 2;    
    } else {
    obj_shadowController.shadow = false; 
    move_speed = base_speed;   
    }
}

// --- Horizontal movement & collision ---
var x_speed = _hor * move_speed;
if (place_meeting(x + x_speed, y, obj_solid)) {
    // Move as close as possible to the wall
    var _dir = sign(x_speed);
    while (!place_meeting(x + _dir, y, obj_solid)) {
        x += _dir;
    }
} else {
    x += x_speed;
}

// --- Vertical movement & collision ---
var y_speed = _ver * move_speed;
if (place_meeting(x, y + y_speed, obj_solid)) {
    var _dir = sign(y_speed);
    while (!place_meeting(x, y + _dir, obj_solid)) {
        y += _dir;
    }
} else {
    y += y_speed;
}

/*move_and_collide(_hor * move_speed, _ver * move_speed, tilemap, undefined, undefined, undefined, move_speed, move_speed);

if (place_meeting(x, y, obj_solid)) {
    // Back up until no longer colliding
    while (place_meeting(x, y, obj_solid)) {
        x -= sign(_hor * move_speed);
        y -= sign(_ver * move_speed);
    }
}*/


//sprites por direcao
if (_hor != 0 or _ver != 0) {
    var _dir = 0; face = DOWN;
    if (_ver < 0) { _dir = 1; face = UP; }
    else if (_hor > 0) { _dir = 2; face = RIGHT; }
    else if (_hor < 0) { _dir = 3; face = LEFT; }
    sprite_index = _char_data.walk[_dir];
} else {
    var _dir = array_get_index(_char_data.walk, sprite_index);
    if (_dir != -1) sprite_index = _char_data.idle[_dir];
}

//temporario vvv voltar ao menu
if keyboard_check(vk_escape)
{
    room_goto(rm_menu);
    instance_destroy(obj_player);
}
//temporario ^^^

//interact with push objects
interactKeyPressed = keyboard_check_pressed(vk_space);

if interactKeyPressed == true
{
    //find the 360 degree direction to check for push objs
    var _checkDir = face * 90;
    
    //see if a push obj is found
    var _checkX = x + lengthdir_x(interactDist, _checkDir);
    var _checkY = y + lengthdir_y(interactDist, _checkDir);
    var _pushBlockInst = instance_place(_checkX, _checkY, obj_pushBlock);
    
    //if there is push obj, make it slide in direction
    if instance_exists(_pushBlockInst) && _pushBlockInst.sliding == false
    {
        _pushBlockInst.sliding = true;
        _pushBlockInst.faceDir = face;
    }
}
