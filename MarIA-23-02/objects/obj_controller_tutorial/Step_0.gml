

if(global.tutorial) {

	
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
					
						obJ_controller_falas.lista_falas = ["Vamos para os lixos!!", "Este é o Plastico!! ele deve ser descartado no lixo vermelho"]
						obJ_controller_falas.desenhar_falas = true
						if(pode_passar) {
							lixo_atual += 1;
							pode_passar = false
						}
						

						
						break;
						
						
				}
				break;
		
}
}