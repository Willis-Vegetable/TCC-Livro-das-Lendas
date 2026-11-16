/// @description Desenha o sprite de acordo com a página e o array
// Como só há uma instância, acessa direto por obj_gameState
if (pagina_atual >= 0 && pagina_atual < array_length(obj_gameState.paginas))
{
    if (obj_gameState.paginas[pagina_atual] == true)
    {
        draw_sprite(spr_bookFix, 0, 32, 0);
    }
    else
    {
        draw_sprite(spr_bookRip, 0, 32, 0);
    }
    
    // ---- Símbolo da página (spr_symbol1..5) ----
    var _symbol_spr = -1;
    switch (pagina_atual)
    {
        case 0: _symbol_spr = spr_figure1; break;
        case 1: _symbol_spr = spr_figure2; break;
        case 2: _symbol_spr = spr_figure3; break;
        case 3: _symbol_spr = spr_figure4; break;
        case 4: _symbol_spr = spr_figure5; break;
    }
    
    if (_symbol_spr != -1)
    {
        draw_sprite(_symbol_spr, 0, 300, 100);
    }
    
    // ---- Texto da página (spr_text1..5) ----
    // Só desenha se a página correspondente estiver "true"
    var _cy = display_get_gui_height() / 2;
    if (obj_gameState.paginas[pagina_atual] == true)
    {
        var _text_spr = -1;
        switch (pagina_atual)
        {
            case 0: _text_spr = spr_texto_1; break;
            case 1: _text_spr = spr_texto_2; break;
            case 2: _text_spr = spr_texto_3; break;
            case 3: _text_spr = spr_texto_4; break;
            case 4: _text_spr = spr_texto_5; break;
        }
        
        if (_text_spr != -1)
        {
            draw_sprite(_text_spr, 0, 900, _cy);
        }
    }
}

// ---- Botão "Long" (avança para a sala da página atual) ----
draw_sprite(spr_buttonSmol, 0, 300, 400);

// Verifica clique do mouse
if (mouse_check_button_pressed(mb_left))
{
    // Converte coordenadas da janela para coordenadas GUI
    var _mx = device_mouse_x_to_gui(0);
    var _my = device_mouse_y_to_gui(0);
    
    // Pega dimensões do sprite do botão
    var _bw = sprite_get_width(spr_buttonSmol);
    var _bh = sprite_get_height(spr_buttonSmol);
    
    // Verifica se o clique está dentro do botão
    if (point_in_rectangle(_mx, _my,
                           300, 400,
                           300 + _bw, 400 + _bh))
    {
        // Descobre a sala correspondente à página atual
        var _target_room = room_atual_para_pagina(pagina_atual);
        
        if (_target_room != -1)
        {
            transition_to_room(_target_room);
        }
    }
}

