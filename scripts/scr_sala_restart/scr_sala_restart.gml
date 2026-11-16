function sala_restart() {
    switch (obj_gameState.sala_atual)
{
    case 0: transition_to_room(rm_entrada); break;
    case 1: transition_to_room(rm_1); break;
    case 2: transition_to_room(rm_2); break;
    case 3: transition_to_room(rm_3); break; 
    case 4: transition_to_room(rm_4); break;
}
}