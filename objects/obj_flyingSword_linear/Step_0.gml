x += lengthdir_x(spd, dir);
y += lengthdir_y(spd, dir);

image_angle += rot_spd_atual;

if (point_distance(x, y, alvo_x, alvo_y) <= spd) {
    x = alvo_x;
    y = alvo_y;
    
    if (alvo_x == xend && alvo_y == yend) {
        alvo_x = xstart;
        alvo_y = ystart;
    } else {
        alvo_x = xend;
        alvo_y = yend;
    }
    
    dir = point_direction(x, y, alvo_x, alvo_y);
    
    // Inverte o sentido da rotação a cada troca de alvo
    rot_spd_atual = -rot_spd_atual;
}