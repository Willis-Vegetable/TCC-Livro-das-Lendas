xstart = x;
ystart = y;
xend = x;
yend = y;

spd = 5;
rot_spd = -12;      // rotação base (guardamos o valor original)
rot_spd_atual = rot_spd;  // rotação ativa

alvo_x = xend;
alvo_y = yend;
dir = point_direction(x, y, alvo_x, alvo_y);