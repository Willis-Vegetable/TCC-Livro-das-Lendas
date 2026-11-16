input_key = vk_space;
can_interact = false;

// Lever state - starts as off
is_on = false;
sprite_index = spr_leverOff;

// Initialize as empty array - will be filled by room creation code
linked_gates = [];

/// @function lever_pull()
/// @description Toggles the lever state and all linked gates
lever_pull =               function() {
    is_on = !is_on;
    sprite_index = is_on ? spr_leverOn : spr_leverOff;

    for (var i = 0; i < array_length(linked_gates); i++) {
        var _gate = linked_gates[i];
        if (instance_exists(_gate)) {
            _gate.is_open = !_gate.is_open;
            // Use the gate's own sprite variables instead of hardcoded ones
            _gate.sprite_index = _gate.is_open ? _gate.open_sprite : _gate.closed_sprite;
        }
    }
}

//como setar o lever:
/*
linked_gates = [nome da instance do gate, instance2, instance3, ...];
o lever inverte o valor booleano do gate, aberto fechado e vice versa 
*/