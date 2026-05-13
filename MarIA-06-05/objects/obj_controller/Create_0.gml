
var gw = 1366;
var gh = 768;

var sw = display_get_gui_width();
var sh = display_get_gui_height();

var scale = min(sw/gw, sh/gh);

var w = gw * scale;
var h = gh * scale;

var x_x = (sw - w)/2;
var y_y = (sh - h)/2;

draw_surface_ext(application_surface, x_x, y_y, scale, scale, 0, c_white, 1);

estrelas = 0

// fase e mapa

mundo = noone
fase = noone
configuracoes = noone

switch(global.mapa_selecionado) {

	case 1:
		mundo = global.fases_desbloqueadas.mundo1
		fase = global.quantidade_estrelas_fase.mundo1
		configuracoes = global.configuracoes_fase.mundo1
		break;
		
	case 2:
		mundo = global.fases_desbloqueadas.mundo2
		fase = global.quantidade_estrelas_fase.mundo2
		configuracoes = global.configuracoes_fase.mundo2
		break;

	case 3:
		mundo = global.fases_desbloqueadas.mundo3
		fase = global.quantidade_estrelas_fase.mundo3
		configuracoes = global.configuracoes_fase.mundo3
		break;
}

//configurações partida
tempo_limite = configuracoes[global.fase_selecionada - 1, 4]
tempo_atual = tempo_limite

_fim_partida = false

global.pontos = 0

//

alarm[0] = 1



global.pausado = false

delay = 0
max_delay = 15

opcoes = [
	"Continuar",
	"Voltar ao Menu"
]

opcao_selecionada = 0;

_desenharPause = false