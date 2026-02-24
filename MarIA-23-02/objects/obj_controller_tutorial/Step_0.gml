if(global.tutorial) {
	
	global.pausado = true
	global.bloqueado = true
	desenhar_falas = true
	
	if(delay >= 0)
		delay--
	else {
		
		switch estado_tutorial {
			
			case TUTORIAL.falas:
				if(keyboard_check_pressed(vk_enter) or mouse_check_button_pressed(mb_left)){
					if(fala >= array_length(lista_falas) - 1) {
						estado_tutorial = TUTORIAL.exercicios
						fala = 0
					}else {
						fala += 1
					}
				}
				
				break;
				
			case TUTORIAL.exercicios:
				desenhar_falas = false
				lista_falas = ["Vamos para os lixos!!", "Este é o Plastico!! ele deve ser descartado no lixo vermelho"]
				switch lixo_atual {
				
					case 0:
						desenhar_exercicio = true
						
						break;
				
				}
				
				break;
		}
		
		
		
	}


	
}