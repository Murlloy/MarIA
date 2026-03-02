if(global.tutorial) {
	
	global.pausado = true
	global.bloqueado = true
	desenhar_falas = true
	
		switch estado_tutorial{
			
			case TUTORIAL.falas:
				
				break;
				
			case TUTORIAL.exercicios:
			
				
				switch lixo_atual{
					
					case 0:
						lista_falas = ["Vamos para os lixos!!", "Este é o Plastico!! ele deve ser descartado no lixo vermelho"]
						desenhar_falas = false
						break;
						
						
				}
				break;
		
}
}