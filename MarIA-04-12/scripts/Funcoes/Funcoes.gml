// Função para esconder todas as camadas relacionadas a "Mapa_1"
function sumirMapa1() {
    var l = layer_get_first();  // Pega a primeira layer
    while (l != -1) {
        if (string_starts_with(layer_get_name(l), "Mapa_1")) {  // Verifica se o nome da layer começa com "Mapa_1"
            layer_set_visible(l, false);  // Torna a layer invisível
        }
        l = layer_get_next(l);  // Move para a próxima layer
    }
}

// Função para esconder todas as camadas relacionadas a "Mapa_2"
function sumirMapa2() {
    var l = layer_get_first();
    while (l != -1) {
        if (string_starts_with(layer_get_name(l), "Mapa_2")) {
            layer_set_visible(l, false);
        }
        l = layer_get_next(l);
    }
}

// Função para esconder todas as camadas relacionadas a "Mapa_3"
function sumirMapa3() {
    var l = layer_get_first();
    while (l != -1) {
        if (string_starts_with(layer_get_name(l), "Mapa_3")) {
            layer_set_visible(l, false);
        }
        l = layer_get_next(l);
    }
}

// Função para mostrar todas as camadas relacionadas a "Mapa_1"
function aparecerMapa1() {
    var l = layer_get_first();
    while (l != -1) {
        if (string_starts_with(layer_get_name(l), "Mapa_1")) {
            layer_set_visible(l, true);
        }
        l = layer_get_next(l);
    }
}

// Função para mostrar todas as camadas relacionadas a "Mapa_2"
function aparecerMapa2() {
    var l = layer_get_first();
    while (l != -1) {
        if (string_starts_with(layer_get_name(l), "Mapa_2")) {
            layer_set_visible(l, true);
        }
        l = layer_get_next(l);
    }
}

// Função para mostrar todas as camadas relacionadas a "Mapa_3"
function aparecerMapa3() {
    var l = layer_get_first();
    while (l != -1) {
        if (string_starts_with(layer_get_name(l), "Mapa_3")) {
            layer_set_visible(l, true);
        }
        l = layer_get_next(l);
    }
}

// Função para esconder todos os mapas
function sumirMapas() {
    sumirMapa1();
    sumirMapa2();
    sumirMapa3();
}

function contarEstrelas() {
    var total = 0;

    // Pega a struct principal
    var mundos = global.quantidade_estrelas_fase;

    // Para cada mundo existente na struct
    var keys = variable_struct_get_names(mundos);

    var n = array_length(keys);

    for (var i = 0; i < n; i++) {

        var nome_mundo = keys[i];
        var fases = mundos[$ nome_mundo]; // array com as fases

        // Conta cada fase
        var total_fases = array_length(fases);

        for (var f = 0; f < total_fases; f++) {
            total += fases[f];
        }
    }

    return total;
}

function Funcoes(){
	
	
	
}