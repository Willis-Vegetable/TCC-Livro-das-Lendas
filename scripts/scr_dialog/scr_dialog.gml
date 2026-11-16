/// @function create_dialog(_messages)
/// @description Spawns a dialogue box and populates it with messages.
/// @param {Array} _messages  Array of { name, msg } structs.
function create_dialog(_messages)
{
    // Only one dialogue box may exist at a time
    if (instance_exists(obj_dialogBox)) return;

    // Create the box at depth 0 so it draws on top of everything
    var _inst = instance_create_depth(0, 0, 0, obj_dialogBox);

    // Hand over the message data and start from the first entry
    _inst.messages = _messages;
    _inst.current_message = 0;
}

// TEMPORARY: hardcoded player name until we have a real system
playerName = "john";

// Map of character names -> their display color
global.char_colors = {
    "NPC name":   c_yellow,
    "NPC name 2": c_red,
    "placa": c_aqua,
    "Sacristão": c_red
};

// Add the player's own color entry (so dialog lookups don't fail)
global.char_colors[$ playerName] = c_red;

talk1 = [
{
    name: "NPC name",
    msg: "NPC text"
},
{
    name: playerName,
    msg: "A B C D"
}
]

placa1 = [
{
    name: "placa",
    msg: "Desvie das espadas e chegue ao final."
}
]

placa2 = [
{
    name: "placa",
    msg: "Siga o caminho com pedras para não ser pego pelos jaguares."
}
]

placa3 = [
{
    name: "placa",
    msg: "Descubra a ordem correta ativando e desativando as alavancas."
}
]

placa4 = [
{
    name: "placa",
    msg: "empurre a pedra até as línguas de fogo e desvie do fogo."
},
{
    name: "placa",
    msg: "dica: use as duas mãos para passar dessa fase, para andar e empurrar a pedra."
}
]

bazinga = [
{
    name: "Sacristão",
    msg: "Buenas, vivente! Vou te contar uma antiga lenda destas terras gaúchas: a história da Salamanca do Jarau."
},
{
    name: "Sacristão",
    msg: "Dizem que, há muito tempo, uma princesa moura chamada Teiniaguá foi transformada em uma criatura mágica e aprisionada por um encantamento."
},
{
    name: "Sacristão",
    msg: "Desde então, ela permanece ligada a uma furna misteriosa no Cerro do Jarau, onde existem tesouros e forças sobrenaturais."
},
{
    name: "Sacristão",
    msg: "Para chegar ao fim da furna, precisa superar sete provas, cada uma com seus perigos e desafios. Somente com coragem e determinação poderá atravessar esse caminho e descobrir os segredos da Salamanca do Jarau."
},
{
    name: "Sacristão",
    msg: "Que os antigos te ofereçam força! A jornada começa agora!"
}
]
