// Move em direção ao alvo
if (para_esquerda) {
    x = max(x - spd, x_alvo);  // não passa do alvo
} else {
    x = min(x + spd, x_alvo);
}

// Chegou exatamente no alvo? Reinicia
if (x == x_alvo) {
    sala_restart();
}