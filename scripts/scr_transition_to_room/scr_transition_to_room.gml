/// @function transition_to_room(_room)
/// @param {Room Asset} _room  Room de destino
/// @description Inicia o fade out e troca para a room informada
function transition_to_room(_room)
{
    // Segurança: evita iniciar duas transições ao mesmo tempo
    if (!instance_exists(obj_roomTransition)) return;

    var _t = instance_find(obj_roomTransition, 0);

    // Se já está no meio de uma transição, ignora
    if (_t.fade_state != "idle") return;

    _t.next_room  = _room;
    _t.fade_state = "out";
}