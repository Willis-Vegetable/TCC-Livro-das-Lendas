/// @description Configuração do gerenciador de sets

if (!variable_instance_exists(id, "sets_instances")) {
    sets_instances = [];
}
if (!variable_instance_exists(id, "duracao_aviso")) duracao_aviso = 3;
if (!variable_instance_exists(id, "duracao_ativo")) duracao_ativo = 3;

indice_atual  = -1;
fase          = "idle";   // "aviso" | "ativo" | "idle"
loop_ativo    = false;
timer_padrao  = -1;

lay_tile1 = layer_get_id("ativohor");
lay_tile2 = layer_get_id("avisohor");
lay_tile3 = layer_get_id("ativover");
lay_tile4 = layer_get_id("avisover");

// ---------------------------------------------------------------
// Aplica um valor numa variável de todas as instances de um set
// ---------------------------------------------------------------
aplicar_set = function(_set, _var, _valor) {
    for (var i = 0; i < array_length(_set); i++) {
        var _inst = _set[i];
        if (instance_exists(_inst)) {
            _inst[$ _var] = _valor; // acesso dinâmico à variável
        }
    }
};

// ---------------------------------------------------------------
// Destroi o timer atual com segurança
// ---------------------------------------------------------------
matar_timer = function() {
    if (time_source_exists(timer_padrao)) {
        time_source_destroy(timer_padrao);
    }
    timer_padrao = -1;
};

// ---------------------------------------------------------------
// Cria um timer de N segundos que chama uma função
// ---------------------------------------------------------------
criar_timer = function(_segundos, _callback) {
    matar_timer();
    timer_padrao = time_source_create(
        time_source_game,
        _segundos,
        time_source_units_seconds,
        _callback,
        [],
        1 // uma vez
    );
    time_source_start(timer_padrao);
};

// ---------------------------------------------------------------
// Fim da fase de AVISO -> desliga aviso, liga ativo
// ---------------------------------------------------------------
fim_aviso = function() {
    if (!loop_ativo) return;
    var _set = sets_instances[indice_atual];
    aplicar_set(_set, "aviso", false);
    aplicar_set(_set, "ativo", true);
    fase = "ativo";
    criar_timer(duracao_ativo, fim_ativo);
};

// ---------------------------------------------------------------
// Fim da fase ATIVO -> desliga ativo, avança para o próximo set
// ---------------------------------------------------------------
fim_ativo = function() {
    if (!loop_ativo) return;
    var _set = sets_instances[indice_atual];
    aplicar_set(_set, "ativo", false);
    avancar_set();
};

// ---------------------------------------------------------------
// Avança para o próximo set e inicia a fase de AVISO
// ---------------------------------------------------------------
avancar_set = function() {
    if (!loop_ativo) return;
    if (array_length(sets_instances) == 0) return;

    indice_atual = (indice_atual + 1) mod array_length(sets_instances);

    var _set = sets_instances[indice_atual];
    aplicar_set(_set, "aviso", true); // liga aviso (ativo continua false)
    fase = "aviso";
    criar_timer(duracao_aviso, fim_aviso);
};

// ---------------------------------------------------------------
// Liga o loop inteiro
// ---------------------------------------------------------------
iniciar_loop = function() {
    if (array_length(sets_instances) == 0) return;
    if (loop_ativo) return; // já rodando

    loop_ativo   = true;
    indice_atual = -1;
    fase         = "idle";

    avancar_set(); // já entra no primeiro set (fase aviso)
};

// ---------------------------------------------------------------
// Desliga o loop inteiro e limpa tudo
// ---------------------------------------------------------------
parar_loop = function() {
    loop_ativo = false;
    matar_timer();

    // Desliga aviso e ativo de TODOS os sets, por segurança
    for (var i = 0; i < array_length(sets_instances); i++) {
        aplicar_set(sets_instances[i], "aviso", false);
        aplicar_set(sets_instances[i], "ativo", false);
    }

    indice_atual = -1;
    fase = "idle";
    layer_set_visible(lay_tile1, false);
    layer_set_visible(lay_tile2, false);
    layer_set_visible(lay_tile3, false);
    layer_set_visible(lay_tile4, false);
};