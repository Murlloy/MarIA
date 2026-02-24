

if(!_fim_partida) {
	
	if(global.pausado) {
		alarm[0] = 1
		exit
	}

	tempo_atual -= 1	
	alarm[0] = 60

}