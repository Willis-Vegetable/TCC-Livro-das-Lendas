draw_set_font(global.font);

for (var i = 0; i < array_length(inv); i++) {  
    var _xx = screen_border; 
    var _yy = screen_border; 
    var _sep = sep; 
    var _color = c_white;
//icon 
    draw_sprite( inv[i].sprite, 0, _xx, _yy + _sep*i );

//get "selected" item 
    if selected_item == i 
    { 
        _color = c_yellow; 
    }
    draw_set_color(_color);

//name 
    draw_text( _xx + 48, _yy + _sep*i, inv[i].name );

//description 
    if selected_item == i 
    { 
        draw_text_ext( _xx, _yy + _sep*array_length(inv), inv[i].description, 12, 80 ); 
    }

//reset color to white 
    draw_set_color(c_white);
}