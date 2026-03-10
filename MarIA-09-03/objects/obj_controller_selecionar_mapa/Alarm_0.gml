// Esconde todos os mapas ao iniciar
var layers = layer_get_all();

for (var i = 0; i < array_length(layers); i++) {
    var id_layer = layers[i];
    var nome = layer_get_name(id_layer);

    if (string_starts_with(nome, "mapa_1")) layer_set_visible(id_layer, false);
    if (string_starts_with(nome, "mapa_2")) layer_set_visible(id_layer, false);
    if (string_starts_with(nome, "mapa_3")) layer_set_visible(id_layer, false);
}
