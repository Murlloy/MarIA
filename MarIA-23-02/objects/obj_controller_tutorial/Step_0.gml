

if(global.tutorial) {
	
	
switch lixo_atual {
	case 0:
		tipo_lixos = "plastico"
		sprite_lixo = spr_lixo_plastico
		break;
		
	case 1:
		tipo_lixos = "metal"
		sprite_lixo = spr_lixo_metal
		break;
		
	case 2:
		tipo_lixos = "papel"
		sprite_lixo = spr_lixo_papel
		break;
		
	case 3:
		tipo_lixos = "vidro"
		sprite_lixo = spr_lixo_vidro
		break;
		
	case 4:
		tipo_lixos = "organico"
		sprite_lixo = spr_lixo_organico
		break;
		
}

	
		switch estado_tutorial{
			
			case TUTORIAL.falas:
					if(pode_passar) 
					{
						estado_tutorial = TUTORIAL.exercicios
						pode_passar = false
					}
				break;
				
			case TUTORIAL.exercicios:
			
				
				switch lixo_atual{
					
					case 0:
					
						if(control_falas.fala >= (array_length(control_falas.lista_falas) - 1))
						{
							alarm[0] = 1
						}
					
						control_falas.lista_falas = ["Vamos para os lixos!!", "Este é o Plastico!! ele deve ser descartado no lixo vermelho"]
						control_falas.desenhar_falas = true
						
						
						
						if(pode_passar) {
							lixo_atual = 1;
							pode_passar = false
						}

						
						break;
						
					case 1: 
						
						
						
				}
				break;
		
}
}