


if(global.bloqueado) {
	exit;
}

if(tempo_atual <= 0) {
	_fim_partida = true;
}


if(_fim_partida) {
	
	if(global.pontos >= configuracoes[global.fase_selecionada - 1, 3]) 
	{
	
		if(global.pontos >= configuracoes[global.fase_selecionada - 1, 2]) {
			fase[global.fase_selecionada - 1] = 3
			estrelas = 3
		}else if(global.pontos >= configuracoes[global.fase_selecionada - 1, 1]) {
			fase[global.fase_selecionada - 1] = 2
			estrelas = 2
		}else if(global.pontos >= configuracoes[global.fase_selecionada - 1, 0]) {
			fase[global.fase_selecionada - 1] = 1
			estrelas = 1
		}else {
			fase[global.fase_selecionada - 1] = 0
			estrelas = 0
		}
		
		if global.pontos >= configuracoes[global.fase_selecionada - 1, 3]
		{
			configuracoes[global.fase_selecionada - 1, 3] = global.pontos
		}
	
	
	}
	
	
}


if(delay > 0){
	delay--
}else {

	if(!_fim_partida) 
	{
	
		if(keyboard_check_pressed(vk_escape)) 
		{
			global.pausado = !global.pausado;
			_desenharPause = !_desenharPause
			delay = max_delay
		}
	
	}

}

if(_fim_partida) {
	layer_hspeed("Background", 0)
	layer_vspeed("Background", 0)
	
	opcoes = [
		"Tentar Novamente",
		"Voltar ao Menu"
	]
	
}

if(global.pausado or _fim_partida) 
{
	
	if(delay > 0){
		delay--
	}else {

		if(keyboard_check_pressed(vk_up)) 
		{
			if(opcao_selecionada <= 0) {
				opcao_selecionada = array_length(opcoes) - 1
			}else {
				opcao_selecionada -= 1
			}
		}
		
		if(keyboard_check_pressed(vk_down)) 
		{
			if(opcao_selecionada >= array_length(opcoes) - 1) {
				opcao_selecionada = 0
			}else {
				opcao_selecionada += 1
			}
		}

	}
	
	if(keyboard_check_pressed(vk_enter))
	{
		
		if(_fim_partida) {    // switch case caso seja fim de partida
		
			switch(opcao_selecionada) 
			{
				case 0: 
					global.pontos = 0;
					estrelas = 0
					tempo_atual = tempo_limite
					_fim_partida = false
					global.pausado = false
					room_restart()
					break;
				
				case 1:
					room_goto(SelecionarFase)
					break;
			}
		
		}else {               // caso seja pause normal
		 
			switch(opcao_selecionada) 
			{
				case 0: 
					global.pausado = false;
					_desenharPause = false;
					break;
				
				case 1:
					room_goto(SelecionarFase)
					break;
			}
		}
	}
	
	if (mouse_check_button_pressed(mb_left))
{
    var tx = device_mouse_x_to_gui(0);
var ty = device_mouse_y_to_gui(0);

// Posição base
var base_x = room_width / 2;
var base_y = room_height / 2;

var espacamento = 60;

// =========================
// MODO TUTORIAL
// =========================
if (global.tutorial and obj_controller_tutorial._finalizacao)
{
    var texto = "Voltar ao Menu";

    var text_w = string_width(texto);
    var text_h = string_height(texto);

    var x1 = base_x - text_w * 0.5;
    var y1 = base_y;
    var x2 = base_x + text_w * 0.5;
    var y2 = base_y + text_h;

    if (point_in_rectangle(tx, ty, x1, y1, x2, y2))
    {
        opcao_selecionada = 0;

        if (mouse_check_button_pressed(mb_left))
        {
			global.tutorial = false
            room_goto(SelecionarFase); // ou MenuPrincipal se tiver
        }
    }
}
else
{
    // =========================
    // SEU CÓDIGO NORMAL
    // =========================
    for (var i = 0; i < array_length(opcoes); i++)
    {
        var bar_y = base_y - (i * -espacamento);

        var text_w = string_width(opcoes[i]);
        var text_h = string_height(opcoes[i]);

        var x1 = base_x - text_w * 0.5;
        var y1 = bar_y;
        var x2 = base_x + text_w * 0.5;
        var y2 = bar_y + text_h;

        if (point_in_rectangle(tx, ty, x1, y1, x2, y2))
        {
            opcao_selecionada = i;

            if (mouse_check_button_pressed(mb_left))
            {
                if (_fim_partida)
                {
                    switch(opcao_selecionada)
                    {
                        case 0:
                            global.pontos = 0;
                            estrelas = 0;
                            tempo_atual = tempo_limite;
                            _fim_partida = false;
                            global.pausado = false;
                            room_restart();
                        break;

                        case 1:
                            room_goto(SelecionarFase);
                        break;
                    }
                }
                else
                {
                    switch(opcao_selecionada)
                    {
                        case 0:
                            global.pausado = false;
                            _desenharPause = false;
                        break;

                        case 1:
                            room_goto(SelecionarFase);
                        break;
                    }
                }
            }
        }
    }
    }
}
	
	
	
}else 
{
	layer_hspeed("Background", .4)
	layer_vspeed("Background", .4)
}