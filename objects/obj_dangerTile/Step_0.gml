if (adminhor) {
// Se "ativo" for true -> ativa tile1, desativa tile2, tile3, tile4
if (ativo) {
    layer_set_visible(lay_tile1, true);
    layer_set_visible(lay_tile2, false);
    layer_set_visible(lay_tile3, false);
    layer_set_visible(lay_tile4, false);
}
// Senão, se "aviso" for true -> ativa tile2, desativa tile1, tile3, tile4
else if (aviso) {
    layer_set_visible(lay_tile1, false);
    layer_set_visible(lay_tile2, true);
    layer_set_visible(lay_tile3, false);
    layer_set_visible(lay_tile4, false);
}} else if (adminver) {
// Se "ativo" for true -> ativa tile1, desativa tile2, tile3, tile4
if (ativo) {
    layer_set_visible(lay_tile1, false);
    layer_set_visible(lay_tile2, false);
    layer_set_visible(lay_tile3, true);
    layer_set_visible(lay_tile4, false);
}
// Senão, se "aviso" for true -> ativa tile2, desativa tile1, tile3, tile4
else if (aviso) {
    layer_set_visible(lay_tile1, false);
    layer_set_visible(lay_tile2, false);
    layer_set_visible(lay_tile3, false);
    layer_set_visible(lay_tile4, true);
}}