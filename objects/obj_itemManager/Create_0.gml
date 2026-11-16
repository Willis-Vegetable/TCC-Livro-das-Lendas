depth = -9999;

global.font = fnt_inventory;

//item constructor
function create_item(_name, _desc, _spr) constructor  
    {
    name = _name;
    description = _desc;
    sprite = _spr;
    }

//create the items
global.item_list = 
{
    
    salamanca : new create_item( 
        "salamanca", 
        "jarau", 
        spr_salamanca 
        ), 
    
    pagina : new create_item( 
        "pagina", 
        "coloque no livro das lendas", 
        spr_pagina 
        ),
}

//create the inventory
inv = array_create(0);

selected_item = -1;

//for drawing and mouse position
sep = 48;
screen_border = 32;
