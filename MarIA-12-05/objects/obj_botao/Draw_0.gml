draw_self();

draw_set_halign(fa_center);

if room == Menu 
{
	draw_set_font(font_mine);
    draw_set_alpha(1);
    draw_set_colour(c_white);

    draw_text(x, y - 5, string(nome_botao));
    exit;
}

// ===============================
// ESTADOS
// ===============================

var controller = instance_exists(obj_controller);
var tutorial = instance_exists(obj_controller_tutorial);
var falas = instance_exists(control_falas);

var fim_partida =
    controller && obj_controller._fim_partida;

var fim_tutorial =
    tutorial && obj_controller_tutorial._finalizacao;

// ❗ PAUSE SÓ VALE SE NÃO FOR FIM
var pause_permitido =
    global.pausado
    && !(falas && control_falas.active)
    && !fim_partida
    && !fim_tutorial;

// ===============================
// HUD
// ===============================

if (controller)
{
    draw_set_alpha(1);
    draw_text(100, 80, "Tempo: " + string(obj_controller.tempo_atual));
    draw_text(room_width - 150, 80, "Pontuação: " + string(global.pontos));
}

// ===============================
// NADA A MOSTRAR
// ===============================

if (!pause_permitido && !fim_partida && !fim_tutorial)
{
    exit;
}

// ===============================
// PAUSE (CONTINUAR + VOLTAR)
// ===============================

if (pause_permitido)
{
    draw_set_font(font_mine);
    draw_set_alpha(1);
    draw_set_colour(c_white);

    draw_text(x, y - 5, string(nome_botao));
    exit;
}

// ===============================
// FIM (SÓ VOLTAR)
// ===============================

if (fim_partida || fim_tutorial)
{
    if (nome_botao != "Voltar")
    {
        exit;
    }

    draw_set_font(font_mine);
    draw_set_alpha(1);
    draw_set_colour(c_white);

    draw_text(x, y - 5, string(nome_botao));
    exit;
}