if(!global.tutorial) {
	exit
}

// define qual lixo está sendo ensinado
switch(lixo_atual){

    case 0:
        tipo_lixo = "plastico"
        sprite_lixo = spr_lixo_plastico
    break;

    case 1:
        tipo_lixo = "metal"
        sprite_lixo = spr_lixo_metal
    break;

    case 2:
        tipo_lixo = "papel"
        sprite_lixo = spr_lixo_papel
    break;

    case 3:
        tipo_lixo = "vidro"
        sprite_lixo = spr_lixo_vidro
    break;

    case 4:
        tipo_lixo = "organico"
        sprite_lixo = spr_lixo_organico
    break;

}

// estados do tutorial
switch(estado_tutorial){

    case TUTORIAL.falas:

        if(pode_passar){
            estado_tutorial = TUTORIAL.exercicios
            pode_passar = false
        }

    break;


    case TUTORIAL.exercicios:

        if(!etapa_iniciada){

            switch(tipo_lixo){

                case "plastico":
                control_falas.lista_falas = [
                "Vamos começar!",
                "Este é o lixo PLÁSTICO.",
                "Ele deve ir na lixeira VERMELHA."
                ]
                break;

                case "metal":
                control_falas.lista_falas = [
                "Agora o METAL.",
                "Ele deve ir na lixeira AMARELA."
                ]
                break;

                case "papel":
                control_falas.lista_falas = [
                "Este é o PAPEL.",
                "Ele deve ir na lixeira AZUL."
                ]
                break;

                case "vidro":
                control_falas.lista_falas = [
                "Este é o VIDRO.",
                "Ele deve ir na lixeira VERDE."
                ]
                break;

                case "organico":
                control_falas.lista_falas = [
                "Este é o ORGÂNICO.",
                "Ele deve ir na lixeira MARROM."
                ]
                break;

            }

            control_falas.fala = 0
            control_falas.desenhar_falas = true

            etapa_iniciada = true
        }

        if(pode_passar){
            alarm[0] = 1
            pode_passar = false
        }
		
		break;

		case TUTORIAL.finalizacao:
		
			_finalizacao = true
			
			//logica do menu finalização
			
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
					// switch case caso seja fim de partida
		
						switch(opcao_selecionada) 
						{
							case 0: 
								global.pontos = 0;
								_fim_partida = false
								global.pausado = false
								global.tutorial = false
								room_goto(SelecionarFase)
								break
								
						}
					}
				
}