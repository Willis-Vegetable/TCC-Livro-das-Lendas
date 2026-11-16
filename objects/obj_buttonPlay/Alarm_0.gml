// Inherit the parent event
event_inherited();

if (!obj_gameState.tutor_complete){
    transition_to_room(rm_inicio);
} else if (obj_gameState.tutor_complete) {
    transition_to_room(rm_book);
}
