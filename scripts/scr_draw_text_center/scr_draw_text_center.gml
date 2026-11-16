/// @function draw_text_center(_text, _x, _y, _color)
function draw_text_center(_text, _x, _y, _color = c_white)
{
    draw_set_halign(fa_center);
    draw_set_valign(fa_top);
    
    // draw_text_colour não altera draw_set_colour global
    draw_text_colour(_x, _y, _text,
                     _color, _color, _color, _color, 1);
    
    draw_set_halign(fa_left);
    draw_set_valign(fa_top);
}