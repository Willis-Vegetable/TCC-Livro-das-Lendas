// Inherit the parent event
event_inherited();
obj_player.canMove = true;
with (obj_bookUI) instance_destroy();
with (obj_buttonLeft) instance_destroy();
with (obj_buttonRight) instance_destroy();
instance_destroy(); // destrói a si mesmo
