draw_set_color(c_white);
draw_set_halign(fa_left);
draw_set_valign(fa_top);
//draw_text(10, 10, "Players: " + string(instance_number(obj_player)));
if instance_exists(obj_player) {
if obj_player.canMove {
    draw_text(100,10, "true")
}
    }