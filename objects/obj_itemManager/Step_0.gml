// get selected item
selected_item = -1;
for (var i = 0; i < array_length(inv); i++) 
{ 
    var _xx = screen_border; 
    var _yy = screen_border + sep*i;

    if device_mouse_x_to_gui(0) > _xx && device_mouse_x_to_gui(0) < _xx + 32 && device_mouse_y_to_gui(0) > _yy && device_mouse_y_to_gui(0) < _yy + 32
    { 
        selected_item = i;
    }
}