// Pega todas as layers da room
var layers = layer_get_all();

// Oculta tudo
for (var i = 0; i < array_length(layers); i++) {
    var id_layer = layers[i];
    var nome = layer_get_name(id_layer);

    if (string_starts_with(nome, "Mapa_1")) layer_set_visible(id_layer, false);
    if (string_starts_with(nome, "Mapa_2")) layer_set_visible(id_layer, false);
    if (string_starts_with(nome, "Mapa_3")) layer_set_visible(id_layer, false);
}

// Mostra somente o mapa selecionado
for (var i = 0; i < array_length(layers); i++) {
    var id_layer = layers[i];
    var nome = layer_get_name(id_layer);

    if (global.mapa_selecionado == 1 && string_starts_with(nome, "mapa_1"))
        layer_set_visible(id_layer, true);

    if (global.mapa_selecionado == 2 && string_starts_with(nome, "mapa_2"))
        layer_set_visible(id_layer, true);

    if (global.mapa_selecionado == 3 && string_starts_with(nome, "mapa_3"))
        layer_set_visible(id_layer,true);
}


if(global.estrelas >= 10) {
	
	var alvo = noone
	
	with (obj_selecionar_mapa) {
		if(fase == 2) {
			desbloqueado = true
			break;
		}
	}

	
}


global.estrelas = contarEstrelas()