// Avança o ângulo
angulo += vel_angular;

// Calcula a posição no círculo
x = centro_x + lengthdir_x(raio, angulo);
y = centro_y + lengthdir_y(raio, angulo);

// Gira o sprite
//image_angle += rot_spd;